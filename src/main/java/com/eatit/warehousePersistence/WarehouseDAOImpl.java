package com.eatit.warehousePersistence;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.eatit.memberDomain.MemberVO;
import com.eatit.warehouseDomain.WarehouseVO;

@Repository
public class WarehouseDAOImpl implements WarehouseDAO {
	
	
	private static final Logger logger = LoggerFactory.getLogger(WarehouseDAOImpl.class);
	private static final String NAMESPACE = "com.eatit.mapper.warehouseMapper.";
	
	@Inject
	private SqlSession sqlsession;

	@Override
	// 창고 정보 모두 가져오기
	public List<WarehouseVO> getWarehouseListAll() {
		logger.debug("DAO - getWarehouseListAll() 호출");
		return sqlsession.selectList(NAMESPACE+"getWarehouseListAll");
	}

	@Override
	// 회원 정보 모두 가져오기
	public List<MemberVO> getMemberListAll() {
		return sqlsession.selectList(NAMESPACE+"getMemberListAll");
	}

	@Override
	// 직책 정보 가져오기- ajax
	public List<String> getPositionName() {
		return sqlsession.selectList(NAMESPACE+"getPositionName");
	}

	@Override
	// 직책에 맞는 회원이름 가져오기- ajax
	public List<String> getMembersOfPosition(String position_name) {
		return sqlsession.selectList(NAMESPACE+"getMembersOfPosition", position_name);
	}
	
	@Override
	// 이름에 맞는 회원정보 가져오기- ajax
	public List<MemberVO> getMemberInfoByName(String name) {
		return sqlsession.selectList(NAMESPACE+"getMemberInfoByName", name);
	}

	@Override
	// 창고 정보 가져오기(main)
	public List<WarehouseVO> getWarehouseListMain() {
		logger.debug("DAO - getWarehouseListAll() 호출");
		return sqlsession.selectList(NAMESPACE+"getWarehouseMainList");
	}

	@Override
	// 특정 창고 정보 가져오기 - ajax
	public WarehouseVO getWarehouseInfo(WarehouseVO vo) {
		logger.debug("DAO - getWarehouseInfo(WarehouseVO vo)");
		logger.debug("DAO vo : "+vo);
		logger.debug("DAO 전달해주는 vo : "+sqlsession.selectOne(NAMESPACE+"getWarehouseInfo", vo));
		return sqlsession.selectOne(NAMESPACE+"getWarehouseInfo", vo);
	}

	@Override
	// 특정 창고 정보 가져오기(세션 아이디에 해당하는 회원정보)
	public MemberVO getWarehouseInfo(int no) {
		logger.debug("DAO - getWarehouseInfo(int no)");
		return sqlsession.selectOne(NAMESPACE+"getWarehouseAdminInfo", no);
	}

	@Override
	// 창고 등록
	public void insertWarehouse(WarehouseVO vo) {
		logger.debug("DAO - insertWarehouse(WarehouseVO vo)");
		sqlsession.insert(NAMESPACE+"insertWarehouse", vo);
	}
	
	@Override
	// 창고 수정
	public void updateDetailInfo(WarehouseVO vo) {
		sqlsession.update(NAMESPACE+"updateDetailInfo", vo);
	}

	@Override
	// 창고 삭제
	public void deleteWarehouse(int[] warehouse_no) {
		logger.debug("DAO - deleteWarehouse(WarehouseVO vo)");
		Map<String, Object> paramMap = new HashMap<>();
		paramMap.put("warehouse_no", warehouse_no);
		sqlsession.delete(NAMESPACE+"deleteWarehouse",paramMap);
	}
	
	
	
	

}
