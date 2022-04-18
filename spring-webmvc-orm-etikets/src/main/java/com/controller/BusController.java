package com.controller;

import com.model.Bus;
import com.service.BusService;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/bus")
public class BusController {
    private final BusService busService;
    public BusController(BusService busService) {
        this.busService = busService;
    }

    @InitBinder
    public void initBinder(WebDataBinder webDataBinder) {
        StringTrimmerEditor stringTrimmerEditor = new StringTrimmerEditor(true);
        webDataBinder.registerCustomEditor(String.class, stringTrimmerEditor);
    }

    @RequestMapping("/home")
    public String index() {
        //This is test route
        return "operator/operatorDashboard";
    }


    @RequestMapping("/bus-create-form")
    public String operatorCreateForm(Model model) {
        Bus bus = new Bus();
        model.addAttribute("buses", bus);
        return "admin/adminDashboard";
    }

    @RequestMapping("/bus-create")
    public String operatorCreate(@ModelAttribute("register") Bus bus) {
        busService.save(bus);
        return "redirect:/operator/home";
    }

    @RequestMapping("/bus-update-form")
    public String operatorUpdateForm(@RequestParam("busId") int id, Model model) {
        Bus bus = busService.get(id);
        model.addAttribute("buses", bus);
        return "admin/update-operator";
    }

    @RequestMapping("/bus-update")
    public String operatorUpdate(@ModelAttribute("buses") Bus bus) {
        busService.update(bus);
        return "redirect:/operator/home";
    }

    @RequestMapping("/bus-delete")
    public String operatorDelete(@RequestParam("busId") int id) {
        busService.delete(id);
        return "redirect:/operator/home";
    }
}
