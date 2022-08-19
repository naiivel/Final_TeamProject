<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/header.jsp" %>
<section class="container">
	<div class="row">
		<div class="col-md-2">
			<div class="card mb-3">
				<div class="card-header">
					마이 페이지
				</div>
				<div class="list-group list-group-flush">
					<a href="${contextPath}/member/info" class="list-group-item active">예약내역 확인</a>
					<a href="${contextPath}/member/edit" class="list-group-item">정보수정/탈퇴</a>
				</div>
			</div>
		</div>
		<div class="col-md-10 mb-5">
			<h2 class="mb-4">예약 내역 확인</h2>
			<div class="mb-4">
				<div class="dropdown">
					<a class="btn btn-outline-secondary dropdown-toggle" href="#" role="button"
						data-bs-toggle="dropdown" aria-expanded="false">
						-----
					</a>
					<ul class="dropdown-menu">
						<li><a class="dropdown-item" href="#">전체</a></li>
						<li><a class="dropdown-item" href="#">진행중</a></li>
						<li><a class="dropdown-item" href="#">취소</a></li>
					</ul>
				</div>
			</div>
			<div class="table-responsive">
				<table class="table">
					<thead>
						<tr>
							<th>예약 상품</th>
							<th>진행 상황</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><a href="${contextPath}/member/info/product"><span>오사카</span><span>3박 4일</span><span>화끈한
										벚꽃 여행을 즐기자!</span></a></td>
							<td>입금완료</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</section>
<%@ include file="../common/footer.jsp" %>