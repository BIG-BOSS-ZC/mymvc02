package com.bailiban.controller;

import com.bailiban.model.User;

import java.io.File;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Parameter;
import java.net.InetSocketAddress;
import java.net.URL;
import java.nio.ByteBuffer;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;
import java.nio.channels.ServerSocketChannel;
import java.nio.channels.SocketChannel;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public class ServerNioHttp {
    //注解value，被注解的方法
    public static Map<String,Method> methodMap=new HashMap<String, Method>();
    //参数名，参数值。例如 /hello?id=1  key="id",value="1"
    public static Map<String,String> paraMap=new HashMap<String, String>();
    //模拟的IOC容器
    public static Map<String,Object> beanMap=new HashMap<>();

    static {
        //扫描包，初始化IOC容器
        refreshBeanByPackageFile("com.bailiban.controller");
    }

    public static void main(String[] args) {
        try {
            //运行主程序
            run();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    /**
     * 以文件的形式来获取包下的所有Class
     * @param packageName
     */
    public static void refreshBeanByPackageFile(String packageName){
        String packagePath=packageName.replace(".","/");
        URL resource = ServerNioHttp.class.getClassLoader().getResource(packagePath);
        //获取此包的目录 建立一个File
        File dir = new File(resource.getPath());
        fileParseClass(dir);
    }

    public static void fileParseClass(File dir){
        //如果不存在或者 也不是目录就直接返回
        if (!dir.exists() || !dir.isDirectory()) {
            return;
        }
        //如果存在 就获取包下的所有文件 包括目录
        //自定义过滤规则 如果可以循环(包含子目录) 或则是以.class结尾的文件(编译好的java类文件)
        File[] dirfiles = dir.listFiles(file -> {
            if(file.isDirectory()){
                fileParseClass(file);
                return false;
            }
            return file.getName().contains(".class");
        });

        for(File f:dirfiles){
            fileParseObject(f);
        }
    }

    private static void fileParseObject(File f) {
        if(f.isDirectory()){
            return;
        }
        String className=f.getName().replace(".class","");
        //System.out.println(f.getPath());//D:\test\mvc01\target\classes\com\bailiban\controller\HelloController.class
        String wholeName=f.getPath().split("classes\\\\")[1].split("\\.class")[0].replace("\\",".");
        //注解解析
        parseAnnotation(className,wholeName);
    }

    /**
     * 解析自定义注解
     */
    public static void parseAnnotation(String className,String wholeName){
        try {
            Class<?> aClass = Class.forName(wholeName);
            MyRestController annotation = aClass.getAnnotation(MyRestController.class);
            if(annotation!=null){
                beanMap.put(className,aClass.newInstance());
                Method[] declaredMethods = aClass.getDeclaredMethods();
                for(Method method:declaredMethods){
                    MyRequestMapping myRequestMapping = method.getAnnotation(MyRequestMapping.class);
                    if(myRequestMapping==null){
                        continue;
                    }
                    methodMap.put(myRequestMapping.value(),method);
                }
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InstantiationException e) {
            e.printStackTrace();
        }
    }


    /**
     * 多路复用
     * @throws IOException
     */
    public static void run() throws IOException {
        //建立server socket channel
        ServerSocketChannel serverSocketChannel=ServerSocketChannel.open();
        //绑定端口
        serverSocketChannel.socket().bind(new InetSocketAddress(80));
        //设置阻塞为false
        serverSocketChannel.configureBlocking(false);
        //选择器
        Selector selector=Selector.open();
        //注册选择器
        serverSocketChannel.register(selector, SelectionKey.OP_ACCEPT);
        System.out.println("http服务器开启");
        while (true){
            //如果选择的socket没有请求，就不处理
            if(selector.select(3000) == 0){
                continue;
            }
            Iterator<SelectionKey> iterator = selector.selectedKeys().iterator();
            while (iterator.hasNext()){
                SelectionKey selectionKey = iterator.next();
                //处理http请求
                httpHandle(selectionKey);
                //处理完删除掉
                iterator.remove();
            }
        }
    }

    //处理请求
    private static void httpHandle(SelectionKey key) throws IOException {
        if (key.isAcceptable()) {
            //服务器等待客户端
            acceptHandle(key);
        } else if (key.isReadable()) {
            //客户端http请求服务器
            requestHandle(key);
        }
    }

    private static void requestHandle(SelectionKey key) throws IOException {
        SocketChannel socketChannel= (SocketChannel) key.channel();
        ByteBuffer byteBuffer=(ByteBuffer) key.attachment();
        //设置写模式
        byteBuffer.clear();
        if(socketChannel.read(byteBuffer) == -1){
            socketChannel.close();
            return;
        }
        //设置读模式
        byteBuffer.flip();
        String text=new String(byteBuffer.array());
        //请求头第一行，按空格分隔，得到完整url
        String url=text.split("\r\n")[0].split(" ")[1];
        //通过url解析出参数
        setParaMap(url);
        Method method=null;
        if(url.contains("?")){
            //有参数把参数去掉
            url=url.split("\\?")[0];
            //按url与注解来找到方法
            method = methodMap.get(url);
        }else {
            //无参数直接找方法
            method = methodMap.get(url);
        }
        Object invoke="404 not found";
        try {
            invoke=myInvoke(method);
        } catch(IllegalAccessException e){
            e.printStackTrace();
        } catch(InvocationTargetException e){
            e.printStackTrace();
        }

        StringBuilder stringBuilder=new StringBuilder();
        stringBuilder.append("HTTP/1.1 200 OK\r\n");
        stringBuilder.append("Content-Type:text/html;charset=utf-8\r\n");
        stringBuilder.append("\r\n");
        stringBuilder.append("<html><head><title>HttpTest</title></head><body>");
        stringBuilder.append(invoke);
        System.out.println(url+">>>"+invoke);
        stringBuilder.append("</body></html>");

        socketChannel.write(ByteBuffer.wrap(stringBuilder.toString().getBytes()));
        socketChannel.close();
    }

    private static Object myInvoke(Method method) throws InvocationTargetException, IllegalAccessException {
        //调用方法返回值（因为controller我写的都是返回字符串）
        Object controller=null;
        if (method != null) {//如果方法不为空，说明url是正确的，否则页面显示"404 not found"
            //得到方法的参数
            String simpleName = method.getDeclaringClass().getSimpleName();
            controller=beanMap.get(simpleName);
            Parameter[] parameters = method.getParameters();
            //如果有参数且解析url有参数
            if (parameters.length != 0) {
                if(paraMap.size()==0){//方法需要参数，都是URL没给参数
                    return "404 not found";
                }
                //参数数组
                Object[] objects = new Object[parameters.length];
                for (int i = 0; i < parameters.length; i++) {
                    String typeName = parameters[i].getType().getSimpleName();
                    String paraname = parameters[i].getName();
                    System.out.println(typeName + "<+++>" + paraname);
                    //参数数组塞对象，将 类型名+字符串值 结合类型转换成对应的对象存入数组
                    String value=paraMap.get(paraname);
                    objects[i] = change(typeName,value);
                }
                //方法调用，有参数的
                try {
                    return method.invoke(controller, objects);
                }catch (Exception e){
                    e.printStackTrace();
                    return "参数错误";
                }

            } else{
                return method.invoke(controller);
            }
        }
        return "404 not found";
    }

    private static void acceptHandle(SelectionKey selectionKey) throws IOException {
        SocketChannel socketChannel=((ServerSocketChannel)selectionKey.channel()).accept();
        socketChannel.configureBlocking(false);
        socketChannel.register(selectionKey.selector(),SelectionKey.OP_READ, ByteBuffer.allocate(1024));

    }

    /**
     * 解析url参数，存入paraMap
     * @param url
     */
    public static void setParaMap(String url){
        //每次解析请求url时先清空参数map,因为里面存着上次请求的内容
        paraMap.clear();
        try {
            //如果没有参数，那么参数map是空的，size=0
            //如果有参数，把参数和值存在参数map里
            if(url.contains("?")){
                String paraname;
                String value;
                String param=url.replaceFirst(".*?\\?","");
                String[] split2 = param.split("&");

                for(String ky:split2){
                    String[] split3 = ky.split("=");
                    paraname=split3[0];
                    value=split3[1];
                    System.out.println(paraname+"<--->"+value);
                    paraMap.put(paraname,value);
                }
            }
        }catch (Exception e){
            e.printStackTrace();
        }


    }

    public static Object change(String type,String value){
        //将字符串的值与类型 转换成对应的对象
        if(type.equalsIgnoreCase("int")){
            return Integer.valueOf(value);
        }else if(type.equalsIgnoreCase("string")) {
            return value;
        }else if(type.equalsIgnoreCase("double")){
            return Double.valueOf(value);
        }else if (type.equalsIgnoreCase("user")) {
            String name=paraMap.get("name");
            String id=paraMap.get("id");
            if(id==null || name==null){
                return null;
            }
            return new User(Integer.valueOf(id),name);
        } else{
            return value;
        }
    }
}
