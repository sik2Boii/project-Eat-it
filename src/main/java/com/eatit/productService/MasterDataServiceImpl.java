package com.eatit.productService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.eatit.productDomain.ProductCriteria;
import com.eatit.productDomain.MasterdataVO;
import com.eatit.productPersistence.MasterDataDAO;

import java.util.List;

import javax.inject.Inject;

@Service
public class MasterDataServiceImpl implements MasterDataService {
 
	private static final Logger logger = LoggerFactory.getLogger(MasterDataServiceImpl.class);
	
	@Inject
	private MasterDataDAO mddao;
	
	
	@Override
	public List<MasterdataVO> ProductList() throws Exception {
		logger.debug("ProductList()");
		return mddao.getProductList();
	}


	@Override
	public void productInsert(MasterdataVO pvo) {
		
		mddao.productInsert(pvo);
		
		
	}


	@Override
	public int productUpdate(MasterdataVO pvo)throws Exception {
		logger.debug("S:productUpdate(ProductVO pvo)");
		return mddao.productUpdate(pvo);
		
	}


	@Override
	public void productDelete(int product_no,String product_code) throws Exception {
		mddao.deleteProduct(product_no,product_code);
		
	}


	@Override
	public List<MasterdataVO> productListPage(ProductCriteria cri) throws Exception {
		
		return mddao.getProductListPage(cri);
	}


	@Override
	public int totalProductCount() throws Exception {
		
		return mddao.getProductCount();
	}


	@Override
	public List<MasterdataVO> searchProducts(String keyword)throws Exception {
		logger.debug("searchProducts(String keyword)");
		return mddao.searchProducts(keyword);
	}
   
}


