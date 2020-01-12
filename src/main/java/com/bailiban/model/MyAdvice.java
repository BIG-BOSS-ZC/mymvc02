package com.bailiban.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;
import lombok.experimental.Accessors;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Accessors(chain = true)
public class MyAdvice {
    private String name;
    private Double money;
    private String describe;
    private Integer id;
    private Integer uId;
}
