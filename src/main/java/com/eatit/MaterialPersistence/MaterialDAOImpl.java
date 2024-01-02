package com.eatit.MaterialPersistence;

import javax.inject.Inject;
import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;
import java.util.List;

import com.eatit.MaterialDomain.MaterialVO;

@Repository
public class MaterialDAOImpl implements MaterialDAO {
    
    private static final Logger logger = LoggerFactory.getLogger(MaterialDAOImpl.class);
    
    @Inject
    private SqlSession sqlSession;

    private static final String NAMESPACE = "com.eatit.mapper.MaterialMapper";
    
    @Override
    public List<MaterialVO> findAllMaterials() {
        logger.debug("DAO - 원자재 목록 조회");
        return sqlSession.selectList(NAMESPACE + ".findAll");
    }
    
    @Override
    public void addMaterial(MaterialVO vo) {
        logger.debug("DAO - 원자재 추가");
        sqlSession.insert(NAMESPACE + ".insertMaterial", vo);
    }
    
    @Override
    public void updateMaterial(MaterialVO vo) {
        logger.debug("DAO - 원자재 정보 수정");
        sqlSession.update(NAMESPACE + ".updateMaterial", vo);
    }

    @Override
    public void deleteMaterial(Long id) {
        logger.debug("DAO - 원자재 삭제");
        sqlSession.delete(NAMESPACE + ".deleteMaterial", id);
    }
}
