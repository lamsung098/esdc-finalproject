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
@Table(name = "product")
@Data
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class Product {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "product_id")
	private int productID;
	
	private String name;
	
	private String description;
	
	private float price;
	
	private double rate;
	
	private int sold;
	
	@Column(name = "image_path")
	private String imagePath;
	
	@Column(name = "seller_id")
	private int sellerID;
	
	@Column(name = "inventory_id")
	private int inventoryID;
	
	@Column(name = "category_id")
	private int categoryID;
}
