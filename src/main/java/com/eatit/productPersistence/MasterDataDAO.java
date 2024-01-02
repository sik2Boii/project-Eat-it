package com.eatit.productPersistence;

import java.util.List;

import com.eatit.productDomain.ProductCriteria;
import com.eatit.productDomain.MasterdataVO;



public interface MasterDataDAO {
  public List<MasterdataVO> getProductList() throws Exception;
  
  public void productInsert(MasterdataVO pvo);
  
  public int productUpdate(MasterdataVO pvo)throws Exception;
  
  public void deleteProduct(int product_no,String product_code) throws Exception;

  public List<MasterdataVO> getProductListPage(int page) throws Exception;
  public List<MasterdataVO> getProductListPage(ProductCriteria cri) throws Exception;
  
  public int getProductCount() throws Exception;

public List<MasterdataVO> searchProducts(String keyword) throws Exception;
}

