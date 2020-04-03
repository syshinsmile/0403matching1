package spring.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import spring.model.BoardDto;

public interface BoardService {
	
	//게시글 목록 LIST
	public List<BoardDto> listAll();
	
	//게시글 작성 C
	public void insert(BoardDto bdto);
	
	//게시글 상세보기 R
	public BoardDto read(int code);
	
	//게시글 수정하기 U
	public void update(BoardDto bdto);
	
	//게시글 삭제하기 D
	public void delete(int code);
	
	//게시글 조회수 올리기
	public void increaseViewcnt(int code, HttpSession session);
		

}
