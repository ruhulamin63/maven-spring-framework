package org.example;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

@Component()

public class ClassB implements InterfaceA {

    private ClassA cA1;

    public ClassB(ClassA cA1) {
        this.cA1 = cA1;
    }

    public String methodA() {

        return "I am from ClassA: methodA() ";
    }

    @Override
    public String methodB() {
        return "I am from ClassA: methodB() ";
    }

    public ClassA getcA1() {
        return cA1;
    }

    public void setcA1(ClassA cA1) {
        this.cA1 = cA1;
    }
}
