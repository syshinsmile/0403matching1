package spring.controller;

import java.util.List;  

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import spring.model.BoardDto;
import spring.service.BoardService;

@Controller
@RequestMapping("BoardList.do")
public class BoardController{
	
	@Autowired
	BoardService boardService;
	
	//리스트 전부 보여주기!!!!!!!!!!!!
	@RequestMapping
	public String showList(Model aModel) {
		List<BoardDto> list = boardService.listAll();
		aModel.addAttribute("list",list);
		//request.setAttribute와 똑같은 표현
		return "board/list";
	}

}
