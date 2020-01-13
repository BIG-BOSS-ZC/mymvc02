package com.bailiban.mybatis;

import com.bailiban.model.User2;
import org.apache.ibatis.annotations.*;

import java.util.List;

public interface UserMapper {
    User2 getUser(int id);
    int addUsers(List<User2> userList);
    int insertUser(User2 user);
    int updateUser(User2 user);
    int delUser(int id);

    @Results(id = "iUser",value = {
            @Result(column = "id",property = "id",id = true),
            @Result(column = "name",property = "name"),
            @Result(property = "myAdvice",column = "id",one =
                @One(select = "com.bailiban.mybatis.AdviceMapper.getAdvice")),
            @Result(property = "advices",column = "id",many =
                @Many(select = "com.bailiban.mybatis.AdviceMapper.getMyAdvices2"))
    })
    @Select("select * from user where id=#{id}")
    User2 getUser2(int id);

}
