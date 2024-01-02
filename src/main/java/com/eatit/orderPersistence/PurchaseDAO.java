package com.eatit.orderPersistence;

import java.util.List;

import com.eatit.orderDomain.CartProductVO;
import com.eatit.orderDomain.CartVO;
import com.eatit.orderDomain.ProductVO;
import com.eatit.orderDomain.PurchaseVO;

public interface PurchaseDAO {

	public void insertPurchaseOrder(PurchaseVO pvo) throws Exception;

	public List<PurchaseVO> getOrderList() throws Exception;

	public PurchaseVO getOrderDetail(int order_id) throws Exception;

	public int updateForm(PurchaseVO pvo) throws Exception;

	public int deleteForm(int order_id) throws Exception;

	public List<ProductVO> getProductList() throws Exception;

	public List<ProductVO> searchProduct(String query) throws Exception;

	public void addCart(CartProductVO cpvo) throws Exception;

	public List<CartVO> getCartList(int employee_no) throws Exception;

}
