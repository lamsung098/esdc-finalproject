package com.n22.finalproject.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.n22.finalproject.model.Account;


public interface AccountRepository extends JpaRepository<Account, Integer>{

	@Query("Select a from Account a WHERE a.username = ?1 ")
	public Account findByUserName(@Param("username") String username);
}
