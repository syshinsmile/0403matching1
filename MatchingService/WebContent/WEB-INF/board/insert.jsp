<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>게시글보기</title>
</head>
<body>

작성자 : ${BoardDto.writer} <br>
제목 : ${BoardDto.writer} <br>
내용 : ${BoardDto.content} <br>


<button onclick="location.href='list.do'">리스트가기</button>
<button onclick="loction.href='update.do'">수정하기</button>
<button onclick="location.href='delete.do'">삭제하기</button>

</body>
</html>