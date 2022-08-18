<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/header.jsp" %>
<section class="container">
	<div class="row">
		<div class="col-md-2">
			<div class="card mb-3">
				<div class="card-header">
					관리자 페이지
				</div>
				<div class="list-group list-group-flush">
					<a href="${contextPath}/board/service" class="list-group-item active">회원/관리자 목록</a>
					<a href="${contextPath}/board/service2" class="list-group-item">매출 관리</a>
					<a href="${contextPath}/board/service3" class="list-group-item">상품 관리</a>
				</div>
			</div>
		</div>
		<div class="col-md-10 row mb-5">
			<h2 class="mb-5">- user001 회원 상세보기 </h2>
			<div class="table-responsive col-11">
				<table class="table">
					<tbody>
						<tr>
							<th>아이디</th>
							<td>id001</td>
						</tr>
						<tr>
							<th>비밀번호</th>
							<td>********</td>
						</tr>
						<tr>
							<th>이름</th>
							<td>최기근</td>
						</tr>
						<tr>
							<th>성별</th>
							<td>남자여자</td>
						</tr>
						<tr>
							<th>생년월일</th>
							<td>21931231</td>
						</tr>
						<tr>
							<th>핸드폰</th>
							<td>01012345678</td>
						</tr>
						<tr>
							<th rowspan="2">주소</th>
							<td>주소</td>
						</tr>
						<tr>
							<td>상세주소</td>
						</tr>
						<tr>
							<th>이메일</th>
							<td>ㄴ@ㅁ</td>
						</tr>
					</tbody>
				</table>
			<div class="mb-4 text-end">
				<button class="btn btn-outline-secondary">뒤로가기</button>
			</div>
			</div>
			<div class="col-11">
		</div>
	</div>
</section>
<%@ include file="../common/footer.jsp" %>