package com.bailiban.socket;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.ServerSocket;
import java.net.Socket;

public class ServerTest {
    public static void main(String[] args) throws IOException {
        //1.新建服务器server，监听端口8081
        ServerSocket server=new ServerSocket(8081);
        System.out.println("客户端开启，等待客户端链接...");
        //2.监听并获取Client的socket
        Socket socket=server.accept();
        System.out.println("Client已连接");
        try(BufferedReader in=new BufferedReader(new InputStreamReader(socket.getInputStream()));
            BufferedReader sin=new BufferedReader(new InputStreamReader(System.in));
            PrintWriter out=new PrintWriter(socket.getOutputStream(),true)
        ) {
            //等待客户端发消息
            String message=in.readLine();
            System.out.println("Client >>> "+message);
            //回应客户端
            String back=sin.readLine();
            out.println(back);
        }
    }
}
