package com.eatit.MaterialService;

import com.eatit.MaterialDomain.MaterialVO;
import java.util.List;

public interface MaterialService {

    // 원자재 목록 조회 메서드
    public List<MaterialVO> findAllMaterials();

    // 원자재 추가 메서드
    public void addMaterial(MaterialVO vo);

    // 원자재 정보 수정 메서드
    public void updateMaterial(MaterialVO vo);

    // 원자재 삭제 메서드
    public void deleteMaterial(Long id);

	public void exportMaterial(Long id, int quantity);
}
