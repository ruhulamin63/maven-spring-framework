package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")

public class AdminController {

    @RequestMapping("/dashboard")
    public String index() {
        //This is test route
        return "admin/adminDashboard";
    }

    @RequestMapping("/home")
    public String home() {
        return "admin/layout/navbar/adminNavBar";
    }
}
