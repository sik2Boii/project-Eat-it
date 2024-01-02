package com.eatit.warehousePersistence;

import java.util.List;

import com.eatit.memberDomain.MemberVO;
import com.eatit.warehouseDomain.WarehouseVO;

public interface WarehouseDAO {
	
	// 창고 정보 모두 가져오기
	public List<WarehouseVO> getWarehouseListAll();
	
	// 회원 정보 모두 가져오기
	public List<MemberVO> getMemberListAll();
	
	// 직책 정보 가져오기 - ajax
	public List<String> getPositionName();
	
	// 직책에 해당하는 회원이름 리스트 가져오기 - ajax
	public List<String> getMembersOfPosition(String position_name);
	
	// 이름에 해당하는 회원정보 리스트 가져오기 - ajax
	public List<MemberVO> getMemberInfoByName(String name);
	
	// 창고 정보 가져오기(main)
	public List<WarehouseVO> getWarehouseListMain();
	
	// 특정 창고 정보 가져오기
	public WarehouseVO getWarehouseInfo(WarehouseVO vo);
	
	// 특정 창고 정보 가져오기(세션 아이디에 해당하는 회원정보) - ajax
	public MemberVO getWarehouseInfo(int no);
	
	// 창고 등록
	public void insertWarehouse(WarehouseVO vo);
	
	// 창고 상세 정보 수정
	public void updateDetailInfo(WarehouseVO vo);
	
	// 창고 삭제
	public void deleteWarehouse(int[] warehouse_no);
}
