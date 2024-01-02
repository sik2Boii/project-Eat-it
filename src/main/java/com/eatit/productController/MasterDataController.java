package com.eatit.productController;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


import com.eatit.productDomain.PageVO;
import com.eatit.productDomain.ProductCriteria;
import com.eatit.productDomain.MasterdataVO;
import com.eatit.productService.MasterDataService;



@Controller
@RequestMapping(value="/masterdata/*")
public class MasterDataController {
   private static final Logger logger = LoggerFactory.getLogger(MasterDataController.class);
   
   @Inject
   private MasterDataService mdService;
   
   
// http://localhost:8088/masterdata/BomMain
   //BOM��������â������Ʈ�ѷ�
   @RequestMapping(value = "/BomMain",method = RequestMethod.GET)
	public void mainGET() {
		
	}
   //ǰ�����������Ʈ�ѷ�
   @RequestMapping(value = "/PIMinsert",method = RequestMethod.POST)
 	public String PIMPOST(MasterdataVO pvo) {
	   logger.debug("pvo"+pvo);
	   
	   
       mdService.productInsert(pvo);
       
       return "redirect:/masterdata/PIM";
 }
   //ǰ������������Ʈ�ѷ�
   @RequestMapping(value="/masterdata/PIMedit",method = RequestMethod.POST)
   public String PIMedit(MasterdataVO pvo)throws Exception {
	   logger.debug("pvo"+pvo);
	   int result = mdService.productUpdate(pvo);
	   logger.debug("/update form ->updatePOST()");
	   
	   
	   
	   return "redirect:/masterdata/PIM";
   }
   
 //ǰ������������Ʈ�ѷ�
   @RequestMapping(value="/masterdata/PIMdelete",method = RequestMethod.POST)
   public String PIMdelete(@RequestParam("product_no") int product_no, @RequestParam("product_code") String product_code)throws Exception {
	   
	   mdService.productDelete(product_no,product_code);
	 		   
	   
	   return "redirect:/masterdata/PIM";
   }
   
   //PIM����¡ó��
   @RequestMapping(value="/MdListPage",method=RequestMethod.GET)
   public String MdListPageGet(Model model,
			@ModelAttribute("result") String result,
			HttpSession session,
			ProductCriteria cri) throws Exception {
	   session.setAttribute("viewcntCheck", true);
	   
	 List<MasterdataVO> productList= mdService.productListPage(cri);
	 PageVO pageVO = new PageVO();
	 pageVO.setCri(cri);
	 pageVO.setTotalCount(mdService.totalProductCount());
	 model.addAttribute("pageVO", pageVO);
	 model.addAttribute("productList", productList);
	 return "/masterdata/PIM";
   }
   
   
// http://localhost:8088/masterdata/PIM
   //PIM ���������� ����Ʈ
   @RequestMapping(value="/PIM",method=RequestMethod.GET)
   public String productListGET(Model model) throws Exception {
	   logger.debug(" /masterdata/PIM -> ProductListGet()");
	   List<MasterdataVO> productList = mdService.ProductList();
	   model.addAttribute("productList",productList );
	   return "/masterdata/PIM";
   }
   //CIM��������������Ʈ
   @RequestMapping(value="/CIM",method=RequestMethod.GET)
   public void consumtionListGET(Model model) {
	  
   }
   //MIM ��������������Ʈ
   @RequestMapping(value="/MIM",method=RequestMethod.GET)
   public String materialListGET(Model model) throws Exception {
	  List<MasterdataVO> productList = mdService.ProductList();
	  model.addAttribute("productList", productList);
	  return "/masterdata/MIM";
   }
   //QIM ��������������Ʈ
   @RequestMapping(value="/QIM",method=RequestMethod.GET)
   public void QualityListGET(Model model) {
	  
   }
   
// �˻� ��� �߰�
   @RequestMapping(value = "/masterdata/search", method = RequestMethod.GET)
   public String searchProducts(@RequestParam("keyword") String keyword, Model model) throws Exception {
       List<MasterdataVO> searchedProducts = mdService.searchProducts(keyword); // Ư�� Ű���带 ���� �����͸� �˻��ϴ� ���� �޼��� ȣ��
       
       if (searchedProducts.isEmpty()) {
           // �˻� ����� ���� �� ó���ϴ� �κ�
           model.addAttribute("searchError", true); // �˻� ���� �÷��׸� �𵨿� �߰�
       } else {
           model.addAttribute("productList", searchedProducts); // �˻��� �����͸� productList�� �߰��Ͽ� �ش� �������� ����
       }

       return "/masterdata/PIM"; // �˻� ����� ǥ�õ� �������� ��ȯ
   }
   
   
   
 
}
