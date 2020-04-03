<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.*" %>
<%@ page import="spring.model.BoardDto" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 보기</title>

<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">

//update함수 시작
$(document).ready(function(){
$("#btnUpdate").click(function(){
	//버튼 형식을 id로 지정할 경우에는 값이 넘어가지 않는다. 밑에 변수 지정하는 것은 id로 지정했을때
	//id는 jsp페이지 안에서 쓸 경우에만 붙이고 name은 값을 넘길때 사용하는 형식이다.
	/* 	var title = $("#title").val();
		var content = $("#content").val();
		var writer = $("#writer").val(); */
		
	var title=document.form1.title.value;
	var content=document.form1.content.value;
	var writer=document.form1.writer.value;

	 if(title==""){
			alert("제목을 입력하세요");
			document.form1.title.focus();
			return;
	}if(content==""){
			alert("내용을 입력하세요");
			document.form1.content.focus();
			return;
	}if(writer==""){
			alert("이름을 입력하세요");
			document.form1.writer.focus();
			return;
	}
	 	document.form1.action="update.do";
	 	document.form1.submit();
});
}); 


//delete.do 실행
$(document).ready(function(){
$("#btnDelete").click(function(){
if(confirm("삭제하시겠습니까?")){
document.form1.action="delete.do";
document.form1.submit();
}
});
});


</script>
</head>
<body>
<h2>게시글보기</h2>
<form name="form1" method="post">
<div> 조회수 : ${BoardDto.viewcnt} </div>

<div>작성자이름 : <input name="writer" value= "${BoardDto.writer}"></div>

<div>제목 : <input name="title" size="80" value="${BoardDto.title}"></div>

<div>내용 : <textarea name="content" rows="4" cols="80">${BoardDto.content}</textarea></div>

<div style="width:650px; text-align:center;">
<input type="hidden" name="code" value="${BoardDto.code}">


<input type="button" id="btnUpdate" value="수정완료"/>
<input type="button" id="btnDelete" value="삭제"/>

<!-- <button type="submit" id="btnUpdate">수정완료</button>
<button type="submit" id="btnDelete">삭제</button>
 -->

</div>

</form>
</body>
</html>