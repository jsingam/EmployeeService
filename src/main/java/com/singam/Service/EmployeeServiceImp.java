package com.singam.Service;

import com.singam.Model.Employee;
import com.singam.Repository.EmployeeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


/**
 * Created by jjegasingam on 7/7/2017.
 */


@Service("EmployeeService")
@Transactional
public class EmployeeServiceImp implements EmployeeRepository {
    @Autowired
    EmployeeRepository employeeRepository;


    public Employee get(int id){
        Employee employee = employeeRepository.get(id);
        return employee;
    }
}
