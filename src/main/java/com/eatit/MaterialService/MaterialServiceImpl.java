package com.eatit.MaterialService;

import javax.inject.Inject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import java.util.List;

import com.eatit.MaterialDomain.MaterialVO;
import com.eatit.MaterialPersistence.MaterialDAO; // MaterialDAO를 사용

@Service
public class MaterialServiceImpl implements MaterialService {
    
    private static final Logger logger = LoggerFactory.getLogger(MaterialServiceImpl.class);
    
    @Inject
    private MaterialDAO materialDAO; // MaterialDAO 객체 주입

    @Override
    public List<MaterialVO> findAllMaterials() {
        logger.debug("Service - 원자재 목록 조회");
        return materialDAO.findAllMaterials();
    }
    
    @Override
	public void exportMaterial(Long id, int quantity) {
		// TODO Auto-generated method stub
		
	}

	@Override
    public void addMaterial(MaterialVO vo) {
        logger.debug("Service - 원자재 추가");
        materialDAO.addMaterial(vo);
    }
    
    @Override
    public void updateMaterial(MaterialVO vo) {
        logger.debug("Service - 원자재 정보 수정");
        materialDAO.updateMaterial(vo);
    }

    @Override
    public void deleteMaterial(Long id) {
        logger.debug("Service - 원자재 삭제");
        materialDAO.deleteMaterial(id);
    }
}
