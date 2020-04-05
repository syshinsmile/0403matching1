package login_t;

import javax.servlet.http.HttpServletRequest;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("LoginTeacher.do")
public class LoginController_t {
	
	@Autowired
	private LoginCommandValidator_t vali;
	public void setVali(LoginCommandValidator_t vali) { this.vali = vali; }

	@ModelAttribute("login")
	public LoginCommand_t formBacking() {return new LoginCommand_t();}
	
	@RequestMapping(method=RequestMethod.GET)
	public String form() {return "login_t/loginForm_t";}
	
	@RequestMapping(method=RequestMethod.POST)
	public String submit(@ModelAttribute("login") LoginCommand_t loginCommand,BindingResult result, HttpServletRequest req){
		vali.validate(loginCommand,result);
		if(result.hasErrors()) {
			return "login_t/loginForm_t";
		}
		String e = loginCommand.getT_email();
		req.setAttribute("nowLogin", e);
		return "login_t/loginSuccess_t";
	}
}
