package com.bailiban.dao;

import com.bailiban.model.User;
import org.apache.ibatis.annotations.Param;

public interface UserDao {

    User getUser(@Param("user") User user);

    int updateUser(@Param("user") User user);

    int addUser(@Param("user") User user);

}
