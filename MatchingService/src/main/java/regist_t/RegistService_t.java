package regist_t;

import org.springframework.validation.Errors;

import regist.MemberInfo;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RegistService_t
{
    @Autowired
    private RegistDao_t dao;
    private List<String> e;
    
    public void setDao(RegistDao_t dao) {
        this.dao = dao;
    }
    
    public int insert(MemberInfo_t m) {
        return dao.insert(m);
    }
    
    public List<String> getEmail() {
        return e = dao.getEmail();
    }
    
    public Errors checkEmail(Object target, Errors errors) {
    	MemberInfo_t memberInfo = (MemberInfo_t)target;
        e = getEmail();
        String t_email = memberInfo.getT_email();
        if (t_email.equals("")) {
            errors.rejectValue("t_email", "required");
        }
        else {
            int x = 0;
            for (int i = 0; i < e.size(); ++i) {
                if (e.get(i).equals(t_email)) {
                    x = 1;
                }
            }
            if (x == 1) {
                errors.rejectValue("t_email", "notUnique");
            }
        }
        checkPasswd(target, errors);
        return errors;
    }
    private void checkPasswd (Object target, Errors errors) {
    	MemberInfo_t memberInfo = (MemberInfo_t)target;
    	String password=memberInfo.getPassword();
        String reCheck=memberInfo.getReCheck();
        
        if(password.equals("") || reCheck.equals("")) {
        	errors.rejectValue("password", "required"); 
        	errors.rejectValue("reCheck", "required"); 
        }
        else if(!reCheck.equals(password)) { 
        	errors.rejectValue("password", "required"); 
        	errors.rejectValue("reCheck", "reCheckErr"); 
        }else if(errors.getErrorCount()>0) {
        	errors.rejectValue("password", "required"); 
        	errors.rejectValue("reCheck", "required"); 
        }
    }
    
    
}