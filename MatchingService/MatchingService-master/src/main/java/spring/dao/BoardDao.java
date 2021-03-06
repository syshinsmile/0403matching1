package spring.dao;

import java.util.List;

import spring.model.BoardDto;

public interface BoardDao {
	
	//목록보여주기
	public List<BoardDto> listAll();

	//게시글 작성하기 C
	public void insert(BoardDto bdto);

	//게시글 상세보기 R
	public BoardDto read(int code);

	//게시글 수정하기 U
	public void update(BoardDto bdto);
	
	//게시글 삭제하기 D
	public void delete(int code);
	
	//게시글 조회수 올리기
	public void increaseViewcnt(int code);

	


}
