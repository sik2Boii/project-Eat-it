package com.eatit.machineService;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.eatit.machineDomain.machineVO;
import com.eatit.machineDomain.machinehistoryVO;
import com.eatit.machinePersistence.machineDAO;

@Service
public class machineserviceImpl implements machineservice {
	
	
	private static final Logger logger = LoggerFactory.getLogger(machineserviceImpl.class);
	
	@Inject
	private machineDAO mcdao;

	@Override
	public void insertmachine(machineVO vo) {
	logger.debug("DAO 설비 추가 메서드 호출 - 시작");
	mcdao.insertmachine(vo);
	logger.debug("DAO 설비 추가 메서드 호출 - 끝");
		
	}

	@Override
	public List<machineVO> machinelist() {
		logger.debug("machinelist()");
		return mcdao.getmachinelist();
	}

	@Override
	public void machinehistory(machinehistoryVO vo) {
		logger.debug("machinehistory(machinehistoryVO vo)");
		mcdao.machinehistory(vo);
		logger.debug("machinehistory vo : " + vo);
		
	}

	@Override
	public int getmachinecode() {
		logger.debug("getmachinecode() 호출");
		return mcdao.getmachinecode();
	
	}

	@Override
	public machineVO machineinfo(int code) {
		logger.debug("machineinfo() 호출");
		return mcdao.machineinfo(code);
	}

	@Override
	public int machineupdate(machineVO vo) {
		logger.debug("machineupdate() 호출");
		return mcdao.machineupdate(vo);
	}
	
	
	
	
	

}
