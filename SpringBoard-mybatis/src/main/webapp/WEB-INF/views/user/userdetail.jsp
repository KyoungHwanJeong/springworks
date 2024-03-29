<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보</title>
</head>
<link rel="stylesheet" href="/resources/css/style.css">
<body>
	<jsp:include page="../layout/header.jsp" />

	<div id="container">
		<section id="detail">
		<h2>회원 정보</h2>
			<table class="tbl_detail">
				<tr>
					<td>
						<label>아이디</label>
						<input type="text" name="userId" value="${user.userId}" readonly>
					</td>
				</tr>
				<tr>
					<td>
						<label>비밀번호</label>
						<input type="text" name="userPasswd" value="${user.userPasswd}" readonly>
					</td>
				</tr>
				<tr>
					<td>
						<label>이름</label>
						<input type="text" name="userName" value="${user.userName}" readonly>
					</td>
				</tr>
				<tr>
					<td>
						<label>나이</label>
						<input type="text" name="userAge" value="${user.userAge}" readonly>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<button onclick="list()">목록</button>
					</td>
				</tr>
			</table>
		</section>
	</div>
	<jsp:include page="../layout/footer.jsp"></jsp:include>
	
	<script>
		const list = function(){
			location.href= "/user/userlist";	// 목록으로 이동
		}
	</script>
</body>