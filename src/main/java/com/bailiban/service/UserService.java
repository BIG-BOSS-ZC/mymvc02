package com.bailiban.service;

import com.bailiban.dao.UserDao;
import com.bailiban.model.User;
import com.bailiban.mybatis.GetMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.GetMapping;

import java.io.IOException;

@Service
public class UserService {

    @Autowired
    private UserDao userDao;

    /*public UserService() throws IOException {
        userDao= GetMapper.getMapper();
    }*/

    public User login(String name,String password){
        System.out.println(userDao);
        User u=new User().setName(name).setPassword(password);
        User user = userDao.getUser(u);
        return user;
    }

    public User getUserById(int id){
        User user = userDao.getUser(new User().setId(id));
        return user;
    }

    public int addUser(User user){
        return userDao.addUser(user);
    }

    public int updateUser(User user){
        return userDao.updateUser(user);
    }
}
