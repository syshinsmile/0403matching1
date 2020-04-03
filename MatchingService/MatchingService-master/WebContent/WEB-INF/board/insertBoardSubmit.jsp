<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<form id="writeForm" name="writeForm" method="post">
		<div>
			<h2>글쓰기</h2>
			<div>
				<table>
					<tr>
						<th>제목</th>
						<td><input style="width: 500px" type="text" id="title"
							name="title" /></td>
					</tr>
					<tr>
						<th>내용</th>
						<td><textarea style="width: 500px" rows="10" cols="10"
								id="content" name="content"></textarea></td>
					</tr>
					<tr>
						<th>작성자</th>
						<td><input style="width: 500px" type="text" id="writer"
							name="writer" /></td>
					</tr>
				</table>
				<div>
					<a href='#' onClick='fn_addtoBoard()'>글 등록</a> <a href='#'
						onClick='fn_cancel()'>목록</a>
				</div>
			</div>
		</div>
	</form>
</body>
</html>