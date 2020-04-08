package spring.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.JsonObject;

import spring.model.RankDto;
import spring.model.SubjectDto;
import spring.service.RankService;

@Controller

public class RankController {
	
	@Autowired
	RankService rank;
	
//	@ModelAttribute("list")
//	public LoginCommand formBacking() {
//		return new LoginCommand();
//	}
	

//	@ModelAttribute("listlist")
//	public RankDto set() {
//		return new RankDto();
//	}
	
	@ModelAttribute("list")
	public List<RankDto> Data() {
		List<RankDto> list = rank.allselect();
//		System.out.println(list);
		return list;
	}
	
	@RequestMapping(value = "/graph1.do")
	public String form() {
		return "graph";
	}
	
//	@RequestMapping(value = "/graph2.do")
//	@ResponseBody
//	public void form1() {
//		System.out.println("aa");
//	}
//	

	
	//dist에서 오니까
	@RequestMapping(value="/dist/graph2.do", produces = "text/plain;charset=UTF-8")
	@ResponseBody
	public String one() throws Exception {
		List<RankDto> list = rank.allselect();
		Gson json = new Gson(); 		
		return json.toJson(list);
	}
//	
//
//
//	public void setRank(RankService rank) {
//		this.rank = rank;
//	}
//  
	
	
	

//	@RequestMapping(method = RequestMethod.POST)
//	public String submit(@ModelAttribute("listlist") RankDto rankdto ) {
//		
//	}
	

//	@RequestMapping("/graph/*") //공통적인 맵핑 url
	
	//일반적인 controller어노테이션을 jsp <=> controller을 연동할때 사용하지만
	//RestController은 그 데이터 자체를 받아서 제이슨 형식으로 바꿔서 출력하고 싶을때 사용
	//(지금은 json 형식으로 차트를 그릴것이기 때문에 Rest를 붙여서 컨트롤러를 선언한 것이다)
	






	
	
	
	
//	@RequestMapping(method = RequestMethod.GET)
//	public ModelAndView form() {
//		ModelAndView mav = new ModelAndView();
//		mav.setViewName("show");
////		return "show";
//		return mav;
//	}
	
	
	
//	@RequestMapping("/rank")
//	public ModelAndView handleRequest() {
//		List<RankDto> list = rank.allselect();
//		return new ModelAndView("dept", "dept", list);
//	}

	
	

}
