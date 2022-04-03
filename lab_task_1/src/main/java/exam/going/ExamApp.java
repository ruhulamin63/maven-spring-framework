package exam.going;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

public class ExamApp {

    public static void main(String[] args) {

        ApplicationContext applicationContext = new
                AnnotationConfigApplicationContext(ExamAppConfig.class);
//                ClassPathXmlApplicationContext("applicationContext.xml"); //with xml file

//        InterfaceA interfaceA = applicationContext.getBean("classB", InterfaceA.class);

//        InterfaceA interfaceA = applicationContext.getBean("cA", InterfaceA.class);

//        System.out.println(interfaceA.methodA());
//        System.out.println(interfaceA.methodB());

        ExamInterface interfaceA = applicationContext.getBean("cA", ExamInterface.class);

        System.out.println(interfaceA.Mid_exam());
        System.out.println(interfaceA.Final_exam());
    }
}

