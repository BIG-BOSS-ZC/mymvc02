package com.bailiban.socket.chat;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.Socket;

public class SendThread extends Thread{
    private String myName;
    private Socket socket;

    public SendThread(String myName, Socket socket) {
        this.myName = myName;
        this.socket = socket;
    }

    @Override
    public void run() {
        System.out.println("send thread start");
        try (PrintWriter writer=new PrintWriter(socket.getOutputStream(),true);
        BufferedReader sin=new BufferedReader(new InputStreamReader(System.in))){
            while (true){
                //从命令行输入
                System.out.println("请输入要发送的消息，按回车键发送：");
                String message=sin.readLine();
                System.out.println(myName+" >>> "+message);
                writer.println(message);
                if(message==null || message.equals("bye")){
                    break;
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        }

    }
}
