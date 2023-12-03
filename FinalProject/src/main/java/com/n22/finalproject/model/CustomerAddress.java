package com.n22.finalproject.model;

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
@Table(name = "customeraddress")
@Data
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class CustomerAddress {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@Column(name = "customer_id")
	private int customerID;

	private String fullname;

	@Column(name = "phone_number")
	private String phoneNumber;

	private String city;

	private String district;

	private String ward;

	private String details;

}