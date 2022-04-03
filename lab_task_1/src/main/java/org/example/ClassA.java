package org.example;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

@Component("cA")

public class ClassA implements InterfaceA {

    @Value("$(my.user.email}")
    private String email;

    @Override
    public String methodA() {
        return email + ": I am from ClassA: methodA ";
    }
    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }

    @Value("$(my.user.name}")
    private String name;

    @Override
    public String methodB() {
        return name + ": I am from ClassA: methodA ";
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
