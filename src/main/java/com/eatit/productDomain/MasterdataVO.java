package com.eatit.productDomain;

import java.sql.Date;

import lombok.Data;

@Data
public class MasterdataVO {
   private int product_no;
   private String product_code;
   private String product_name;
   private String product_category;
   private String product_category_detail;
   private String company_no;
   private String product_unit;
   private String product_price;
   private Date expiry_date;
   private String recipe;
   
}
