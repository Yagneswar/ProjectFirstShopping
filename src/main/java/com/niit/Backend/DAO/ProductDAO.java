package com.niit.Backend.DAO;

import java.util.List;

import com.niit.Model.Product;


public interface ProductDAO {

	List<Product> getAll();
	
   public void insert(Product p);
	public void update(Product p);
    public void delete(int id);
	
   public Product getProduct(int id);
   
   public Product getProductByPrice(int productPrice);
	public Product getProductByBand(int productPrice);
	public List<Product> getProductByCategory(String Category);
   
		
}


