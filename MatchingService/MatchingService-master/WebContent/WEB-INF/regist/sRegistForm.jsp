<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head><title>학생 회원가입</title></head>
<body>
	<form:form modelAttribute="sRegistDto">
		<label for="name">이름</label>
		<form:input path="name"/>
		<form:errors path="name"/>
		
		<label for="password">비밀번호</label>
		<form:password path="password"/>
		<form:errors path="password"/>
		
		<label for="s_email">이메일</label>
		<form:input path="s_email"/>
		<form:errors path="s_email"/>
		
		<label for="s_phone">전화번호</label>
		<form:input path="s_phone"/>
		<form:errors path="s_phone"/>
		
		<label for="code">관심 분야</label>
		<select id="like">
			<option value="">==선택하세요==</option>
			<option value="JAVA">JAVA</option>
			<option value="C">C</option>
			<option value="PYTHON">PYTHON</option>
		</select>
		<form:hidden path="s_tag"/>
		<form:errors path="s_tag"/>
	</form:form>
</body>
</html>