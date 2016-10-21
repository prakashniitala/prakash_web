package com.homeshop.dao;

import java.util.List;

import com.homeshop.model.*;

public interface ProductDAO {
	
	public List<Product> getAllProduct();
	public void insertProduct(Product p);
	public void deleteProductById(int productId);
	void updateProduct(Product product);
	public Product getProductById(int productId);
	public Product getProductByPrice(int productPrice);
	public Product getProductByBand(int productPrice);
}
