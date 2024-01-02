package com.eatit.warehouseController;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.eatit.memberDomain.MemberVO;
import com.eatit.warehouseDomain.WarehouseVO;
import com.eatit.warehouseService.WarehouseService;

@Controller
@RequestMapping(value="/warehouse/*")
public class WarehouseController {
	
	private static final Logger logger = LoggerFactory.getLogger(WarehouseController.class);
	
	@Inject
	private WarehouseService warehouseService;
	
	//http://localhost:8088/warehouse/warehouseMain
	// 창고메인
	@GetMapping(value = "/warehouseMain")
	public void warehouseMainGET(Model model,@SessionAttribute("no") int no) {
		logger.debug("C - wareHouseMainGET() 호출");
		// ID 세션값 저장 확인
//		logger.debug("no : "+no);
		
		// 서비스 - 창고 리스트 가져오기
		List<WarehouseVO> warehouseListMain = warehouseService.warehouseListMain();
		logger.debug("@_@"+warehouseListMain);
		
		// 서비스 - 회원 리스트 가져오기
		List<MemberVO> memberList = warehouseService.memberListAll();
//		logger.debug("@_@"+memberList);
		
		// 서비스 - 직책 정보 가져오기
		List<String> positionName = warehouseService.memberGetPositionName();
//		logger.debug("@_@"+positionName);
		
		// 데이터를 연결된 뷰페이지로 전달
		model.addAttribute("warehouseListMain", warehouseListMain);
		model.addAttribute("memberList", memberList);
		model.addAttribute("positionName", positionName);
	}
	
	// 창고 모달창에서 정보 수정
   @RequestMapping(value = "/updateDetailInfo", method = RequestMethod.POST)
   public String updateDetailInfo(WarehouseVO vo) {
      logger.debug("/warehouse/updateDetailInfo 호출 -> updateDetailInfo() 실행");
//      logger.debug("vo : "+vo);
      
      // 정보 수정
      warehouseService.warehouseUpdate(vo);
      
      return "redirect:/warehouse/warehouseMain";
   }
	
	// 창고등록
	@RequestMapping(value = "/warehouseRegist", method = RequestMethod.GET)
	public void warehouseModifyGET(@SessionAttribute("no") int no,Model model) {
		logger.debug("C - warehouseModifyGET()");
		logger.debug("no : "+ no);
		
		// 서비스 - 창고 등록 할 때 등록페이지에 로그인한 회원 정보 가져오기
		MemberVO warehouseInfo = warehouseService.warehouseInfo(no);
		logger.debug("@_@"+warehouseInfo);
		// 데이터를 연결된 뷰페이지로 전달
		model.addAttribute("warehouseAdminInfo", warehouseInfo);
	}
	
	@RequestMapping(value = "/warehouseRegist", method = RequestMethod.POST)
	public String warehouseModifyPOST(WarehouseVO vo, RedirectAttributes rttr ) {
		logger.debug("C - warehouseModifyPOST()");
		logger.debug("vo : "+vo);
		
		// 서비스 - 창고 등록
		warehouseService.warehouseRegist(vo);
		
		// 메시지 전달
//		rttr.addFlashAttribute("result", "registOK");
		
		return "redirect:/warehouse/registClose";
	}
	
	// 창고삭제
	@RequestMapping(value = "/deleteWarehouse", method = RequestMethod.POST)
	public String deleteWarehousePOST(@RequestParam("chk") int[] warehouse_no) {
		logger.debug("C - deleteWarehousePOST()");
		logger.debug("vo : "+warehouse_no);
		
		// 서비스 - 창고 삭제
		warehouseService.deleteWarehouse(warehouse_no);
		
		return "redirect:/warehouse/warehouseMain";
	}
	
	// 등록 후 창닫기 전용 페이지
	@GetMapping(value = "/registClose")
	public void registClose() {
		logger.debug("C - registClose()");
	}
	
	
	//http://localhost:8088/warehouse/warehouseStockMain
	// 창고 재고 페이지
	@RequestMapping(value = "/warehouseStockMain", method = RequestMethod.GET)
	public void warehouseStockMainGET() {
		logger.debug("C - warehouseStockMainGET()");
	}
}
