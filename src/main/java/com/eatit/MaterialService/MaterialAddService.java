package com.eatit.MaterialService;

import com.eatit.MaterialDomain.MaterialAddVO;

public interface MaterialAddService {
    // 원자재 추가 메서드
    void addMaterial(MaterialAddVO vo);

    // 필요에 따라 추가적인 서비스 메소드들을 여기에 정의할 수 있습니다.
    // 예: 원자재 정보 조회, 원자재 정보 수정, 원자재 삭제 등
}
