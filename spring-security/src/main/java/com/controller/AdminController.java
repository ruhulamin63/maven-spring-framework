package com.controller;

import com.model.UserModel;
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

    private final UserService userService;
    public AdminController(UserService userService) {
        this.userService = userService;
    }

    @InitBinder
    public void initBinder(WebDataBinder webDataBinder) {
        StringTrimmerEditor stringTrimmerEditor = new StringTrimmerEditor(true);
        webDataBinder.registerCustomEditor(String.class, stringTrimmerEditor);
    }

    @RequestMapping("/home")
    public String index(Model model, @RequestParam(required = false) String sortKey) {
        List<UserModel> userModels = new ArrayList<>();
        if (sortKey != null) {
            int field = Integer.parseInt(sortKey);
            userModels = userService.sort(field);
        }
        else {
            userModels = userService.getAll();
        }
        //System.out.println(userModels);

        model.addAttribute("registers", userModels);
        return "admin/adminDashboard";
    }

    @RequestMapping("/operator-create-form")
    public String operatorCreateForm(Model model) {
        UserModel userModel = new UserModel();
        model.addAttribute("registers", userModel);
        return "admin/adminDashboard";
    }

    @RequestMapping("/operator-create")
    public String operatorCreate(@ModelAttribute("registers") UserModel userModel) {
        userService.save(userModel);
        return "redirect:/admin/home";
    }

    @RequestMapping("/operator-update-form")
    public String operatorUpdateForm(@RequestParam("userId") int id, Model model) {
        UserModel userModel = userService.get(id);
        model.addAttribute("registers", userModel);
        return "admin/update-operator";
    }

    @RequestMapping("/operator-update")
    public String operatorUpdate(@ModelAttribute("register") UserModel userModel) {
        userService.update((UserModel) userService);
        return "redirect:/admin/home";
    }

    @RequestMapping("/operator-delete")
    public String operatorDelete(@RequestParam("userId") int id) {
        userService.delete(id);
        return "redirect:/admin/home";
    }

    @RequestMapping("/search")
    public String search(@RequestParam(name = "searchValue", required = false) String phone, Model model) {
        List<UserModel> userModels = new ArrayList<>();
        if (phone == null) {
            userModels = userService.getAll();
        }
        else {
            userModels = userService.getAll(phone);
        }
        model.addAttribute("register", userModels);
        return "admin/adminDashboard";
    }

//    ====================================

    @RequestMapping("/test")
    public String home() {
        return "admin/layout/navbar/adminNavBar";
    }
}
