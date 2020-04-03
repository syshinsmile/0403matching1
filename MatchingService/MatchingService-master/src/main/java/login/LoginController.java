package login;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/login/login")
public class LoginController {
	
	@Autowired
	private LoginCommandValidator vali;
	public void setVali(LoginCommandValidator vali) { this.vali = vali; }

	@ModelAttribute("login")
	public LoginCommand formBacking() {return new LoginCommand();}
	
	@RequestMapping(method=RequestMethod.GET)
	public String form() {return "login/loginForm";}
	
	@RequestMapping(method=RequestMethod.POST)
	public String submit(@ModelAttribute("login") LoginCommand loginCommand,BindingResult result,HttpSession session,HttpServletResponse res) 
		throws IOException {
		vali.validate(loginCommand,result);
		if(result.hasErrors()) {
			return "login/loginForm";
		}
		String e = loginCommand.getS_email();
		
		session.setAttribute("nowLogin",e );
		
		return "login/loginSuccess";
		/*
		 * Cookie c = createCookie("nowLogin",e,req.getContextPath()); res.addCookie(c);
		 */
	}
	/*
	 * private Cookie createCookie(String name, String value, String path) throws
	 * IOException { Cookie cookie = new Cookie(name, URLEncoder.encode(value,
	 * "utf-8")); cookie.setPath(path); return cookie; }
	 */
}
