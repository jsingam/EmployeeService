package com.singam.Controller;

import com.singam.Model.Employee;
import com.singam.Service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.awt.*;

/**
 * Created by jjegasingam on 7/7/2017.
 */

@RestController("EmplyerController")
public class EmployeeControllerImp implements EmployeeController {

    @Autowired
    EmployeeService employeeService;



    @RequestMapping(value="/Employees/{empId}", method= RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
    public Employee get(@PathVariable("empId") int id){
        Employee employee=employeeService.get(id);
        return employee;
    }


}
