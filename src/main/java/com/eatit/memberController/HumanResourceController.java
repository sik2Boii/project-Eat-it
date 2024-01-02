package com.eatit.memberController;

import java.util.Map;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.eatit.mainDomain.Criteria;
import com.eatit.mainDomain.PageVO;
import com.eatit.memberDomain.MemberVO;
import com.eatit.memberService.HumanResourceService;

@Controller
@RequestMapping(value = "/hr/*")
public class HumanResourceController {	
	private static final Logger logger = LoggerFactory.getLogger(HumanResourceController.class);
	
	@Inject
	HumanResourceService hrService;

	// http://localhost:8088/hr/list
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public void hrListGET(Model model, Criteria cri) {
		logger.debug("/hr/list 호출 -> hrListGET() 실행");
		PageVO pageVO = new PageVO();
		pageVO.setCri(cri);
		pageVO.setTotalCount(hrService.getTotalCount());
		
		model.addAttribute("listUrl", "list");
		model.addAttribute("pageVO", pageVO);
		model.addAttribute("list", hrService.getHrList(cri));
	}
	
	@RequestMapping(value = "/list", method = RequestMethod.POST)
	public String hrListPost(MemberVO vo, @ModelAttribute("searchword") String searchword) {
		logger.debug("/hr/list 호출 -> hrListPOST() 실행");		
		hrService.editHrContent(vo);
		if(!searchword.isEmpty()) {
			return "redirect:/hr/searchlist";
		}
		return "redirect:/hr/list";
	}
	
	@RequestMapping(value = "/content", method = RequestMethod.GET, produces = "application/json;charset=UTF-8")
	@ResponseBody
	public MemberVO hrContentGET(MemberVO vo) {
		logger.debug("/hr/content 호출 -> hrContentGET() 실행");
		return hrService.getHrContent(vo);
	}
	
	@RequestMapping(value = "/searchlist", method = RequestMethod.GET)
	public String searchListGET(Model model, Map<String, Object> params, Criteria cri, @ModelAttribute("searchword") String searchword) {
		logger.debug("/hr/searchlist 호출 -> searchListGET() 실행");
		PageVO pageVO = new PageVO();
		pageVO.setCri(cri);
		pageVO.setTotalCount(hrService.getSearchCount(searchword));
		
		params.put("cri", cri);
		params.put("searchword", searchword);
		
		model.addAttribute("searchword",searchword);
		model.addAttribute("listUrl", "searchlist");
		model.addAttribute("pageVO", pageVO);
		model.addAttribute("list",hrService.getSearchList(params,cri, searchword));		
		return "/hr/list";
	}
	
	// http://localhost:8088/hr/reglist
	@RequestMapping(value = "/reglist", method = RequestMethod.GET)
	public void hrRegListGET(Model model, Criteria cri) {
		logger.debug("/hr/reglist 호출 -> hrRegListGET() 실행");
		PageVO pageVO = new PageVO();
		pageVO.setCri(cri);
		pageVO.setTotalCount(hrService.getRegCount());
		
		model.addAttribute("listUrl", "reglist");
		model.addAttribute("pageVO", pageVO);
		model.addAttribute("list", hrService.getHrRegList(cri));
	}
	
	@RequestMapping(value = "/reglist", method = RequestMethod.POST)
	public String hrRegListPost(MemberVO vo, @RequestParam("ad_identify") String ad_identify) {
		logger.debug("/hr/reglist 호출 -> hrRegListPOST() 실행");	
		hrRegProcessing(vo, ad_identify);
		return "redirect:/hr/reglist";
	}
	
	@RequestMapping(value = "/batch", method = RequestMethod.POST)
	public String hrBatchPost(MemberVO vo, @RequestParam("checkgroup") int[] employee_no_List, @RequestParam("ad_identify") String ad_identify) {
		logger.debug("/hr/Batch 호출 -> hrBatchPost() 실행");
		for(int i : employee_no_List) {
			vo.setEmployee_no(i);
			hrRegProcessing(vo, ad_identify);			
		}
		return "redirect:/hr/reglist";
	}
	
	private void hrRegProcessing(MemberVO vo, String ad_identify) {
		if(ad_identify.equals("access")) {
			hrService.setHrRegActive(vo);
		} else if(ad_identify.equals("denied")) {
			hrService.deniedHrReg(vo);
		}
	}
	
}	
