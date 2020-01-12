package com.bailiban.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;
import lombok.experimental.Accessors;

import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Accessors(chain = true)
public class User2 {
    private Integer id;
    private String name;

    private MyAdvice myAdvice;

    private List<MyAdvice> advices;
}
