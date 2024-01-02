package com.eatit.orderPersistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.eatit.orderDomain.CartProductVO;
import com.eatit.orderDomain.CartVO;
import com.eatit.orderDomain.ProductVO;
import com.eatit.orderDomain.PurchaseVO;

@Repository
public class PurchaseDAOImpl implements PurchaseDAO {
	
	private static final Logger logger = LoggerFactory.getLogger(PurchaseDAOImpl.class);
	
	private static final String NAMESPACE = "com.eatit.mapper.PurchaseMapper";

	@Inject
	private SqlSession SqlSession;
	
	@Override
	public void insertPurchaseOrder(PurchaseVO pvo) throws Exception {
		logger.debug("DAO: insertPurchaseOrder(PurchaseVO pvo)");
		SqlSession.insert(NAMESPACE + ".insertForm", pvo);
	}

	@Override
	public List<PurchaseVO> getOrderList() throws Exception {
		logger.debug("DAO: getOrderList()");
		return SqlSession.selectList(NAMESPACE + ".list");
	}

	@Override
	public PurchaseVO getOrderDetail(int order_id) throws Exception {
		logger.debug("DAO: getOrderDetail(int order_id)");
		return SqlSession.selectOne(NAMESPACE + ".readOrder", order_id);
	}

	@Override
	public int updateForm(PurchaseVO pvo) throws Exception {
		logger.debug("DAO: updateForm(PurchaseVO pvo)");
		return SqlSession.update(NAMESPACE + ".updateForm", pvo);
	}
	@Override
	public int deleteForm(int order_id) throws Exception {
		logger.debug("DAO: deleteForm(int order_id)");
		return SqlSession.update(NAMESPACE + ".deleteForm", order_id);
	}

	@Override
	public List<ProductVO> getProductList() throws Exception {
		logger.debug("DAO: getProductList()");
		return SqlSession.selectList(NAMESPACE + ".productList");
	}

	@Override
	public List<ProductVO> searchProduct(String query) throws Exception {
		logger.debug("DAO: searchProduct(String query)");
		return SqlSession.selectList(NAMESPACE + ".searchProduct", query);
	}

	@Override
	public void addCart(CartProductVO cpvo) throws Exception {
		logger.debug("DAO: addCart(CartProductVO cpvo)");
		SqlSession.insert(NAMESPACE + ".addCart", cpvo);
	}

	@Override
	public List<CartVO> getCartList(int employee_no) throws Exception {
		logger.debug("DAO: getCartList(int member_no)");
		return SqlSession.selectList(NAMESPACE + ".cartList", employee_no);
	}
	
}
