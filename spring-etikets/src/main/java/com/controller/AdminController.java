package com.controller;

import com.model.User;
import com.service.UserService;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/admin")

public class AdminController {

    @RequestMapping("/dashboard")
    public String index() {
        //This is test route
        return "admin/adminDashboard";
    }

    @RequestMapping("/reservation")
    public String reservation() {
        return "admin/reservation";
    }

    @RequestMapping("/home")
    public String home() {
        return "admin/layout/navbar/adminNavBar";
    }



//    =========================================
    private final UserService userService;

    public AdminController(UserService userService) {
        this.userService = userService;
    }

    @InitBinder
    public void initBinder(WebDataBinder webDataBinder) {
        StringTrimmerEditor stringTrimmerEditor = new StringTrimmerEditor(true);
        webDataBinder.registerCustomEditor(String.class, stringTrimmerEditor);
    }

    @RequestMapping("/list")
    public String list(Model model, @RequestParam(required = false) String sortKey) {
        List<User> users = new ArrayList<>();
        if (sortKey != null) {
            int field = Integer.parseInt(sortKey);
            users = userService.sort(field);
        }
        else {
            users = userService.getAll();
        }
        model.addAttribute("users", users);
        return "user-list";
    }

    @RequestMapping("/user-create-form")
    public String userCreateForm(Model model) {
        User user = new User();
        model.addAttribute("user", user);
        return "admin/adminDashboard";
    }

    @RequestMapping("/create")
    public String create(@ModelAttribute("user") User user) {
        userService.save(user);
        return "redirect:/admin/adminDashboard";
    }

    @RequestMapping("/user-update-form")
    public String userUpdateForm(@RequestParam("userId") int id, Model model) {
        User user = userService.get(id);
        model.addAttribute("user", user);
        return "update-user-form";
    }

    @RequestMapping("/update")
    public String update(@ModelAttribute("user") User user) {
        userService.update(user);
        return "redirect:/user/list";
    }

    @RequestMapping("/delete")
    public String delete(@RequestParam("userId") int id) {
        userService.delete(id);
        return "redirect:/user/list";
    }

    @RequestMapping("/search")
    public String search(@RequestParam(name = "searchValue", required = false) String phone, Model model) {
        List<User> users = new ArrayList<>();
        if (phone == null) {
            users = userService.getAll();
        }
        else {
            users = userService.getAll(phone);
        }
        model.addAttribute("register", users);
        return "user-list";
    }
}
