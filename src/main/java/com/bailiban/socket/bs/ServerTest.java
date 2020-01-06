package com.bailiban.socket.bs;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.HashMap;
import java.util.Map;

public class ServerTest {

    public static Map<String,String> results=new HashMap<>();

    static {
        results.put("/","welcome");
        results.put("/hello","哈罗 welcome");
        results.put("/index","index welcome");
        results.put("/xxx","有内鬼！终止交易！内鬼最大嫌疑人：刘忠林。因为昨天刘忠林以吃面为借口在我们商议完后离开了我们！");
    }
    public static void main(String[] args) throws IOException {
        //1.新建服务器server，监听端口8081
        ServerSocket server=new ServerSocket(80);
        System.out.println("客户端开启，等待客户端链接...");
        while (true){
            //2.监听并获取Client的socket
            Socket socket=server.accept();
            System.out.println("Browser已连接");
            String url=null;
            String message=null;
            try(BufferedReader in=new BufferedReader(new InputStreamReader(socket.getInputStream()));
                PrintWriter out=new PrintWriter(socket.getOutputStream(),true)
            ) {

            //回应客户端
            while (true){
                message=in.readLine();
                if(message==null || message.equals("")){
                    break;
                }
                System.out.println(message);
                if(url==null){
                    url=message;
                }
            }
            out.println("HTTP/1.1 200 OK");
            out.println("Content-Type:text/html;charset=utf-8");//防止乱码
            out.println();//分割http头和 body
            out.println("<html><head><title>HttpTest</title></head><body>");
            if(url!=null){
                url=url.split(" ")[1];
                String content=results.get(url)==null?"404 Not Found.":results.get(url);
                out.println(content);
            }
            out.println("</body></html>");
        }
    }
    }
}
