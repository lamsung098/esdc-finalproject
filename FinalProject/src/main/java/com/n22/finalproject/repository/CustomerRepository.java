package com.n22.finalproject.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.n22.finalproject.model.Customer;

public interface CustomerRepository extends JpaRepository<Customer, Integer>{

}
