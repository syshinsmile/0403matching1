package spring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import spring.model.BoardDto;
import spring.service.BoardService;

@Component
public class UpdateCont {
	@Autowired
	BoardService boardService;
	
	//게시글 수정하기
		@PostMapping("update.do")
		public String update(@ModelAttribute("BoardDto")BoardDto bdto) {
			boardService.update(bdto);
			return "redirect:list.do";
		}
		
}
