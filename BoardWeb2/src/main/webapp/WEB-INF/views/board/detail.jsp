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
		<p><input type="text" name="btitle" value="${board.btitle}" readonly></p>
		<p><input type="text" name="bwriter" value="${board.bwriter}" readonly></p>
		<p><textarea rows="4" cols="50"
			name="bcontent" readonly>${board.bcontent}</textarea></p>
		<p>작성일: ${board.createdDate}</p>
		<p><a href="/board/update?id=${board.id}"><button type="button">수정하기</button></a></p>
		<p><a href="/board/delete?id=${board.id}"><button type="button">삭제하기</button></a></p>
		<p><a href="/board/list"><button type="button">목록으로</button></a></p>
	</div>
</body>
</html>