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
    
    public void setDao(final RegistDao_t dao) {
        this.dao = dao;
    }
    
    public int insert(final MemberInfo_t m) {
        return this.dao.insert(m);
    }
    
    public List<String> getEmail() {
        return this.e = (List<String>)this.dao.getEmail();
    }
    
    public Errors checkEmail(final Object target, final Errors errors) {
    	MemberInfo_t memberInfo = (MemberInfo_t)target;
        this.e = this.getEmail();
        final String t_email = memberInfo.getT_email();
        if (t_email.equals("")) {
            errors.rejectValue("t_email", "required");
        }
        else {
            int x = 0;
            for (int i = 0; i < this.e.size(); ++i) {
                if (this.e.get(i).equals(t_email)) {
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
        
        if(password.equals("")) {errors.rejectValue("password", "required"); }
        else if(reCheck.equals("")) { 
        	errors.rejectValue("password", "required"); 
        	errors.rejectValue("reCheck", "required"); 
        }
        else if(!reCheck.equals(password)) { 
        	errors.rejectValue("password", "required"); 
        	errors.rejectValue("reCheck", "reCheckErr"); 
        }else if(errors.getErrorCount()>-1) {
        	errors.rejectValue("password", "required"); 
        	errors.rejectValue("reCheck", "required"); 
        }
    }
    
    
}