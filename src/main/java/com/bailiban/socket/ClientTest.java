package com.bailiban.socket;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.Socket;

public class ClientTest {
    public static void main(String[] args) throws IOException {
        //建立连接
        Socket client=new Socket("localhost",8081);
        System.out.println("建立连接成功！");
        try (BufferedReader in=new BufferedReader(new InputStreamReader(client.getInputStream()));
             BufferedReader sin=new BufferedReader(new InputStreamReader(System.in));
             PrintWriter out=new PrintWriter(client.getOutputStream(),true);
             ){
            //向服务器发送消息
            String message=sin.readLine();
            out.println(message);
            //打印服务器的反馈
            String back=in.readLine();
            System.out.println("Server >>>"+back);

        }

    }
}
