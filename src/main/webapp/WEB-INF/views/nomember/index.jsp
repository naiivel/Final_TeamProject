<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/header.jsp" %>
<section class="container">
	<div class="row mb-5">
		<div class="col-8 offset-2">
			<h2 class="mb-5 text-center">비회원 예약확인</h2>
			<form id="noForm" action="norev" method="post" class="ms-5">
				<div class="text-center row">
					<div class="col-md-8">
						<input type="text" name="rev_name" id="" class="mb-3 form-control form-control-lg" placeholder="이름">
						<input type="text" name="rev_email" id="" class="mb-3 form-control form-control-lg" placeholder="이메일">
						<input type="text" name="rev_phone" id="" class="form-control form-control-lg" placeholder="핸드폰">
					</div>
					<div class="col-md-3 row m-3">
						<button id="detailBtn" class="btn btn-lg btn-primary" type="button">확인</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</section>
<script>
	
	$("#detailBtn").click(function(){
		$("#noForm").submit();
	});

	var msg = '${message}';
	if (msg != '') {
		alert(msg);
	}
</script>
<%@ include file="../common/footer.jsp" %>