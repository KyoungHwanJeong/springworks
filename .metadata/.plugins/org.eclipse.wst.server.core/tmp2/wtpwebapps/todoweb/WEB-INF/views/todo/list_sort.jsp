<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Todo 정렬하기</title>
</head>
<body>
	<div class="container-fluid">
		<jsp:include page="../layout/header.jsp" />
		<!-- 검색 영역 -->
		<div class="row content">
			<div class="col">
				<div class="card">
					<div class="card-body">
						<h5 class="card-title">Search</h5>
						<form action="/todo/paging" method="get">
							<div class="mb-3">
								<input type="checkbox" name="types" value="t">제목
								<input type="checkbox" name="types" value="w">작성자
								<input type="text" name="keyword" class="form-control">
							</div>
							<div class="mb-3">
								<div class="float-end">
									<button type="submit" class="btn btn-primary">Search</button>
									<button type="reset" class="btn btn-info">Clear</button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		
		<!-- 본문 영역 -->
		<div class="row content">
			<div class="col">
				<div class="card">
					<div class="card-body">
						<h5 class="card-title">Todo 정렬하기</h5>
							<form action="/todo/list_sort" method="get" class="list_sort">
								<div>
								<label>정렬: </label>
								<div>
								<input type="checkbox" name="sorts" value="recent">최신순
								<input type="checkbox" name="sorts" value="popular">제목순
								
									<button type="submit" class="btn btn-primary">Sort</button>
								</div>
								
								<select type="name" name="sort" class="sort">
									<option type="name" value="recent">최신순</option>
									<option type="name" value="popular">제목순</option>
								</select>
								<input type="submit" value="정렬하기">
								</div>
							</form>
						<table class="table">
							<thead>
								<tr>
									<th>번호</th><th>제목</th><th>작성자</th><th>작성일</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${responseDTO.dtoList}" var="todo">
								<tr>
									<td>${todo.tno}</td>
									<td><a href="/todo?tno=${todo.tno}&page=${responseDTO.page}">${todo.title}</a></td>
									<td>${todo.writer}</td>
									<td><fmt:formatDate value="${todo.createdDate}" pattern="yyyy년  MM월 dd일 HH:mm:ss" /></td>
								</tr>
								</c:forEach>
							</tbody>
						
						</table>
						
						<!-- 페이징 처리 -->
						<div class ="d-flex justify-content-center">
							<ul class="pagination flex-wrap">
								<!-- 이전 페이지 -->
								<c:if test="${responseDTO.prev}">
									<li class="page-item">
										<a class="page-link" href="/todo/paging?page=${responseDTO.startPage-1}">Previous</a>
									</li>
								</c:if>
								
								<!-- 페이지 번호 -->
								<c:forEach var="num" begin="${responseDTO.startPage}" end="${responseDTO.endPage}">
									<li class="page-item ${responseDTO.page eq num ? 'active' : '' }" >
										<a href="/todo/paging?page=${num}" class="page-link">${num}</a>
									</li>
								</c:forEach>
								
								<!-- 다음 페이지 -->
								<c:if test="${responseDTO.next}">
									<li class="page-item">
										<a class="page-link" href="/todo/paging?page=${responseDTO.endPage+1}">Next</a>
									</li>
								</c:if>
							</ul>
						</div><!-- 페이징 처리 -->
					</div>
				</div>
			</div>
		</div>	<!-- 본문 영역 닫기 -->
		<jsp:include page="../layout/footer.jsp"></jsp:include>
	</div>
</body>
</html>