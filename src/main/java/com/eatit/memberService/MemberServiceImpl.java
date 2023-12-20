package com.eatit.memberService;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.eatit.memberDomain.MemberVO;
import com.eatit.memberPersistence.MemberDAO;

@Service
public class MemberServiceImpl implements MemberService {
	
	private static final Logger logger = LoggerFactory.getLogger(MemberServiceImpl.class);
	
	@Inject
	private MemberDAO mdao;

	@Override
	public MemberVO memberLogin(MemberVO vo) {
		logger.debug("Service - 로그인처리");
		return mdao.LoginMember(vo);
	}
	
	@Override
	public void memberJoin(MemberVO vo) {
		logger.debug("DAO 회원가입 메서드 호출");
		mdao.insertMember(vo);
		
	}
	
	
}
