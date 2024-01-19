<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 상세보기</title>
</head>
<body>
	<h2>글 상세보기</h2>
	<div>
		<table>
			<tr>
				<td>
					<input type="text" name="btitle" value="${board.btitle}" readonly>
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
						name="bcontent" readonly>${board.bcontent}</textarea>
				</td>
			</tr>
			<tr>
				<td>
					<p> 작성일: ${board.createdDate}</p>
				</td>
			</tr>
			<tr>
				<td>
					<a href="/board/update?id=${board.id}"><button type="button">수정하기</button></a>
					<a href="/board/delete?id=${board.id}"><button type="button">삭제하기</button></a>
					<a href="/board/list"><button type="button">목록</button></a>
				</td>
			</tr>
		</table>
	</div>
</body>
</html>