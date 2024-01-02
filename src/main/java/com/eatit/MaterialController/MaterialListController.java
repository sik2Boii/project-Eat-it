package com.eatit.MaterialController;

import javax.inject.Inject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.eatit.MaterialDomain.MaterialListVO;
import com.eatit.MaterialService.MaterialListService;

@Controller
@RequestMapping(value = "/MaterialList/*")
public class MaterialListController {
    
    private static final Logger logger = LoggerFactory.getLogger(MaterialListController.class);

    @Inject
    private MaterialListService materialListService;

    // 원자재 목록 조회 (GET)
    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public String materialListGET(Model model) {
        logger.debug("/MaterialList/list 호출 -> materialListGET() 실행");
        model.addAttribute("materials", materialListService.findAllMaterials()); // 모든 원자재 데이터를 모델에 추가
        return "MaterialList"; // 원자재 목록을 보여주는 뷰 페이지 (MaterialList.jsp 등)
    }

    // 원자재 상세 조회 (GET)
    @RequestMapping(value = "/detail", method = RequestMethod.GET)
    public String materialDetailGET(@RequestParam("id") Long id, Model model) {
        logger.debug("/MaterialList/detail 호출 -> materialDetailGET() 실행");
        MaterialListVO material = materialListService.findMaterialById(id); // id에 해당하는 원자재 데이터 조회
        model.addAttribute("material", material);
        return "MaterialDetail"; // 원자재 상세 페이지 뷰 (MaterialDetail.jsp 등)
    }

}
