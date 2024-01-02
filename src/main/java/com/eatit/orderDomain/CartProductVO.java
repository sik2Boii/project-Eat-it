package com.eatit.orderDomain;

import lombok.Data;

@Data
public class CartProductVO {

	private int cart_product_id;
	private int cart_id;
	private int product_no;
	private int quantity;
	
}
