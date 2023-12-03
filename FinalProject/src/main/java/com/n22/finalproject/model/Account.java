package com.n22.finalproject.model;

import java.util.Date;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;


@Entity
@Table(name = "account")
@Data
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class Account {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="account_id")
	private int id;
	private String username;
	private String password;
	private int role;
	
	@Column(name="create_at")
	private Date createAt;
	
	@Column(name="modified_at")
	private Date modifiedAt;
	
	@Column(name="user_id")
	private int userID;
}
