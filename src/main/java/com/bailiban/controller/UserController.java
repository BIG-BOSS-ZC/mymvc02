package com.bailiban.controller;

import com.bailiban.model.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpSession;
import java.util.*;


@Controller
@RequestMapping("/user")
public class UserController {

    private static Map<Integer,User> userMap=new HashMap<Integer,User>();
    static {
        userMap.put(1,new User(1,"one一"));
        userMap.put(2,new User(2,"two二"));
        userMap.put(3,new User(3,"three三"));
    }

    @RequestMapping("login")
    public String login(User user, HttpSession session){
        System.out.println("[login form]\t"+user.toString());
        if(user.getName()!=null){
            Iterator<User> iterator = userMap.values().iterator();
            while (iterator.hasNext()){
                User u=iterator.next();
                if(u.getName().equals(user.getName())
                        && u.getPassword().equals(user.getPassword())){
                    System.out.println("[login user]\t"+u.toString());
                    session.setAttribute("user",u);
                    return "redirect:/user/home";
                }
            }
        }
        return "login";
    }

    /*@RequestMapping("home")
    public String home(HttpSession session,ModelMap modelMap){
        if(session.getAttribute("user")==null){
            //没有登录
            return "redirect:/user/login";
        }
        modelMap.addAttribute(session.getAttribute("user"));
        return "home";
    }*/

    //有拦截器了，简化了方法
    @RequestMapping("home")
    public String home(/*@SessionAttribute  User user*/){
        return "home";
    }

    /*	@RequestMapping("login")
    public String login(User user, RedirectAttributes redirectAttributes){
        System.out.println(user.toString());
        if(user.getId()!=null){
            User user1=userMap.get(user.getId());
            if(user.getName().equals(user1.getName())){
                System.out.println(user1.toString());
                redirectAttributes.addFlashAttribute("user",user1);
                return "redirect:home";
            }
        }
        return "login";
    }*/

    /*@RequestMapping("home2")
    public String home2(@SessionAttribute User user,HttpSession session,ModelMap model){
        user=(User) session.getAttribute("user");//从session里取得属性值
        model.addAttribute(user);//用ModelMap将属性值传到页面
        return "home";
    }*/

    @GetMapping("update")
    public String update(/*@SessionAttribute User user*/){
        return "update";
    }

    @PostMapping("update")
    public String update(User user,HttpSession session){
        System.out.println("[update]\t"+user.toString());
        if(user.getId().equals(userMap.get(user.getId()).getId())){
            userMap.remove(user.getId());
            userMap.put(user.getId(),user);
            session.setAttribute("user",user);
        }
        return "redirect:/user/home";
    }

    @RequestMapping("logout")
    public String logout(HttpSession session){
        session.invalidate();
        return "redirect:/user/login";
    }

    @GetMapping("register")
    public String register(){
        return "register";
    }

    @PostMapping("register")
    public String register(@Validated User user, RedirectAttributes redirectAttributes){
        /*Boolean flag=true;
        StringBuilder error=new StringBuilder();

        Iterator<User> iterator = userMap.values().iterator();
        while (iterator.hasNext()){
            User u=iterator.next();
            if(u.getName().equals(user.getName())){
                error.append("用户名重复！请重输；<br />");
                flag=false;
                break;
            }
        }
        String phoneReg="^1[34578]\\d{9}$";

        if(user.getPassword().length()<6){
            error.append("密码错误！长度应该在6-18之间；<br />");
            flag=false;
        }
        //手机号验证
        if(!user.getPhoneNumber().matches(phoneReg)){
            error.append("手机号格式不正确；<br />");
            flag=false;
        }
        //邮箱验证
        String emailReg="^([A-Za-z0-9_\\-\\.])+\\@([A-Za-z0-9_\\-\\.])+\\.([A-Za-z]{2,4})$";
        if(!user.getEmail().matches(emailReg)){
            error.append("邮箱格式不正确；<br />");
            flag=false;
        }

        if(flag==false){
            redirectAttributes.addFlashAttribute("user",user);
            redirectAttributes.addFlashAttribute("error",error.toString());
            redirectAttributes.addFlashAttribute("display","block");
            return "redirect:/user/register";
        }*/
        /*Set<Integer> integers = userMap.keySet();
        int max=-1;
        for(Integer num:integers){
            if(max<num){
                max=num;
            }
        }*/
        int id=userMap.size()+1;
        user.setId(id);
        userMap.put(id,user);
        System.out.println("[register]\t"+user.toString());
        return "redirect:/user/login";
    }
}
