package com.n22.finalproject.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.n22.finalproject.model.Account;


public interface AccountRepository extends JpaRepository<Account, Integer>{

}
