package com.singam;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.ComponentScan;

/**
 * Created by jjegasingam on 7/7/2017.
 */

@SpringBootApplication
@ComponentScan({"com.singam.Controller","com.singam.Service","com.Employee.Repository"})
@EntityScan("com.singam.Service.EmployeeServiceImp")
public class Application {

    public static void main(String[] args) {
        SpringApplication.run(Application.class,args);
    }
}
