<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글쓰기 폼...</title>
<link rel="stylesheet" href="/resources/css/style.css">
</head>
<body>
	<div id="content">
		<h2>글쓰기</h2>
		<form action="/board/write" method="post">
			<table class=tbl_write>
				<tr>
					<td>
						<label>글제목</label>
						<input type="text" name="boardTitle" placeholder="글제목" required>
					</td>
				</tr>
				<tr>
					<td>
						<label>글쓴이</label>
						<input type="text" name="boardWriter" value="${sessionId}" required>
					</td>
				</tr>
				<tr>	
					<td>
						<label>글내용</label>
						<textarea rows="5" cols="50" name="boardContent"
							placeholder="글내용"></textarea>
					</td>
				</tr>
				<tr>
					<td>
						<input type="submit" value="등록">
						<input type="reset" value="취소">
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>