package com.n22.finalproject.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.n22.finalproject.model.Customer;
import com.n22.finalproject.repository.CustomerRepository;

@Service
public class CustomerService {
	
	@Autowired
	private CustomerRepository repository;
	
	public List<Customer> getAllCustomers() {
		return repository.findAll();
	}
}
