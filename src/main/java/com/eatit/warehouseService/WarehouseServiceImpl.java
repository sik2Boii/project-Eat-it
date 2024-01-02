package com.eatit.warehouseService;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.eatit.memberDomain.MemberVO;
import com.eatit.warehouseDomain.WarehouseVO;
import com.eatit.warehousePersistence.WarehouseDAO;

@Service
public class WarehouseServiceImpl implements WarehouseService {
	
	
	private static final Logger logger = LoggerFactory.getLogger(WarehouseServiceImpl.class);
	
	@Inject
	private WarehouseDAO warehousedao;
	
	@Override
	// 창고 정보 리스트 가져오기(All)
	public List<WarehouseVO> warehouseListAll() {
		logger.debug("S - warehouseListAll() 호출");
		return warehousedao.getWarehouseListAll();
	}

	@Override
	// 회원 정보 리스트 가져오기(All)
	public List<MemberVO> memberListAll() {
		return warehousedao.getMemberListAll();
	}

	@Override
	// 회원 직책 리스트 가져오기 - ajax
	public List<String> memberGetPositionName() {
		return warehousedao.getPositionName();
	}

	@Override
	// 직책에 해당하는 회원이름 리스트 가져오기 - ajax
	public List<String> getMembersOfposition(String position_name) {
		return warehousedao.getMembersOfPosition(position_name);
	}
	
	@Override
	// 이름에 해당하는 회원정보 리스트 가져오기 - ajax
	public List<MemberVO> getMemberInfoByName(String name) {
		return warehousedao.getMemberInfoByName(name);
	}

	@Override
	// 창고 정보 가져오기(main)
	public List<WarehouseVO> warehouseListMain() {
		logger.debug("S - warehouseListMain() 호출");
		return warehousedao.getWarehouseListMain();
	}

	@Override
	// 특정 창고 정보 가져오기 - ajax
	public WarehouseVO warehouseInfo(WarehouseVO vo) {
		logger.debug("S - warehouseInfo(WarehouseVO vo) 호출");
		logger.debug("S vo : " +vo);
		logger.debug("S 전달해주는 : "+warehousedao.getWarehouseInfo(vo));
		return warehousedao.getWarehouseInfo(vo);
	}

	@Override
	// 창고 등록 할 때 등록페이지에 로그인한 회원 정보 가져오기
	public MemberVO warehouseInfo(int no) {
		logger.debug("S - warehouseInfo(int no)");
		return warehousedao.getWarehouseInfo(no);
	}

	@Override
	// 창고 등록
	public void warehouseRegist(WarehouseVO vo) {
		logger.debug("S - warehouseRegist(WarehouseVO vo)");
		warehousedao.insertWarehouse(vo);
	}

	@Override
	// 창고 수정
	public void warehouseUpdate(WarehouseVO vo) {
		warehousedao.updateDetailInfo(vo);
	}

	@Override
	// 창고 삭제
	public void deleteWarehouse(int[] warehouse_no) {
		logger.debug("S - deleteWarehouse(int[] warehouse_no)");
		warehousedao.deleteWarehouse(warehouse_no);
	}
	
	
	
	
	
}
