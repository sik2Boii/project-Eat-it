package com.eatit.productService;

import java.util.List;

import com.eatit.productDomain.ProductCriteria;
import com.eatit.productDomain.MasterdataVO;



public interface MasterDataService {
	
	public List<MasterdataVO> ProductList() throws Exception;
	
	
	
	public void productInsert(MasterdataVO pvo);
	
	public int productUpdate(MasterdataVO pvo)throws Exception;
	
	public void productDelete(int product_no,String product_code) throws Exception;



	public List<MasterdataVO> productListPage(ProductCriteria cri)throws Exception;



	public int totalProductCount() throws Exception;



	public List<MasterdataVO> searchProducts(String keyword)throws Exception;



	

}
