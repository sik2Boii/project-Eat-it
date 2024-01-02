package com.itwillbs.controller;

import java.sql.Connection;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.eatit.warehouseDomain.WarehouseVO;
import com.eatit.warehousePersistence.WarehouseDAO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
public class WarehouseTest {
	
	
	private static final Logger logger = LoggerFactory.getLogger(WarehouseTest.class);
	
	private static final String NAMESPACE = "com.eatit.mapper.warehouseMapper.";
	
	@Inject
	private WarehouseDAO wdao;
	
	@Inject
	private SqlSession sqlsession;
	
	
//	@Test
	public void warehouseTest() {
		WarehouseVO vo = new WarehouseVO();
		vo.setAdmin_no(3);
		vo.setLocation_name("창고 1동");
		vo.setWarehouse_name("자재2창고");
		vo.setCategory("자재");
		vo.setNote("테스트창고입니다!");
		wdao.insertWarehouse(vo);
	}
	
//	@Test
	public void 창고삭제테스트() {
		WarehouseVO vo = new WarehouseVO();
		vo.setWarehouse_no(50);
		
//		wdao.deleteWarehouse(vo);
	}
	
	@Test
	public void 직책정보테스트() {
//		wdao.getPositionName();
		wdao.getMembersOfPosition("미정");
	}

}
