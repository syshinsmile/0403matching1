<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>게시글쓰기</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
	$("#btnSave").click(function(){
		var title=document.form1.title.value;
		var content=document.form1.content.value;
		var writer=document.form1.writer.value;
		/* var title = $("#title").val(); =>name이 아닌 id값일때
		var content = $("#content").val();
		var writer = $("#writer").val(); */
		
		if(title==""){
			alert("제목을 입력하세요");

			document.form1.title.focus();
			return;

			
			return document.form1.title.focus();

		}if(content==""){
			alert("내용을 입력하세요");
			document.form1.content.focus();
			return;
		}if(writer==""){
			alert("이름을 입력하세요");
			document.form1.writer.focus();
			return;
		}
		//폼에 입력한 데이터를 서버로 전송한다
		document.form1.submit(); 
		});
});
</script>
</head>


<body>
<%-- <%@ include file="" %> --%>
<h2>게시글 작성</h2>

<form name="form1" method="post" action="insert.do">
<div>
작성자이름
<input name="writer" placeholder="이름을 입력해주세요">
</div>
<div>
제목
<input name="title" size="80" placeholder="제목을 입력해주세요">
</div>
<div>
내용
<textarea name="content" rows="4" cols="80" placeholder="내용을 입력해주세요"></textarea>
</div>

<div style="width:650px; text-align:center;">
<button type="submit" id="btnSave">확인</button>
<button type="submit" id="btnCancle">취소</button>
</div>
</form>




<!-- Bootstrap core JS-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
<!-- Third party plugin JS-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/jquery.magnific-popup.min.js"></script>
        
 <!-- Core theme JS-->
<script src="js/scripts.js"></script> 
        
<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v5.12.1/js/all.js" crossorigin="anonymous"></script>
<!-- Google fonts-->
<link href="https://fonts.googleapis.com/css?family=Merriweather+Sans:400,700" rel="stylesheet" />
<link href="https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic" rel="stylesheet" type="text/css" />
<link href="https://fonts.googleapis.com/css?family=Gugi&display=swap&subset=korean" rel="stylesheet">
<!-- Third party plugin CSS-->
<link href="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/magnific-popup.min.css" rel="stylesheet" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="css/styles.css" rel="stylesheet" />

<!-- 기본 부트스트랩 get started -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>       


</body>
</html>