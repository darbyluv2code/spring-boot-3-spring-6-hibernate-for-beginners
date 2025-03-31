package com.luv2code.springboot.thymeleafdemo.service;

import java.util.List;

import com.luv2code.springboot.thymeleafdemo.entity.Employee;
import org.springframework.data.domain.Page;

public interface EmployeeService {

	List<Employee> findAll();

	// New method for pagination
	Page<Employee> findPaginated(int pageNo, int pageSize);
	
	Employee findById(int theId);
	
	void save(Employee theEmployee);
	
	void deleteById(int theId);
	
}
