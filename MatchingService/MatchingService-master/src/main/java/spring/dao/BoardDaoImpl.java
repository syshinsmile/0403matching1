package spring.dao;

import java.util.List; 

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.apache.ibatis.session.SqlSession;
import spring.model.BoardDto;

@Component //이렇게 해야 autowired에 의한 연결에 적용된다.
public class BoardDaoImpl implements BoardDao{
	
	@Autowired
	SqlSession SqlSession;

	//게시글 목록
	@Override
	public List<BoardDto> listAll() {
		return SqlSession.selectList("board.listAll");
	}

	//게시글 작성 C
	@Override
	public void insert(BoardDto bdto) {
		/* BoardM */
		SqlSession.insert("board.insert",bdto);
	}

	//게시글 상세보기 R
	@Override
	public BoardDto read(int code) {
		// TODO Auto-generated method stub
		return SqlSession.selectOne("board.view",code);
	}
	
	//게시글 수정하기 U
	@Override
	public void update(BoardDto bdto) {
		SqlSession.update("board.updateBoard",bdto);	
	}


	//게시글 삭제하기 D
	@Override
	public void delete(int code) {
		SqlSession.delete("board.deleteBoard", code);
	}

	//게시글 조회수올리기 
	@Override
	public void increaseViewcnt(int code) {
		SqlSession.update("board.increaseViewcnt", code);	
	}
	
	
	


}
