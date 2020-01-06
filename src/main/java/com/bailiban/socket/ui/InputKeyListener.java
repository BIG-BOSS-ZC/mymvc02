package com.bailiban.socket.ui;

import javax.swing.*;
import java.awt.event.KeyAdapter;
import java.awt.event.KeyEvent;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.Socket;

public class InputKeyListener extends KeyAdapter {
    private JTextArea message;
    private JTextArea input;
    private PrintWriter writer;
    public InputKeyListener(JTextArea message, JTextArea input, Socket socket) {
        this.message = message;
        this.input = input;
        try {
            this.writer = new PrintWriter(socket.getOutputStream(), true);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    @Override
    public void keyReleased(KeyEvent e) {
        super.keyReleased(e);
        if(e.getExtendedKeyCode()==KeyEvent.VK_ENTER){
                String text = input.getText();
                if (!text.isEmpty()&& !text.equals("\r")&& !text.equals("")) {
                    writer.println(text);
                    message.append("我：" + text);
                }
                input.setText("");
        }

    }
}
