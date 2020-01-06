package com.bailiban.socket.chat;

import java.io.IOException;
import java.net.Socket;

public class ClientTest {
    public static void main(String[] args) throws IOException {
        //建立连接
        Socket client=new Socket("192.168.1.129",8888);
        System.out.println("建立连接成功！");
        //收
        new ReceiveThread("Server",client).start();
        //发
        new SendThread("Client",client).start();

    }
}
