package com.eatit.productPersistence;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;


import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.eatit.productDomain.ProductCriteria;
import com.eatit.productDomain.MasterdataVO;
@Repository
public class MasterDataDAOImpl implements MasterDataDAO{
	
	private static final Logger logger = LoggerFactory.getLogger(MasterDataDAOImpl.class);

	@Inject
	private SqlSession sqlSession;
	
	private static final String NAMESPACE="com.eatit.mapper.MasterDataMapper";
	@Override
	public List<MasterdataVO> getProductList() {
		
		return sqlSession.selectList(NAMESPACE+".getProductList");
	}
	@Override
	public void productInsert(MasterdataVO pvo) {
		logger.debug(" mapper(DB) ��� ó�� ���� ���� - ����");
		sqlSession.insert(NAMESPACE+".insertProduct",pvo);
		
		 sqlSession.insert(NAMESPACE + ".insertRecipe", pvo);
		logger.debug(" mapper(DB) ��� ó�� ���� ���� - ��");
		
	}
	@Override
	public int productUpdate(MasterdataVO pvo)throws Exception {
		logger.debug("DAO:updateProduct(ProductVO vo)");
		 int updatedProduct = sqlSession.update(NAMESPACE + ".updateProduct", pvo);

		    // recipe ���̺� ������Ʈ
		    int updatedRecipe = sqlSession.update(NAMESPACE + ".updateRecipe", pvo);

		    // �� ������ ����� �ջ��Ͽ� ��ȯ�ϰų� �ʿ��� ó�� ����
		    // ���� ���, �� ���� ��� �����ؾ߸� �������� �����ϴ� ��쿡�� ������ ���� ó�� ����
		    if (updatedProduct > 0 && updatedRecipe > 0) {
		        return updatedProduct + updatedRecipe;
		    } else {
		        // ���� ó�� �Ǵ� ���� �� ����
		        return -1;
		    }
		
	}
	@Override
	public void deleteProduct(int product_no,String product_code) throws Exception {
		
		 // recipe ���̺��� product_code�� �����ϴ� ���� ���� ����
	    sqlSession.delete(NAMESPACE + ".deleteRecipeByProductCode", product_code);

		sqlSession.delete(NAMESPACE+".deleteProduct",product_no);
		
	}
	@Override
	public List<MasterdataVO> getProductListPage(int page) throws Exception {
		page =(page-1) * 10;
		return sqlSession.selectList(NAMESPACE+".MdListPage",page);
	}
	@Override
	public List<MasterdataVO> getProductListPage(ProductCriteria cri) throws Exception {
		
		return sqlSession.selectList(NAMESPACE+".MdListPage",cri);
	}
	@Override
	public int getProductCount() throws Exception {
		
		return sqlSession.selectOne(NAMESPACE+".countProduct");
	}
	@Override
	public List<MasterdataVO> searchProducts(String keyword) throws Exception {
	    Map<String, Object> paramMap = new HashMap<>();
	    paramMap.put("keyword", keyword);

	    return sqlSession.selectList(NAMESPACE + ".searchProducts", paramMap);
	}
	
	

}
