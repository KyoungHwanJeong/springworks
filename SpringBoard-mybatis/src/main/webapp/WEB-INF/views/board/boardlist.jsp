<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글목록</title>
</head>
<link rel="stylesheet" href="/resources/css/style.css">
<body>
	<jsp:include page="../layout/header.jsp" />
		<div id="container">
			<section id = "boardlist">
				<h2>글목록</h2>	
				<table class="tbl_list">
					<thead>
						<tr>
							<th>글번호</th>
							<th>글제목</th>
							<th>글쓴이</th>
							<th>작성일(수정일)</th>
							<th>조회 수</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${boardList}" var="board">
							<tr>
								<td>${board.id}</td>
								<td><a href="/board?id=${board.id}">${board.boardTitle}</a></td>
								<td>${board.userId}</td>
								<td>
									<!-- 수정일이 있는 경우 수정일 표시, 없는 경우 작성일 표시 -->
									<c:choose>
										<c:when test="${not empty board.updatedTime}">
											(수정일)<fmt:formatDate value="${board.updatedTime}" pattern="yyyy년  MM월 dd일 HH:mm:ss" />
										</c:when>
										<c:otherwise>
											<fmt:formatDate value="${board.createdTime}" pattern="yyyy년  MM월 dd일 HH:mm:ss" />
										</c:otherwise>
									</c:choose>
								</td>
								<td>${board.hit}</td>
							</tr>
						</c:forEach>					
					</tbody>
				</table>
				
				<!-- 글쓰기 버튼 -->
				<div>
					<a href="/board/write"><button>글쓰기</button></a>
				</div>
			</section>
		</div>
	<jsp:include page="../layout/footer.jsp" />
	
</body>