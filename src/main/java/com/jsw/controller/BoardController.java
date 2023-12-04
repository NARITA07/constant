package com.jsw.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import com.jsw.model.AttachFileVO;
import com.jsw.model.BoardVO;
import com.jsw.model.CriteriaVO;
import com.jsw.model.PageVO;
import com.jsw.service.BoardService;
import com.jsw.service.MemberService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


@Controller
public class BoardController {
	
	// 비즈니스 모델을 컨트롤러에 연결하기
	@Autowired
	BoardService bs;
	@Autowired
	MemberService ms;

	@RequestMapping(value = "/board/boardList", method = RequestMethod.GET)
	// 게시판 목록 리스트                                기본생성자 호출
	public String list (Model model, CriteriaVO cri) {
		System.out.println(cri);
		// list.jsp 실행 할 때 select 된 결과를 가져와라
		model.addAttribute("list", bs.list(cri));
		// list.jsp 실행 할 때 PageVO에 저장되어 있는 데이터를 가져와라.
		//                           생성자 호출(매개변수가 2개인 생성자)
		// board테이블(게시판테이블)에 전체 건수(select해서)를 아래에 190대신에 대입
		int total=bs.total(cri);
		//model.addAttribute("paging", new PageVO(cri, 190));
		model.addAttribute("paging", new PageVO(cri, total));
		return "/board/boardList";
	}
	// 게시판 상세 페이지
	@RequestMapping(value = "/board/boardDetail", method = RequestMethod.GET)
	// public String detail(int bno){
	public String detail (BoardVO board, Model model) {
		System.out.println(board);
		// bs.detail(bno);
		model.addAttribute("detail", bs.detail(board));
		return "board/boardDetail";
	}
	// 게시판 수정
	
	@RequestMapping(value = "/board/boardEdit", method = RequestMethod.GET)
	public String edit (BoardVO board, Model model) {
		System.out.println(board);
		// bs.detail(bno);
		model.addAttribute("edit", bs.edit(board));
		return "board/boardEdit";
	}
	
	@RequestMapping(value = "/board/boardEdit", method = RequestMethod.POST)
	public String modify (BoardVO board, RedirectAttributes rttr) {
		System.out.println(board);
		bs.modify(board);
		rttr.addAttribute("bno", board.getBno());
		return "redirect:/board/boardDetail";
	}
	
	// 게시판 삭제
	@RequestMapping(value = "/board/boardRemove", method = RequestMethod.GET)
	public String remove (BoardVO board, RedirectAttributes rttr) {
		bs.remove(board);
		rttr.addAttribute("bno", board.getBno());
		return "redirect:/board/boardList";
	}
	
	// 게시판 글쓰기 페이지 (화면)
	@RequestMapping(value = "/board/boardWrite", method = RequestMethod.GET)
	public String write () {

		return "board/boardWrite";
	}
	// 게시판 글쓰기 페이지 (insert 이루어짐)
	@RequestMapping(value = "/board/boardWrite", method = RequestMethod.POST)
	public String writePost (BoardVO board) {
		System.out.println(board);
		// 비즈니스 영역 연결한 후 BoardService
		bs.write(board);
		return "redirect:/board/boardList";
	}
	// 해당게시물의 첨부파일의 데이터를 ajax로 전송
	/*
	@RequestMapping(value = "/attachlist", method = RequestMethod.GET)
	public ResponseEntity<ArrayList<AttachFileVO>> uploadAjaxPost(int bno) {
		
		return new ResponseEntity<>(bs.attachlist(bno),HttpStatus.OK);
	}
	*/
}
