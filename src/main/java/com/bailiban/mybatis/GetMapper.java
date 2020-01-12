package com.bailiban.mybatis;

import com.bailiban.dao.UserDao;
import com.bailiban.model.MyAdvice;
import com.bailiban.model.User2;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;


import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

@Configuration
public class GetMapper {
    @Bean("userDao")
    public UserDao getMapper() throws IOException {
        //        获取配置文件
        String resource = "mybatis-config.xml";
        InputStream inputStream = Resources.getResourceAsStream(resource);

//        创建session工厂
        SqlSessionFactory sqlSessionFactory =
                new SqlSessionFactoryBuilder().build(inputStream);


//       session是通过sqlSessionFactory创建的
        SqlSession session = sqlSessionFactory.openSession(true);
//            通过session获取Mapper
        UserDao userDao = session.getMapper(UserDao.class);
//            调用Mapper方法，实际会调用mybatis生成的类
        return userDao;

    }

    public static void main(String[] args) throws IOException {
        String resource = "com/bailiban/mybatis/mybatis-config.xml";
        InputStream inputStream = Resources.getResourceAsStream(resource);
        SqlSessionFactory sqlSessionFactory =
                new SqlSessionFactoryBuilder().build(inputStream);

        try (SqlSession session = sqlSessionFactory.openSession(true)) {
            UserMapper userDao = session.getMapper(UserMapper.class);
            User2 user = userDao.getUser2(1);
            System.out.println(user.toString());
        }
        /*String resource = "com/bailiban/mybatis/mybatis-config.xml";
        InputStream inputStream = Resources.getResourceAsStream(resource);
        SqlSessionFactory sqlSessionFactory =
                new SqlSessionFactoryBuilder().build(inputStream);

        try (SqlSession session = sqlSessionFactory.openSession()) {

            MyAdvice myAdvice=new MyAdvice().setId(1).setMoney(-10d);
            AdviceMapper adviceMapper = session.getMapper(AdviceMapper.class);
            *//*List<MyAdvice> myAdvices = adviceMapper.getMyAdvices(myAdvice);
            myAdvices.forEach(System.out::println);*//*
            adviceMapper.updateAdvice(myAdvice);
            int id=1/0;
            adviceMapper.updateAdvice(myAdvice.setId(2).setMoney(10d));
            session.commit();
        }*/
    }
}
