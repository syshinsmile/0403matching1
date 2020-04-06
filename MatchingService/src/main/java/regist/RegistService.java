package regist;

import org.springframework.validation.Errors;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RegistService
{
    @Autowired
    private RegistDao dao;
    private List<String> e;
    
    public void setDao(final RegistDao dao) {
        this.dao = dao;
    }
    
    public int insert(final MemberInfo m) {
        return this.dao.insert(m);
    }
    
    public List<String> getEmail() {
        return this.e = (List<String>)this.dao.getEmail();
    }
    
    public Errors checkServ(Object target, Errors errors) {
        MemberInfo memberInfo = (MemberInfo)target;
        
        e = getEmail();
        String s_email = memberInfo.getS_email();
        if (s_email.equals("")) {
            errors.rejectValue("s_email", "required");
        }
        else {
            int x = 0;
            for (int i = 0; i < this.e.size(); ++i) {
                if (this.e.get(i).equals(s_email)) {
                    x = 1;
                }
            }
            if (x == 1) {
                errors.rejectValue("s_email", "notUnique");
            }
        }
        checkPasswd(target, errors);
      
        return errors;
    }
    private void checkPasswd (Object target, Errors errors) {
    	MemberInfo memberInfo = (MemberInfo)target;
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