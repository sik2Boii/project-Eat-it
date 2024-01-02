package com.eatit.orderService;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.eatit.orderDomain.CartProductVO;
import com.eatit.orderDomain.CartVO;
import com.eatit.orderDomain.ProductVO;
import com.eatit.orderDomain.PurchaseVO;
import com.eatit.orderPersistence.PurchaseDAO;

@Service
public class PurchaseServiceImpl implements PurchaseService {
	
	private static final Logger logger = LoggerFactory.getLogger(PurchaseServiceImpl.class);

	@Inject
	private PurchaseDAO pdao;
	
	@Override
	public void createPurchaseOrder(PurchaseVO pvo) throws Exception {
		logger.debug("Service: createPurchaseOrder(PurchaseVO pvo)");
		pdao.insertPurchaseOrder(pvo);
	}

	@Override
	public List<PurchaseVO> orderList() throws Exception {
		logger.debug("Service: orderList()");
		return pdao.getOrderList();
	}

	@Override
	public PurchaseVO getOrderDetail(int order_id) throws Exception {
		logger.debug("Service: getOrderDetail(int order_id)");
		return pdao.getOrderDetail(order_id);
	}

	@Override
	public int editForm(PurchaseVO pvo) throws Exception {
		logger.debug("Service: editForm(PurchaseVO pvo)");
		return pdao.updateForm(pvo);
	}

	@Override
	public int cancelForm(int order_id) throws Exception {
		logger.debug("Service: cancelForm(int order_id)");
		return pdao.deleteForm(order_id);	
	}

	@Override
	public List<ProductVO> productList() throws Exception {
		logger.debug("Service: productList()");
		return pdao.getProductList();
	}

	@Override
	public List<ProductVO> searchProduct(String query) throws Exception {
		logger.debug("Service: searchProduct(String query)");
		return pdao.searchProduct(query);
	}

	@Override
	public void addCart(CartProductVO cpvo) throws Exception {
		logger.debug("Service: addCart(CartProductVO cpvo)");
		pdao.addCart(cpvo);
	}

	@Override
	public List<CartVO> cartList(int employee_no) throws Exception {
		logger.debug("Service: cartList(int member_no)");
		return pdao.getCartList(employee_no);
	}
		
}
