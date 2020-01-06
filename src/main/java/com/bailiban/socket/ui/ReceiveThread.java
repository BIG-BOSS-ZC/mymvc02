package com.bailiban.socket.ui;

import javax.swing.*;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.Socket;

public class ReceiveThread extends Thread{
    private JTextArea message;
    private String fromName;
    private BufferedReader reader;

    public ReceiveThread(JTextArea message, String fromName, Socket socket) {
        this.message = message;
        this.fromName = fromName;
        try {
            this.reader = new BufferedReader(new InputStreamReader(socket.getInputStream()));
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void run() {
        while (true) {
            try {
                String text = reader.readLine();
                if(!text.isEmpty()&& !text.equals("\r")&& !text.equals("\n")){
                    message.append(fromName+"："+text+"\n");
                }
            }catch (IOException e) {
                e.printStackTrace();
            }
        }
    }
}
