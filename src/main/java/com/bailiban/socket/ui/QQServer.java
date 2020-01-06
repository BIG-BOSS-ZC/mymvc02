package com.bailiban.socket.ui;

import javax.swing.*;
import java.io.IOException;
import java.net.ServerSocket;
import java.net.Socket;

public class QQServer {
    private JPanel Server;
    private JTextArea message;
    private JTextArea input;

    public QQServer() throws IOException {
        ServerSocket serverSocket=new ServerSocket(8080);
        Socket socket = serverSocket.accept();
        input.addKeyListener(new InputKeyListener(message,input,socket));
        new ReceiveThread(message,"Client",socket).start();
    }

    public static void main(String[] args) throws IOException {
        JFrame frame = new JFrame("QQServer");
        frame.setContentPane(new QQServer().Server);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.pack();
        frame.setVisible(true);
    }
}
