package com.bailiban.socket.ui;

import javax.swing.*;
import java.io.IOException;
import java.net.Socket;

public class QQClient {
    private JTextArea message;
    private JTextArea input;
    private JPanel Client;

    public QQClient() throws IOException {
        Socket socket=new Socket("localhost",8080);
        input.addKeyListener(new InputKeyListener(message,input,socket));
        new ReceiveThread(message,"Server",socket).start();
    }

    public static void main(String[] args) throws IOException {
        JFrame frame = new JFrame("QQClient");
        frame.setContentPane(new QQClient().Client);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.pack();
        frame.setVisible(true);
    }
}
