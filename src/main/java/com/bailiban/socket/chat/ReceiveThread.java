package com.bailiban.socket.chat;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.Socket;

public class ReceiveThread extends Thread{

    private String fromName;
    private Socket socket;

    public ReceiveThread(String fromName, Socket socket) {
        this.fromName = fromName;
        this.socket = socket;
    }

    @Override
    public void run() {
        System.out.println("receive thread start");
        try (BufferedReader in=new BufferedReader(new InputStreamReader(socket.getInputStream()))){
            while (true){
                //接受消息
                String message=in.readLine();
                System.out.println(fromName+" >>> "+message);
                if(message==null || message.equals("bye")){
                    break;
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        }

    }
}
