package spring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import spring.service.BoardService;

@Controller
public class WriteCont {

	@Autowired
	BoardService boardService;
	
	@RequestMapping("write.do")
	public String write() {
		return "board/write";
	}
}
