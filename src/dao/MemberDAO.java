package dao;

import java.util.ArrayList;

import dto.MemberVO;

public class MemberDAO{
	
	private ArrayList<MemberVO> memberList = new ArrayList<MemberVO>();
	private static MemberDAO instance = new MemberDAO();
	public static MemberDAO getInstance() {
		
		return instance;
	}
	
	public ArrayList<MemberVO> getMemberList() {
		
		return memberList;
		
	}

	public void insertMember(MemberVO member) {
		memberList.add(member);
	}
	
	public MemberDAO() {
		MemberVO vo1 = new MemberVO();
		vo1.setMem_id("hello");
		vo1.setMem_name("홍길동");
		vo1.setMem_pw("1234");
		vo1.setMem_sex("남");
		vo1.setFilename("hello");
		
		memberList.add(vo1);
	}

}
