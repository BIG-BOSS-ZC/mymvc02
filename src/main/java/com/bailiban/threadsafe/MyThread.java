package com.bailiban.threadsafe;

public class MyThread extends Thread {
    private ThreadTest test;

    public MyThread(ThreadTest test) {
        this.test = test;
    }

    @Override
    public void run() {
        test.test();
    }
}
