package com.bailiban.exceptionhandler;

import org.springframework.ui.ModelMap;
import org.springframework.validation.BindException;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@ControllerAdvice
public class MyBindExceptionHandler{

//    @ExceptionHandler(BindException.class)
    public String bindHandler(BindException ex, HttpServletRequest request
            , HttpServletResponse response){
        List<FieldError> fieldErrors = ex.getFieldErrors();
        StringBuilder messages=new StringBuilder();
        fieldErrors.forEach(e ->{
            messages.append(e.getField()+":"+e.getDefaultMessage()+"<br />");
        });
        request.setAttribute("messages",messages.toString());
        return "errors/register-error";
    }

    @ExceptionHandler(BindException.class)
    public ModelAndView bindHandler2(BindException ex, HttpServletRequest request
            , HttpServletResponse response){
        List<FieldError> fieldErrors = ex.getFieldErrors();
        StringBuilder messages=new StringBuilder();
        fieldErrors.forEach(e ->{
            messages.append(e.getField()+":"+e.getDefaultMessage()+"<br />");
        });
        Map<String,Object> map=new HashMap<>();
        map.put("messages",messages.toString());
        ModelAndView mv=new ModelAndView("errors/register-error",map);
        return mv;
    }
}
