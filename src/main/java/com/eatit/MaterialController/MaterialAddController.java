package com.eatit.MaterialController;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.eatit.MaterialDomain.MaterialVO;
import com.eatit.MaterialService.MaterialService;

@Controller
@RequestMapping(value = "/Material/*")
public class MaterialAddController {
    
    private final MaterialService materialService;

    public MaterialAddController(MaterialService materialService) {
        this.materialService = materialService;
    }
    
    // 원자재 관리 메서드 (POST)
    // 예: 입고 및 출고 처리
    @RequestMapping(value = "/manage", method = RequestMethod.POST)
    public String manageMaterial(MaterialVO materialVO, @RequestParam("action") String action) {
        if ("add".equals(action)) {
            // 입고 처리
            materialService.addMaterial(materialVO);
        } else if ("export".equals(action)) {
            // 출고 처리
            materialService.exportMaterial(materialVO.getId(), materialVO.getQuantity());
        }
        return "redirect:/Material/list"; // 처리 후 원자재 목록 페이지로 리다이렉션
    }
    
    // 여기에 추가적인 입고 및 출고 관련 메서드를 구현할 수 있습니다.

}
