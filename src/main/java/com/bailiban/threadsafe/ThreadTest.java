package com.bailiban.threadsafe;

import java.util.concurrent.atomic.AtomicInteger;

public class ThreadTest {
    private int count;
    private AtomicInteger integer;
    private ThreadLocal<Integer> number;

    public ThreadTest(int count,AtomicInteger integer,ThreadLocal<Integer> number) {
        this.count = count;
        this.integer = integer;
        this.number = number;
    }

    public void test(){
        int i=10000;
        number.set(0);
        while (i-->0){
            count++;
            integer.incrementAndGet();
            number.set(number.get()+1);
        }
        System.out.println("[ThreadLocal number = ]"+number.get());
    }

    public static void main(String[] args) throws InterruptedException {
        ThreadLocal<Integer> number=new ThreadLocal<Integer>();
        number.set(0);
        ThreadTest test=new ThreadTest(0,new AtomicInteger(0),number);

        Thread[] ts=new Thread[10];
        for (int i=0;i<10;i++){
            ts[i]=new MyThread(test);
            ts[i].start();
        }
        for (int i=0;i<10;i++){
            ts[i].join();
        }
        System.out.println("[test.count = ]"+test.count);
        System.out.println("[test.integer = ]"+test.integer.get());
        System.out.println("[test.number = ]"+test.number.get());
    }
}
