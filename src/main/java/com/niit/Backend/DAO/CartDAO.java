package com.niit.Backend.DAO;


import java.io.IOException;

import com.niit.Model.Cart;


public interface CartDAO {


    Cart getCartById(int cartId);

    Cart validate(int cartId) throws IOException;

    void update(Cart cart);
   
    


}
