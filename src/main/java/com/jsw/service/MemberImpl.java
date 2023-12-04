package com.jsw.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jsw.mapper.MemberMapper;
import com.jsw.model.MemberDTO;

@Service
public class MemberImpl implements MemberService{
	// 회원가입
	@Autowired
	MemberMapper mm; // MemberMapper mm = new MemberMapper;
	
	public void write(MemberDTO member) {
		// 회원가입구현
		mm.write(member);
	}
	// 회원정보수정
	public void modify(MemberDTO member) {
		// 회원정보수정
		mm.modify(member);
	}
	public void remove(MemberDTO member) {
		mm.remove(member);
	}
	// 회원목록리스트(관리자)
	public ArrayList<MemberDTO> list() {
		// 회원목록리스트
		return mm.list();
	}
	// 회원상세내용(관리자)
	public MemberDTO detail(MemberDTO member) {
		// 회원상세내용
		return mm.detail(member);
	}
	// 로그인
	public MemberDTO login(MemberDTO member) {
		return mm.login(member);
	}
}
