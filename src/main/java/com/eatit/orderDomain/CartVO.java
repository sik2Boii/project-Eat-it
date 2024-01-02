package com.eatit.orderDomain;

import java.sql.Timestamp;
import java.util.List;

import lombok.Data;
import lombok.ToString;

@Data
@ToString(exclude = "cartList")
public class CartVO {

	private int cart_id;
	private int employee_no;
	private Timestamp create_date;
	
	// join시 사용 데이터
	private int product_no;
	private int quantity;
	private String product_name;
	
	// 리스트
	private List<CartProductVO> cartList;
}
