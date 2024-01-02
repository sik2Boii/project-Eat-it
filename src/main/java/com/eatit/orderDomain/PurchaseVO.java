package com.eatit.orderDomain;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class PurchaseVO {
	
	private Integer order_id;
	private Integer company_no;
	private Integer member_no;
	private Integer product_no;
	private Timestamp order_date;
	private String due_date;
	private String comments;
	private String order_status;
	private Timestamp update_date;
	private int delete_status; 
	
}
