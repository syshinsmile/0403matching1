<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<title>회원 등록 폼</title>
<script src="https://code.jquery.com/jquery-3.1.0.min.js"></script>
<script>
	function addTools() {
		var tool = $("#s1_tag").val();
		var div = $("#divTools");		
		var total;
		
		var toolArr = div.html().split(" , ");
		div.html("");
		for(i=0;i<toolArr.length;i++){
			if(toolArr[i]==tool){toolArr[i]="";}
		}
		for(i=0;i<toolArr.length;i++){
			if(toolArr[i]!="") {div.append(toolArr[i]+" , ");}
		}
		div.append(tool);
		$("#s_tag").val(div.text());
	}
	
</script>
</head>
<body>
	<form:form modelAttribute="memberInfo" >

		<p>
			<form:label path="name">이름</form:label>
			<form:input path="name" />
			<form:errors path="name" />
		</p>
		<p>
			<form:label path="password">비밀번호</form:label>
			<form:password path="password" />
			<form:errors path="password" />
		</p>
		<p>
			<form:label path="s_email">이메일</form:label>
			<form:input path="s_email" />
			<form:errors path="s_email" />
		</p>
		<p>
			<form:label path="s_phone">전화번호</form:label>
			<form:input path="s_phone" />
			<form:errors path="s_phone" />
		</p>
		<p>
			<label for="s1_tag">관심 분야</label>
			<select id="s1_tag" onchange="addTools()">
				<option value="">---선택하세요---</option>
				<option value="JAVA">JAVA</option>
				<option value="C">C</option>
				<option value="PYTHON">PYTHON</option>
			</select>
			<form:errors path="s_tag" />
		</p>
			<form:hidden path="s_tag"/>
		<br>

		<div id=divTools></div>
		<p>
			<input type="submit" value="회원 등록">
		</p>
	</form:form>
</body>
</html>












