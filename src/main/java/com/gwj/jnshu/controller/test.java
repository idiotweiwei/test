package com.gwj.jnshu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/")
public class test {
    @RequestMapping("/test")
    public String testView() {
        return "myView"; //这里的myView为layout.xml中配置的视图名称
    }
}
