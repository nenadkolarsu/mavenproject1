package com.movies.controller;

import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SiteController {
    @Autowired
    DataSource dataSource;
    @RequestMapping("/")
    public String index(){
        System.out.println(dataSource);
        System.out.println("aaa");
        return "index";
    }
}
