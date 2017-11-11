package com.gwj.jnshu.controller;


import com.gwj.jnshu.entities.User;
import com.gwj.jnshu.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

//Controller注解用于标示本类为web层控制组件
@Controller
//@RequestMapping("/user")用于标定访问时对url位置
@RequestMapping("/user")
public class UserController {

    //自动注入业务层的UserService类
    @Autowired
    UserService userService;


    //登录界面
    @RequestMapping(value = "/login",method = RequestMethod.GET)
    public String login(){
        return "/login.jsp";
    }

    //登录界面传值
    @RequestMapping(value = "/loginInto",method = RequestMethod.POST)
    public String loginInto(String username,String password){
        String str ="/error.jsp";
        if(username!=null&password!=null) {
            User user = new User();
            user.setUsername(username);
            user.setPassword(password);
            User temp = userService.login(user);
            if(temp!=null){
                str="redirect:/Student/liststudents";
            }
        }
        return str;
    }


    //注册页面
    @RequestMapping(value = "/regist")
    public String regist(){
        return "/regist.jsp";
    }

    //注册页面传值
    @RequestMapping(value = "/registInto",method = RequestMethod.POST)
    public String registInto(User user){
        userService.addUser(user);
        return "/login.jsp";
    }
}
