package com.n22.finalproject.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.n22.finalproject.model.Product;
import com.n22.finalproject.repository.ProductRepository;

@Service
public class ProductService {
	
	@Autowired
	private ProductRepository repository;
	
	public List<Product> getAllProducts() {
		return repository.findAll();
	}
	
	public Product getByProductID(Integer id) {
		return repository.getById(id);
	}
}
