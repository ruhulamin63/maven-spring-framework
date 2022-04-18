package com.controller;

import com.model.AuthModel;
import com.model.User;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.validation.Valid;

@Controller
public class LoginController {

    @GetMapping("/login")
    public String loginPage() {
        return "authenticate/login-page";
    }

//
//    @GetMapping("/login-page")
//    public String loginPage() {
//        return "authenticate/login-page";
//    }

    @RequestMapping("/login")
    public String login_index(@Valid @ModelAttribute("AuthModel") AuthModel authModel, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return "authenticate/login-page";
        }
        else {
            //userService.save(user);
            return "redirect:/admin/adminDashboard";
        }
    }


    @RequestMapping("/register-page")
    public String Register() {
        return "authenticate/register-page";
    }


    @GetMapping("/access-denied")
    public String accessDenied() {
        return "access-denied";
    }
}

