package com.homeshop.dao;

import com.homeshop.model.CustomerOrder;

public interface CustomerOrderDao {
	void addCustomerOrder(CustomerOrder customerOrder);

    double getCustomerOrderGrandTotal(int cartId);
}
