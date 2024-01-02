package com.eatit.MaterialPersistence;

import com.eatit.MaterialDomain.MaterialAddVO;

public interface MaterialAddDAO {
    // 원자재 추가
    void insertMaterial(MaterialAddVO material);

    // 원자재 정보 조회
    MaterialAddVO getMaterial(Long id);

    // 원자재 정보 수정
    void updateMaterial(MaterialAddVO material);

    // 원자재 삭제
    void deleteMaterial(Long id);
    
    // 원자재 추가에 필요한 검증, 생성 등의 기능을 추가할 수 있습니다.
    // 예: 원자재 코드 검증, 원자재 유형 확인 등
}
