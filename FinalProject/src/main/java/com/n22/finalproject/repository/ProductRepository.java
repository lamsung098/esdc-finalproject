package com.n22.finalproject.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.n22.finalproject.model.Product;


public interface ProductRepository extends JpaRepository<Product, Integer> {

}
