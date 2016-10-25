package com.homeshop.dao;

import com.homeshop.model.Cart;
import com.homeshop.model.CartItem;

public interface CartItemDao {


    void addCartItem(CartItem cartItem);

    void removeCartItem(CartItem cartItem);

    void removeAllCartItems(Cart cart);

    CartItem getCartItemByProductId(int productId);

}
