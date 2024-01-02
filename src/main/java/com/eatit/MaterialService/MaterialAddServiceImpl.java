package com.eatit.MaterialService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.eatit.MaterialDomain.MaterialAddVO;
import com.eatit.MaterialPersistence.MaterialAddDAO;

import javax.inject.Inject;

@Service
public class MaterialAddServiceImpl implements MaterialAddService {

    private static final Logger logger = LoggerFactory.getLogger(MaterialAddServiceImpl.class);

    @Inject
    private MaterialAddDAO materialAddDAO; // MaterialAddDAO 객체 주입

    // 원자재 추가 서비스 구현
    @Override
    public void addMaterial(MaterialAddVO vo) {
        logger.debug("Service - 원자재 추가");
        materialAddDAO.insertMaterial(vo);
    }

    // 필요한 경우, 추가적인 서비스 메소드들을 여기에 구현할 수 있습니다.
    // 예: 입력 데이터 검증, 관련 비즈니스 로직 처리 등
}
