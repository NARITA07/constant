package com.jsw.service;

import java.util.ArrayList;

import com.jsw.mapper.BoardAttachMapper;
import com.jsw.mapper.BoardMapper;
import com.jsw.model.AttachFileVO;
import com.jsw.model.BoardVO;
import com.jsw.model.CriteriaVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


	@Service
	public class BoardServiceImpl implements BoardService {
		
		@Autowired
		BoardMapper bm;	// board 테이블 mapper
		@Autowired
		BoardAttachMapper bam;// attach테이블 mapper
		
		// BoardService 에서 설계되어진 write 추상메서드를 구현
		public void write(BoardVO board) {
			// BoardMapper에 있는 write메서드를 호출
			// 메서드의 매개변수를 통해 BoardVO 값을
			// BoardMapper의 write 메서드로 전달
			bm.write(board);
			
			if(board.getAttach()!=null)
			board.getAttach().forEach(attach->{
				System.out.println("service="+attach);
			// AttachFileVO의 bno에 BoardVO의 bno를 저장 
				attach.setBno(board.getBno());
				bam.insert(attach);				
			});
		}
		
	
		// BoardService에서 설계되어진 list추상메서드를 구현
		//      리턴타입                   메서드명   매개변수(매개변수의 타입 : CriteriaVO)
		//                                 int     a
		public ArrayList<BoardVO> list(CriteriaVO cri) {
			return bm.list(cri);
		}
	
		@Transactional
		public BoardVO detail(BoardVO board) {
			// 상세페이지 조회 할 때
			// 조회수 + 1 update
			bm.cntup(board);
			return bm.detail(board);
		}
		public BoardVO edit(BoardVO board) {
			bm.edit(board);
			return bm.edit(board);
		}
		// BoardService에서 설계되어진 modify 추상메서드를 구현
		public void modify(BoardVO board) {
			bm.modify(board);
		}
		// BoardService에서 설계되어진 remove 추상메서드를 구현
		public void remove(BoardVO board) {
			bm.remove(board);
		}
		public int total(CriteriaVO cri) {
			return bm.total(cri);
		}
		// 첨부파일 조회 구현
		public ArrayList<AttachFileVO> attachlist (int bno){
			return bam.attachlist(bno);
		}
}