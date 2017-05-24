package com.niit.Backend.DAO;

import com.niit.Model.Cart;
import com.niit.Model.CartItem;

public interface CartItemDAO {
	
	void addCartItem(CartItem cartItem);

    void removeCartItem(CartItem cartItem);

    void removeAllCartItems(Cart cart);

    CartItem getCartItemByProductId(int productId);

}
