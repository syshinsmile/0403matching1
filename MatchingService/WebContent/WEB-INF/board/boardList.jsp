<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>게시판 리스트</title>
</head>
<body>
<a href="/board/write.do">write</a>

<c:forEach items="${listAll} var="BoardDto">
<tr>
<td>${BoardDto.code}</td>
<td>${BoardDto.title}</td>
<td>${BoardDto.content}</td>
<td>${BoardDto.writer}</td>
<td>${BoardDto.reg_datetime}</td>

</tr>
</c:forEach>
</body>
</html>