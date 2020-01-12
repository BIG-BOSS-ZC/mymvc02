package com.bailiban.model;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;
import lombok.experimental.Accessors;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;
import java.util.Date;
import java.util.regex.Matcher;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Accessors(chain = true)
@ToString
public class User {
    private Integer id;
    @NotEmpty(message = "用户名不能为空！")
    private String name;
    @Size(min = 6,max = 18,message = "密码长度应该在6-18之间！")
    private String password;
    private String sex;
    @Pattern(regexp = "^1[34578]\\d{9}$",message = "手机号码格式不正确！")
    private String phoneNumber;
    @Email(message = "邮箱格式不正确！")
    private String email;
    private String hobbit;
    /*@JsonFormat(pattern = "yyyy-MM-dd hh:mm:ss")
    private Date birthday;*/

    public User(Integer id,@NotEmpty(message = "用户名不能为空！") String name, @Size(min = 6, max = 18, message = "密码长度应该在6-18之间！") String password) {
        this.id=id;
        this.name = name;
        this.password = password;
    }

    public User(Integer id, @NotEmpty(message = "用户名不能为空！") String name) {
        this.id = id;
        this.name = name;
    }

    public static void main(String[] args) {
        String phoneReg="(1[34578]\\d{9}).*?(号[码?])";
        String str="a6t5h13598761234*号码ll17675656321*号码&gghgc17675656321*a码n号";
        java.util.regex.Pattern pattern= java.util.regex.Pattern.compile(phoneReg);
        Matcher matcher=pattern.matcher(str);
        while (matcher.find()) {
            System.out.println(matcher.group(1));
            System.out.println(matcher.group(2));
        }
    }
}
