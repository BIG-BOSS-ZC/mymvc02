package com.bailiban.mybatis;

import com.bailiban.model.MyAdvice;
import com.bailiban.model.User2;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface AdviceMapper {
    List<MyAdvice> getMyAdvices(MyAdvice myAdvice);
    int updateAdvice(MyAdvice myAdvice);
    @Select("select * from advice where id=#{id}")
    MyAdvice getAdvice(int id);

    @Select("select * from advice where u_id=#{uId}")
    List<MyAdvice> getMyAdvices2(int uId);
}
