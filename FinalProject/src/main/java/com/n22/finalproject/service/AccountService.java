package com.n22.finalproject.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.n22.finalproject.model.Account;
import com.n22.finalproject.repository.AccountRepository;

@Service
public class AccountService{

	@Autowired
	private AccountRepository repository;
	
	public List<Account> findAll() {
		return repository.findAll();
	}
	
	public Account getByUsername(String username) {
		return repository.findByUserName(username);
	}
}
