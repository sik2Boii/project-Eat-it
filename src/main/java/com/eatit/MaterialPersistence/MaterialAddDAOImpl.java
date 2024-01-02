package com.eatit.MaterialPersistence;

import javax.inject.Inject;
import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.eatit.MaterialDomain.MaterialAddVO;


@Repository
public class MaterialAddDAOImpl implements MaterialAddDAO {

    private static final Logger logger = LoggerFactory.getLogger(MaterialAddDAOImpl.class);

    @Inject
    private SqlSession sqlSession;

    private static final String NAMESPACE = "com.eatit.mapper.MaterialAddMapper";

    @Override
    public void insertMaterial(MaterialAddVO vo) {
        logger.debug("DAO - 원자재 추가 실행");
        sqlSession.insert(NAMESPACE + ".insertMaterial", vo);
    }

    // 다른 메서드들은 실제 애플리케이션의 비즈니스 로직에 따라 구현되어야 합니다.
    // 예를 들어 다음과 같은 구현이 포함될 수 있습니다:

    // 원자재 조회 메서드
    @Override
    public MaterialAddVO getMaterial(Long id) {
        logger.debug("DAO - 원자재 조회 실행");
        return sqlSession.selectOne(NAMESPACE + ".getMaterial", id);
    }

    // 원자재 정보 수정 메서드
    @Override
    public void updateMaterial(MaterialAddVO vo) {
        logger.debug("DAO - 원자재 정보 수정 실행");
        sqlSession.update(NAMESPACE + ".updateMaterial", vo);
    }

    // 원자재 삭제 메서드
    @Override
    public void deleteMaterial(Long id) {
        logger.debug("DAO - 원자재 삭제 실행");
        sqlSession.delete(NAMESPACE + ".deleteMaterial", id);
    }

    // 필요에 따라 추가 메소드 구현...
    // 예시: 특정 조건의 원자재 조회, 원자재 정보 수정, 원자재 삭제 등
}
