package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")

public class adminController {

    @RequestMapping("/test")
    public String index() {
        //This is test route
        return "adminDashboard";
    }
}
