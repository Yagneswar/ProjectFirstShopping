package com.niit.Backend.DAO;

import com.niit.Model.CustomerOrder;

public interface CustomerOrderDAO {
	
	
	void addCustomerOrder(CustomerOrder customerOrder);

    double getCustomerOrderGrandTotal(int cartId);

}
