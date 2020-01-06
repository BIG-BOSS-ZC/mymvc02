package com.bailiban.socket.niohttp;

import com.bailiban.socket.bs.ServerTest;

import java.io.IOException;
import java.net.InetSocketAddress;
import java.nio.ByteBuffer;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;
import java.nio.channels.ServerSocketChannel;
import java.nio.channels.SocketChannel;
import java.util.Iterator;

public class ServerNioHttp {

    public static void main(String[] args) {
        try {
            run();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
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

    private static void httpHandle(SelectionKey key) throws IOException {
        if (key.isAcceptable()) {
            //
            acceptHandle(key);
        } else if (key.isReadable()) {
            //http请求
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
        String url=text.split("\r\n")[0].split(" ")[1];
        String content= ServerTest.results.get(url);
        if(content==null){
            content="404 Not Found";
        }

        StringBuilder stringBuilder=new StringBuilder();
        stringBuilder.append("HTTP/1.1 200 OK\r\n");
        stringBuilder.append("Content-Type:text/html;charset=utf-8\r\n");
        stringBuilder.append("\r\n");
        stringBuilder.append("<html><head><title>HttpTest</title></head><body>");
        stringBuilder.append(content);
        System.out.println(url+">>>"+content);
        stringBuilder.append("</body></html>");

        socketChannel.write(ByteBuffer.wrap(stringBuilder.toString().getBytes()));
        socketChannel.close();
    }

    private static void acceptHandle(SelectionKey selectionKey) throws IOException {
        SocketChannel socketChannel=((ServerSocketChannel)selectionKey.channel()).accept();
        socketChannel.configureBlocking(false);
        socketChannel.register(selectionKey.selector(),SelectionKey.OP_READ, ByteBuffer.allocate(1024));

    }
}
