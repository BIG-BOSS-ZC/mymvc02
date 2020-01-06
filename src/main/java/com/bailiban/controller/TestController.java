package com.bailiban.controller;

import com.bailiban.model.User;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class TestController {
    @RequestMapping("test")
    public String test(int id,String name){
        System.out.println("id="+id+",name="+name);
        return "id="+id+",name="+name;
    }

    @RequestMapping("getuser")
    public User getUser(User user){
        return user;
    }

    @RequestMapping("")
    public String get(){
        return "!";
    }
}
