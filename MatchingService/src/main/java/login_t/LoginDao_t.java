package login_t;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;

public class LoginDao_t extends SqlSessionDaoSupport {
	public List<String> getEmail(){ return getSqlSession().selectList("regist.t_email"); }
	public String getPassword(String t_email) { return getSqlSession().selectOne("regist.t_login",t_email); }
}
