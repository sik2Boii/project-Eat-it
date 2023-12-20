package com.eatit.memberService;

import com.eatit.memberDomain.MemberVO;

public interface MemberService {
	//로그인 처리 동작
	public MemberVO memberLogin(MemberVO vo);
	
	// 회원 등록 메서드
	public void memberJoin(MemberVO vo);
}
