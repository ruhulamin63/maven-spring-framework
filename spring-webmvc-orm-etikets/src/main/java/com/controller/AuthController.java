package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller

public class AuthController {

    @RequestMapping("login")
    public String login() {
        return "login-page";
    }

    @RequestMapping("register")
    public String Register() {
        return "register-page";
    }

}
