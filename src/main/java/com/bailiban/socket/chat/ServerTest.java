package com.bailiban.socket.chat;

import java.io.IOException;
import java.net.ServerSocket;

public class ServerTest {
    public static void main(String[] args) throws IOException {
        //1.新建服务器server，监听端口8081
        ServerSocket server=new ServerSocket(8081);
        System.out.println("客户端开启，等待客户端链接...");

    }
}
