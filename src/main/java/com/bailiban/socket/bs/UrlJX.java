package com.bailiban.socket.bs;

public class UrlJX {
    public static void main(String[] args) {
        String url="/xxx?id=98&pp=78";
        System.out.println(url.contains("?"));
        getPara("id");
    }

    public static void getPara(String paraname){
        String url="/xxx?id=98&pp=78";
    }
}
