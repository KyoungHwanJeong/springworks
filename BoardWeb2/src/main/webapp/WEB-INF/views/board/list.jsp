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
<body>
	<h2>글목록</h2>
	<div>
		<table>
			<thead>
				<tr>
					<th>글번호</th><th>제목</th><th>작성자</th><th>작성일</th>				
				</tr>			
			</thead>
			<tbody>
				<c:forEach var="board" items="${boardList}">
					<tr>
						<td>${board.id}</td>				
						<td><a href="/board?id=${board.id}">${board.btitle}</a></td>				
						<td>${board.bwriter}</td>				
						<td><fmt:formatDate value="${board.createdDate}"
							pattern= "yyyy-MM-dd HH:mm:ss" /></td>				
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>