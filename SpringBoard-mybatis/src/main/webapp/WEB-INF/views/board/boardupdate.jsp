<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 수정하기</title>
<link rel="stylesheet" href="/resources/css/style.css">
</head>
<body>
	<jsp:include page="../layout/header.jsp" />
		<div id="container">
			<section id ="update">
				<h2>글 수정하기</h2>
				<form action="/board/update" method="post">
				<input type="hidden" name="id" value="${board.id}">
				<table class="tbl_update">
					<tbody>
						<tr>
							<td>
								<input type="text" name="boardTitle"
									value="${board.boardTitle}">
							</td>
						</tr>
						<tr>
							<td>
								<input type="text" name="userId"
									value="${board.userId}" readonly>
							</td>
						</tr>
						<tr>
							<td>
								<textarea rows="5" cols="60" name="boardContent">${board.boardContent}</textarea>
							</td>
						</tr>
						<tr>
							<td>조회 수 : ${board.hit}</td>
						</tr>
						<tr>
							<td>수정일 : <fmt:formatDate value = "${board.updatedTime}" pattern="yyyy년  MM월 dd일 HH:mm:ss" /></td>
						</tr>
						<tr>
							<td>
								<button type="submit">수정하기</button>
								
							</td>
						</tr>
					</tbody>
				</table>
				</form>
				<button onclick="boardlist()">글목록</button>
			</section>
		</div>
	<jsp:include page="../layout/footer.jsp" />
	
	<script>
		const boardlist = function(){
			location.href= "/board/paging";	// 글목록으로 이동
		}
	</script>
</body>