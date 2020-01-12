package com.bailiban.controller;

import com.bailiban.model.User;

import java.util.ArrayList;
import java.util.List;

@MyRestController("MyHelloController")
public class MyHelloController {
    private static List<User> list=new ArrayList<User>();
    static {
        list.add(new User(1,"刘星"));
        list.add(new User(2,"蔡徐坤"));
    }

    @MyRequestMapping("/hello")
    public String getUseryId(int id){
        for(User u:list){
            if(u.getId()==id){
                return u.toString();
            }
        }
        return "404 not found";
    }
    @MyRequestMapping("/all")
    public String getAll(){
        StringBuilder stringBuilder=new StringBuilder();
        for(User u:list){
            stringBuilder.append(u.toString()+"<br />");
        }
        return stringBuilder.toString();
    }
    @MyRequestMapping("/newuser")
    public String newUser(User user){
        if(user.getId()==-1){
            return "添加用户失败";
        }
        list.add(user);
        return "添加用户成功";
    }
}
