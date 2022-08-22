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
					<a href="myPage" class="list-group-item active">예약내역 확인</a>
					<a href="edit_check" class="list-group-item">정보수정/탈퇴</a>
				</div>
			</div>
		</div>
		<div class="col-md-10 mb-5">
			<h2 class="mb-4">예약 내역 확인</h2>
			<div class="mb-4">
				<div class="dropdown">
				</div>
			</div>
			<div class="table-responsive">
				<table class="table">
					<thead>
						<tr>
							<th>예약 상품</th>
							<th></th>
						</tr>
					</thead>
					<tbody>
					<c:choose>
					<c:when test="${!empty sessionScope.product}">
						<tr>
							<td><span>${product.product_name}</span><span> </span><span>/ ${product.product_plan - 1}박 ${product.product_plan}일</span></td>
							<td><a href="reservDetail">[예약상세내역]</a></td>
						</tr>
					</c:when>
					<c:otherwise>
						<tr>
							<td><span>예약하신 상품이 없습니다.</span></td>
						</tr>
					</c:otherwise>
					</c:choose>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</section>
<script>
	var msg = '${message}';
	if (msg != '') {
		alert(msg);
	}
</script>

<%@ include file="../common/footer.jsp" %>