package spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import spring.model.RankDto;

@Service
public class RankService {

	
	@Autowired
	RankDao dao;

	public void setDao(RankDao dao) {
		this.dao = dao;
	}
	
	public List<RankDto> allselect(){
		return dao.allselect();
	}
	
	public List<RankDto> oneselect(String month){
		return dao.oneselect(month);
	}
	
	




	
	
	
}
