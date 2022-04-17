package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/home")
public class HomeController {

    @RequestMapping("/welcome")
    public String index() {
        return "home";
    }

    @RequestMapping("/greet")
    public String greet() {
        return "greet";
    }

    @RequestMapping("/sayHello")
    public String sayHello(HttpServletRequest request, Model model) {
        String lastname = request.getParameter("lastname");
        model.addAttribute("name", lastname.toUpperCase());
        return "say-hello";
    }

    @RequestMapping("/sayHi")
    public String sayHi(@RequestParam("lastname") String lastname, Model model) {
        model.addAttribute("name", lastname.toUpperCase());
        return "say-hi";
    }
}
