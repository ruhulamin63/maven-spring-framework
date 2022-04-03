package org.example;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class App {

    public static void main(String[] args) {

        ApplicationContext applicationContext = new
                AnnotationConfigApplicationContext(AppConfig.class);
//                ClassPathXmlApplicationContext("applicationContext.xml"); //with xml file

//        InterfaceA interfaceA = applicationContext.getBean("classB", InterfaceA.class);

        InterfaceA interfaceA = applicationContext.getBean("cA", InterfaceA.class);

        System.out.println(interfaceA.methodA());
        System.out.println(interfaceA.methodB());
    }
}
