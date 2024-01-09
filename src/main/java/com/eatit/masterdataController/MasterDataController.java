package com.eatit.masterdataController;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.eatit.machineDomain.machineVO;
import com.eatit.mainDomain.Criteria;
import com.eatit.mainDomain.PageVO;
import com.eatit.masterdataDomain.MasterdataVO;
import com.eatit.masterdataService.MasterDataService;
import com.eatit.memberDomain.MemberVO;

@Controller
@RequestMapping(value = "/masterdata/*")
public class MasterDataController {
	private static final Logger logger = LoggerFactory.getLogger(MasterDataController.class);

	@Inject
	private MasterDataService mdService;

// http://localhost:8088/masterdata/BomMain
	@RequestMapping(value = "/BomMain", method = RequestMethod.GET)
	public void mainGET() {

	}

	@RequestMapping(value = "/PIMinsert", method = RequestMethod.POST)
	public String PIMPOST(MasterdataVO pvo) {
		logger.debug("pvo" + pvo);
		mdService.productInsert(pvo);
		return "redirect:/masterdata/PIM";
	}

	@RequestMapping(value = "/QIMinsert", method = RequestMethod.POST)
	public String QIMPOST(MasterdataVO pvo) {
		logger.debug("pvo" + pvo);
		mdService.QIMInsert(pvo);
		return "redirect:/masterdata/QIM";
	}

	@RequestMapping(value = "/QIMTestInsert", method = RequestMethod.POST)
	public String QIMTestPOST(MasterdataVO pvo) {
		logger.debug("pvo" + pvo);
		mdService.QIMTestInsert(pvo);
		return "redirect:/masterdata/QIM";
	}

	// 占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占싣�占싼뤄옙
	@RequestMapping(value = "/MIMinsert", method = RequestMethod.POST)
	public String MIMPOST(MasterdataVO pvo) throws Exception {
		logger.debug("pvo" + pvo);

		mdService.MIMInsert(pvo);

		return "redirect:/masterdata/MIM";
	}

	@RequestMapping(value = "/FIMinsert", method = RequestMethod.POST)
	public String FIMPOST(machineVO mvo) throws Exception {
		logger.debug("mvo" + mvo);

		mdService.FIMInsert(mvo);

		return "redirect:/masterdata/FIM";
	}

	// 품占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙트占싼뤄옙
	@RequestMapping(value = "/masterdata/PIMedit", method = RequestMethod.POST)
	public String PIMedit(MasterdataVO pvo) throws Exception {
		logger.debug("pvo" + pvo);
		int result = mdService.productUpdate(pvo);
		logger.debug("/update form ->updatePOST()");

		return "redirect:/masterdata/PIM";
	}

	// 占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙트占싼뤄옙
	@RequestMapping(value = "/masterdata/MIMedit", method = RequestMethod.POST)
	public String MIMedit(MasterdataVO pvo) throws Exception {
		logger.debug("pvo" + pvo);
		int result = mdService.MIMUpdate(pvo);
		logger.debug("/update form ->updatePOST()");

		return "redirect:/masterdata/MIM";
	}

	@RequestMapping(value = "/masterdata/FIMedit", method = RequestMethod.POST)
	public String FIMedit(machineVO mvo) throws Exception {
		logger.debug("mvo" + mvo);
		int result = mdService.FIMUpdate(mvo);
		logger.debug("/update form ->updatePOST()");

		return "redirect:/masterdata/FIM";
	}

	// 품占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙트占싼뤄옙
	@RequestMapping(value = "/masterdata/PIMdelete", method = RequestMethod.POST)
	public String PIMdelete(@RequestParam("product_no") int product_no, @RequestParam("code") String code)
			throws Exception {

		mdService.productDelete(product_no, code);

		return "redirect:/masterdata/PIM";
	}

	@RequestMapping(value = "/masterdata/QIMdelete", method = RequestMethod.POST)
	public String QIMdelete(@RequestParam("product_code") String product_code,
			@RequestParam("quality_no") int quality_no) throws Exception {

		mdService.QIMDelete(quality_no, product_code);

		return "redirect:/masterdata/QIM";
	}

	@RequestMapping(value = "/masterdata/PIMAlldelete", method = RequestMethod.POST)
	public String PIMAlldelete(@RequestParam("product_no") int product_no,
			@RequestParam("product_code") String product_code) throws Exception {

		mdService.productAllDelete(product_no, product_code);

		return "redirect:/masterdata/PIM";
	}

	// 占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙트占싼뤄옙
	@RequestMapping(value = "/masterdata/MIMdelete", method = RequestMethod.POST)
	public String MIMdelete(@RequestParam("product_no") int product_no) throws Exception {

		mdService.MIMDelete(product_no);

		return "redirect:/masterdata/MIM";
	}

	@RequestMapping(value = "/masterdata/FIMdelete", method = RequestMethod.POST)
	public String FIMdelete(@RequestParam("machine_code") int machine_code) throws Exception {

		mdService.FIMDelete(machine_code);

		return "redirect:/masterdata/FIM";
	}

	// PIM占쏙옙占쏙옙징처占쏙옙
	@RequestMapping(value = "/PIM", method = RequestMethod.GET)
	public String MdListPageGet(Model model, HttpSession session, Criteria cri) throws Exception {
		session.setAttribute("viewcntCheck", true);

		// �럹�씠吏�蹂� �젣�뭹 紐⑸줉 媛��졇�삤湲�
		List<MasterdataVO> productList = mdService.productListPage(cri);

		// 珥� �젣�뭹 �닔 �꽕�젙
		int totalProductCount = mdService.totalProductCount();

		// PageVO 媛앹껜 �깮�꽦 諛� �꽕�젙
		PageVO pageVO = new PageVO();
		pageVO.setCri(cri);
		pageVO.setTotalCount(totalProductCount);

		// �럹�씠吏� 釉붾줉�떦 10媛쒖쓽 �럹�씠吏� �꽕�젙
		pageVO.setDisplayPageNum(10);

		model.addAttribute("pageVO", pageVO);
		model.addAttribute("productList", productList);

		return "/masterdata/PIM";
	}

	@RequestMapping(value = "/QIM", method = RequestMethod.GET)
	public String QIMListPageGet(Model model, HttpSession session, Criteria cri) throws Exception {
		session.setAttribute("viewcntCheck", true);

		// �럹�씠吏�蹂� �젣�뭹 紐⑸줉 媛��졇�삤湲�
		List<MasterdataVO> QIMList = mdService.QIMListPage(cri);
		List<MasterdataVO> categoryList = mdService.categoryList();
		List<MasterdataVO> data = mdService.dataList();

		// 珥� �젣�뭹 �닔 �꽕�젙
		int totalQIMCount = mdService.totalQIMCount();

		// PageVO 媛앹껜 �깮�꽦 諛� �꽕�젙
		PageVO pageVO = new PageVO();
		pageVO.setCri(cri);
		pageVO.setTotalCount(totalQIMCount);

		// �럹�씠吏� 釉붾줉�떦 10媛쒖쓽 �럹�씠吏� �꽕�젙

		model.addAttribute("categoryList", categoryList);
		model.addAttribute("data", data);
		pageVO.setDisplayPageNum(10);
		model.addAttribute("QIMList", QIMList);

		model.addAttribute("pageVO", pageVO);

		return "/masterdata/QIM";
	}

	// MIM 占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙트
	@RequestMapping(value = "/MIM", method = RequestMethod.GET)
	public String materialListGET(Model model, HttpSession session, Criteria cri) throws Exception {
		session.setAttribute("viewcntCheck", true);

		// �럹�씠吏�蹂� �젣�뭹 紐⑸줉 媛��졇�삤湲�
		List<MasterdataVO> MIMList = mdService.MIMListPage(cri);

		// 珥� �젣�뭹 �닔 �꽕�젙
		int totalMIMCount = mdService.getMIMCount();

		// PageVO 媛앹껜 �깮�꽦 諛� �꽕�젙
		PageVO pageVO = new PageVO();
		pageVO.setCri(cri);
		pageVO.setTotalCount(totalMIMCount);

		// �럹�씠吏� 釉붾줉�떦 10媛쒖쓽 �럹�씠吏� �꽕�젙
		pageVO.setDisplayPageNum(10);

		model.addAttribute("pageVO", pageVO);
		model.addAttribute("MIMList", MIMList);

		return "/masterdata/MIM";
	}

	@RequestMapping(value = "/FIM", method = RequestMethod.GET)
	public String FIMListPageGet(Model model, HttpSession session, Criteria cri) throws Exception {
		session.setAttribute("viewcntCheck", true);

		// �럹�씠吏�蹂� �젣�뭹 紐⑸줉 媛��졇�삤湲�
		List<MasterdataVO> FIMList = mdService.FIMListPage(cri);

		// 珥� �젣�뭹 �닔 �꽕�젙
		int totalFIMCount = mdService.totalFIMCount();

		// PageVO 媛앹껜 �깮�꽦 諛� �꽕�젙
		PageVO pageVO = new PageVO();
		pageVO.setCri(cri);
		pageVO.setTotalCount(totalFIMCount);

		// �럹�씠吏� 釉붾줉�떦 10媛쒖쓽 �럹�씠吏� �꽕�젙
		pageVO.setDisplayPageNum(10);

		model.addAttribute("pageVO", pageVO);
		model.addAttribute("FIMList", FIMList);

		return "/masterdata/FIM";
	}
	
	@RequestMapping(value = "/CIM", method = RequestMethod.GET)
	public String CIMListPageGet(Model model, HttpSession session, Criteria cri) throws Exception {
		session.setAttribute("viewcntCheck", true);

		List<MasterdataVO> CIMList = mdService.CIMListPage(cri);

		int totalProductCount = mdService.totalProductCount();

		PageVO pageVO = new PageVO();
		pageVO.setCri(cri);
		pageVO.setTotalCount(totalProductCount);

		pageVO.setDisplayPageNum(10);

		model.addAttribute("pageVO", pageVO);
		model.addAttribute("CIMList", CIMList);

		return "/masterdata/CIM";
	}

	@RequestMapping(value = "/masterdata/search", method = RequestMethod.GET)
	public String searchProducts(@RequestParam("keyword") String keyword, Model model, Criteria cri,
			HttpServletRequest request) throws Exception {
		List<MasterdataVO> searchedProducts = mdService.searchProducts(keyword);

		if (searchedProducts.isEmpty()) {
			model.addAttribute("searchError", true);
		} else {
			model.addAttribute("productList", searchedProducts);
			// 寃��깋 �썑�뿉 referer瑜� ���옣
			String referer = request.getHeader("Referer");
			model.addAttribute("referer", referer);
		}

		com.eatit.mainDomain.PageVO pageVO = new com.eatit.mainDomain.PageVO();
		pageVO.setCri(cri);
		pageVO.setTotalCount(mdService.searchProductCount());
		model.addAttribute("pageVO", pageVO);

		return "/masterdata/PIM";
	}

	@RequestMapping(value = "/masterdata/MIMsearch", method = RequestMethod.GET)
	public String searchMIM(@RequestParam("keyword") String keyword, Model model, Criteria cri,
			HttpServletRequest request) throws Exception {
		List<MasterdataVO> searchMIM = mdService.searchMIM(keyword);

		if (searchMIM.isEmpty()) {

			model.addAttribute("searchError", true);
		} else {
			model.addAttribute("MIMList", searchMIM);
			String referer = request.getHeader("Referer");
			model.addAttribute("referer", referer);
		}

		com.eatit.mainDomain.PageVO pageVO = new com.eatit.mainDomain.PageVO();
		pageVO.setCri(cri);
		pageVO.setTotalCount(mdService.searchMIMCount());
		model.addAttribute("pageVO", pageVO);

		return "/masterdata/MIM";
	}

	@RequestMapping(value = "/masterdata/FIMsearch", method = RequestMethod.GET)
	public String searchFIM(@RequestParam("keyword") String keyword, Model model, Criteria cri,
			HttpServletRequest request) throws Exception {
		List<MasterdataVO> searchFIM = mdService.searchFIM(keyword);

		if (searchFIM.isEmpty()) {

			model.addAttribute("searchError", true);
		} else {
			model.addAttribute("FIMList", searchFIM);
			String referer = request.getHeader("Referer");
			model.addAttribute("referer", referer);
		}

		com.eatit.mainDomain.PageVO pageVO = new com.eatit.mainDomain.PageVO();
		pageVO.setCri(cri);
		pageVO.setTotalCount(mdService.searchFIMCount());
		model.addAttribute("pageVO", pageVO);

		return "/masterdata/FIM";
	}

	@RequestMapping(value = "/masterdata/QIMsearch", method = RequestMethod.GET)
	public String searchQIM(@RequestParam("keyword") String keyword, Model model, Criteria cri,
			HttpServletRequest request) throws Exception {
		List<MasterdataVO> searchQIM = mdService.searchQIM(keyword);

		if (searchQIM.isEmpty()) {

			model.addAttribute("searchError", true);
		} else {
			model.addAttribute("QIMList", searchQIM);
			String referer = request.getHeader("Referer");
			model.addAttribute("referer", referer);
		}

		com.eatit.mainDomain.PageVO pageVO = new com.eatit.mainDomain.PageVO();
		pageVO.setCri(cri);
		pageVO.setTotalCount(mdService.searchQIMCount());
		model.addAttribute("pageVO", pageVO);

		return "/masterdata/QIM";
	}

	@RequestMapping(value = "/content", method = RequestMethod.GET, produces = "application/json;charset=UTF-8")
	@ResponseBody
	public MasterdataVO hrContentGET(MasterdataVO pvo) {
		logger.debug("/hr/content 호출 -> hrContentGET() 실행");

		return mdService.getMDContent(pvo);
	}

	@RequestMapping(value = "/recipeContent", method = RequestMethod.GET, produces = "application/json;charset=UTF-8")
	@ResponseBody
	public MasterdataVO recipeContentGET(MasterdataVO pvo) {
		logger.debug("/hr/content 호출 -> hrContentGET() 실행");

		return mdService.getRecipeContent(pvo);
	}

	@RequestMapping(value = "/cimContent", method = RequestMethod.GET, produces = "application/json;charset=UTF-8")
	@ResponseBody
	public MasterdataVO cimContentGET(MasterdataVO vo) {
		logger.debug("/masterdata/cimContent 호출 -> cimContentGET() 실행");

		return mdService.getCIMContent(vo);
	}
	
	@RequestMapping(value = "/materialNames", method = RequestMethod.GET, produces = "application/json;charset=UTF-8")
	@ResponseBody
	public List<String> materialNamesGET() {
		logger.debug("/masterdata/materialNames 호출 -> getMaterialNames() 실행");
		return mdService.getMaterialNames();
	}
	
	@RequestMapping(value = "/masterdata/requires", method = RequestMethod.POST)
	public String editRequiresPOST(MasterdataVO vo, @RequestParam("materialGroup") String[] materialGroup,
		@RequestParam("requiredGroup") String[] requiredGroup) {
		logger.debug("/masterdata/materialNames 호출 -> requiresGET() 실행");
		String jsonRecipe = "{\""+vo.getProduct_no()+"\":{";
		for(int i=0; i<materialGroup.length; i++) {
			jsonRecipe += "\""+materialGroup[i]+"\":"+requiredGroup[i];
			if(i != materialGroup.length-1) {
				jsonRecipe += ",";
			}
		}
		jsonRecipe += "}}";
		logger.debug("jsonRecipe : "+jsonRecipe);
//		mdService.editRequires();
		return "/masterdata/CIM";
	}
}
