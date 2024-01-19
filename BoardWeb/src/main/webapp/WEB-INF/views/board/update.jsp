<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 수정하기</title>
</head>
<body>
	<h2>글 수정하기</h2>
	<div>
		<form action="/board/update" method="post">
		<input type="hidden" name="id" value="${board.id}">
		<table>
			<tr>
				<td>
					<input type="text" name="btitle" value="${board.btitle}" >
				</td>
			</tr>
			<tr>
				<td>
					<input type="text" name="bwriter" value="${board.bwriter}" readonly>
				</td>
			</tr>
			<tr>
				<td>
					<textarea rows="4" cols="50" 
						name="bcontent">${board.bcontent}</textarea>
				</td>
			</tr>
			<tr>
				<td>
					<p> 작성일: ${board.createdDate}</p>
				</td>
			</tr>
			<tr>
				<td>
					<button type="submit">수정하기</button>
				</td>
			</tr>
		</table>
		</form>
	</div>
</body>
</html>