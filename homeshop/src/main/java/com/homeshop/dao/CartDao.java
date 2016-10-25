
package com.homeshop.dao;

import java.io.IOException;

import com.homeshop.model.Cart;

public interface CartDao {


    Cart getCartById(int cartId);

    Cart validate(int cartId) throws IOException;

    void update(Cart cart);
   
    


}
