package org.example;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

public class App {

    public static void main(String[] args) {

        ApplicationContext applicationContext = new
                AnnotationConfigApplicationContext(AppConfig.class);

        InterfaceA interfaceA = applicationContext.getBean("classB", InterfaceA.class);

        System.out.println(interfaceA.methodA());
    }
}
