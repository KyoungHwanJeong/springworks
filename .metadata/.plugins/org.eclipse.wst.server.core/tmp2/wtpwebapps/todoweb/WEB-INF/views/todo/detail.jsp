<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Todo 보기</title>
</head>
<body>
	<div class="container-fluid">
		<jsp:include page="../layout/header.jsp" />
		
		<!-- 본문 영역 -->
		<div class="row content">
			<div class="col">
				<div class="card">
					<div class="card-body">
						<div class="input-group mb-3">
							<span class="input-group-text">번호</span> 
							<input type="text" name="tno" class="form-control"
								value="${todo.tno}" readonly>
						</div>
						<div class="input-group mb-3">
							<span class="input-group-text">할 일</span> 
							<input type="text" name="title" class="form-control"
								value="${todo.title}" readonly>
						</div>
						<div class="input-group mb-3">
							<span class="input-group-text">작성자</span> 
							<input type="text" name="writer" class="form-control"
								value="${todo.writer}" readonly>
						</div>
						<div class="my-4">
							<div class="float-end">
								<button class="btn btn-primary">수정</button>
								<button class="btn btn-secondary">목록</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>	<!-- 본문 영역 닫기 -->
		<jsp:include page="../layout/footer.jsp"></jsp:include>
	</div>

<!-- 자바스크립트 영역 -->	
<script>
	//목록 버튼
	let listBtn = document.querySelector(".btn-secondary")
	let page = "${pageRequestDTO.page}"
	
	listBtn.addEventListener("click", function(e){
		location.href = "/todo/paging?page=" + page;
	});
	
	//수정 버튼
	let ModifyBtn = document.querySelector(".btn-primary")
	let tno = '${todo.tno}';
	
	ModifyBtn.addEventListener("click", function(e){
		location.href = "/todo/update?tno=" + tno;
	});
</script>
</body>
</html>