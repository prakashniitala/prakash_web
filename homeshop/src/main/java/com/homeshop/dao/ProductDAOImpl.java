package com.homeshop.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import com.homeshop.model.Product;


@Transactional
public class ProductDAOImpl implements ProductDAO{

	@Autowired
	private SessionFactory session;
	

	
	@SuppressWarnings({ "unchecked", "deprecation" })
	@Override

	public List<Product> getAllProduct() {

//		
		return session.getCurrentSession().createQuery("from Product").list();

	
	}

	@Override
	public void insertProduct(Product p) {
		session.getCurrentSession().persist(p);		
	}

	
	@Override
	public void deleteProductById(int productId) {
		session.getCurrentSession().delete(getProductById(productId));

		
	}

	@Override
	public void updateProduct(Product product) {
		session.getCurrentSession().update(product);		
	}

	@Override
	public Product getProductById(int productId) {
		// if you'll use load method their

				Product p = session.getCurrentSession().get(Product.class, new Integer(productId));
				// Product p = (Product) session1.load(Product.class, new Integer(id));

				return p;
	}

	@Override
	public Product getProductByPrice(int productPrice) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Product getProductByBand(int productPrice) {
		// TODO Auto-generated method stub
		return null;
	}

}
