package com.singam.Repository;

import com.singam.Controller.EmployeeController;
import com.singam.Model.Employee;
import org.springframework.stereotype.Repository;

/**
 * Created by jjegasingam on 7/7/2017.
 */


@Repository("EmployeeRepository")

public class EmployeeRepositoryImp implements EmployeeRepository {
    public Employee get(int id){
        Employee employee = new Employee(id,"singam","colombo","0773799701");
        return employee;
    }

}
