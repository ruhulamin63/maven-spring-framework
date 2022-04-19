package com.controller;

import com.model.AuthModel;
import com.service.StudentService;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
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

    private final StudentService userService;
    public LoginController(StudentService userService) {
        this.userService = userService;
    }
    @RequestMapping("/login")
    public String login_index(@Valid @ModelAttribute("AuthModel") AuthModel authModel, BindingResult bindingResult, HttpServletRequest request) {
        if (bindingResult.hasErrors()) {
            return "redirect:/login";
        }
        else {
            //userService.save(user);

            request.getSession().setAttribute("User", userService.getAll());
            return "redirect:/admin/home";
        }
    }


    @RequestMapping("/register")
    public String Register() {
        return "authenticate/register-page";
    }


    @GetMapping("/access-denied")
    public String accessDenied() {
        return "access-denied";
    }
}

