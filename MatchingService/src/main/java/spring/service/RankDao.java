package spring.service;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import spring.model.RankDto;

public class RankDao extends SqlSessionDaoSupport{
	
	
	public List<RankDto> allselect(){
		return getSqlSession().selectList("rank.all");
	}

	public List<RankDto> oneselect(String month){
		return getSqlSession().selectList("rank.one",month);
	}
	
}
