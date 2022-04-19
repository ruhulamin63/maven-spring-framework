package com.rest;

import com.model.StudentModel;
import com.service.StudentService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api")
public class UserResource {

    private StudentService userService;

    public UserResource(StudentService userService) {
        this.userService = userService;
    }

    @GetMapping("/users")
    public List<StudentModel> getAll() {
        return userService.getAll();
    }
}