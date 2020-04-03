<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head><title>로그인 창</title></head>
<body>
	<form:form commandName="login">
	<form:errors />
	<p> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 학생 로그인  </p>
	<p>
		<label for="s_email">&nbsp&nbsp 이메일 &nbsp&nbsp&nbsp</label>
		<form:input path="s_email" />
		<form:errors path="s_email" />
	</p>
	<p>
		<label for="password">&nbsp 비밀번호 &nbsp</label>
		<form:password id="password" path="password" />
		<form:errors path="password" />
	</p>
	<p>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp &nbsp&nbsp &nbsp&nbsp 
		<input type="submit" value="로그인">
	</p>
	</form:form>	
</body>
</html>