package com.controller;

import com.model.Operator;
import com.model.User;
import com.service.OperatorService;
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

    private final OperatorService operatorService;
    public AdminController(OperatorService operatorService) {
        this.operatorService = operatorService;
    }

    @InitBinder
    public void initBinder(WebDataBinder webDataBinder) {
        StringTrimmerEditor stringTrimmerEditor = new StringTrimmerEditor(true);
        webDataBinder.registerCustomEditor(String.class, stringTrimmerEditor);
    }

    @RequestMapping("/home")
    public String index(Model model, @RequestParam(required = false) String sortKey) {
        List<Operator> operators = new ArrayList<>();
        if (sortKey != null) {
            int field = Integer.parseInt(sortKey);
            operators = operatorService.sort(field);
        }
        else {
            operators = operatorService.getAll();
        }
        System.out.println(operators);

        model.addAttribute("register", operators);
        return "admin/adminDashboard";
    }

    @RequestMapping("/operator-create-form")
    public String operatorCreateForm(Model model) {
        Operator operator = new Operator();
        model.addAttribute("register", operator);
        return "admin/adminDashboard";
    }

    @RequestMapping("/operator-create")
    public String operatorCreate(@ModelAttribute("register") Operator operator) {
        operatorService.save(operator);
        return "redirect:/admin/home";
    }

    @RequestMapping("/operator-update-form")
    public String operatorUpdateForm(@RequestParam("operatorId") int id, Model model) {
        Operator operator = operatorService.get(id);
        model.addAttribute("register", operator);
        return "admin/update-operator";
    }

    @RequestMapping("/operator-update")
    public String operatorUpdate(@ModelAttribute("register") Operator operator) {
        operatorService.update(operator);
        return "redirect:/admin/home";
    }

    @RequestMapping("/operator-delete")
    public String operatorDelete(@RequestParam("operatorId") int id) {
        operatorService.delete(id);
        return "redirect:/admin/home";
    }

    @RequestMapping("/search")
    public String search(@RequestParam(name = "searchValue", required = false) String phone, Model model) {
        List<Operator> operators = new ArrayList<>();
        if (phone == null) {
            operators = operatorService.getAll();
        }
        else {
            operators = operatorService.getAll(phone);
        }
        model.addAttribute("register", operators);
        return "admin/adminDashboard";
    }

//    ====================================

    @RequestMapping("/test")
    public String home() {
        return "admin/layout/navbar/adminNavBar";
    }
}
