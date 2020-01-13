package com.bailiban.controller;

import com.bailiban.model.MyAdvice;
import com.bailiban.model.User;
import com.bailiban.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.*;


@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService userService;

    @PostMapping("login")
    public String login(User user, HttpSession session){
        System.out.println("[login form]\t"+user.toString());
        User login = userService.login(user.getName(), user.getPassword());
        if(login!=null){
            session.setAttribute("user",login);
            System.out.println("[login user]\t"+login.toString());
            return "redirect:home";
        }
        return "login";
    }

    @GetMapping("login")
    public String login(){
        return "login";
    }

    @RequestMapping("home")
    public String home(HttpSession session,ModelMap modelMap){
        if(session.getAttribute("user")==null){
            //没有登录
            return "redirect:/user/login";
        }
        modelMap.addAttribute(session.getAttribute("user"));
        return "home";
    }


    //有拦截器了，简化了方法
//    @RequestMapping("home")
    public String home(@SessionAttribute  User user){
        return "home";
    }

//	@RequestMapping("login")
    public String login(User user, RedirectAttributes redirectAttributes){
        /*System.out.println(user.toString());
        if(user.getId()!=null){
            User user1=userMap.get(user.getId());
            if(user.getName().equals(user1.getName())){
                System.out.println(user1.toString());
                redirectAttributes.addFlashAttribute("user",user1);
                return "redirect:home";
            }
        }*/
        return "login";
    }


//    @RequestMapping("home2")
    public String home2(@SessionAttribute User user,HttpSession session,ModelMap model){
        user=(User) session.getAttribute("user");//从session里取得属性值
        model.addAttribute(user);//用ModelMap将属性值传到页面
        return "home";
    }


    @GetMapping("update")
    public String update(@SessionAttribute User user){
        return "update";
    }

    @PostMapping("update")
    public String update(User user,HttpSession session){
        System.out.println("[update]\t"+user.toString());
        int i = userService.updateUser(user);
        if(i!=0){
            session.setAttribute("user",user);
            return "redirect:/user/home";
        }
        return "errors/error";
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
        }

Set<Integer> integers = userMap.keySet();
        int max=-1;
        for(Integer num:integers){
            if(max<num){
                max=num;
            }
        }*/
        userService.addUser(user);
        /*int id=userMap.size()+1;
        user.setId(id);
        userMap.put(id,user);
        System.out.println("[register]\t"+user.toString());*/
        return "redirect:/user/login";
    }

    @RequestMapping("table")
    @ResponseBody
    public Map<String,Object> table(@SessionAttribute User user,int page,int limit){
        Map<String,Object> map=new HashMap<>();
        List<MyAdvice> advices = userService.getAdvices(user.getId());
        map.put("code",0);
        map.put("count",advices.size());
        map.put("data",advices.subList((page-1)*limit,Math.min(advices.size(),page*limit)));
        return map;
    }

    @RequestMapping("table/edit")
    @ResponseBody
    public String edit(MyAdvice e){
        /*
        advices.stream().anyMatch(eq->{
            if (e.getId()==eq.getId()) {
                eq.setName(e.getName());
                eq.setDescribe(e.getDescribe());
                eq.setMoney(e.getMoney());
                return true;
            }
            return false;
        });
        */
        userService.updateAdvice(e);
        return "success";
    }

    @RequestMapping("table/del")
    @ResponseBody
    public String del(int id){
        /*advices.stream().anyMatch(eq->{
            if (e.getId()==eq.getId()) {
                advices.remove(eq);
                return true;
            }
            return false;
        });*/
        userService.delAdvice(id);
        return "success";
    }

    @RequestMapping("table/add")
    @ResponseBody
    public String add(MyAdvice myAdvice,HttpSession session){
        /*System.out.println("?????");
        myAdvice.setId(advices.size()+1);
        advices.add(myAdvice);*/
        User user=(User)session.getAttribute("user");
        myAdvice.setUId(user.getId());
        userService.addAdvice(myAdvice);
        return "success";
    }
}
