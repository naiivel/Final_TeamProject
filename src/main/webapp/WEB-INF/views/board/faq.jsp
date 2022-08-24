<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../common/header.jsp" %>
<style>	

</style>

<section class="container">
${list }
${pm }
	<div class="row">
		<div class="col-md-2">
			<div class="card mb-3">
				<div class="card-header">
					고객센터
				</div>
				<div class="list-group list-group-flush">
					<a href="${contextPath}/board/qna" class="list-group-item" id="qnaBoard">질문과 답변</a>
					<a href="${contextPath}/board/faq/${pm.makeQuery(1)}" class="list-group-item active" id="faqBoard">자주 묻는 질문</a>
					<a href="${contextPath}/board/notice" class="list-group-item" id="noticeBoard">공지사항</a>
				</div>
			</div>
		</div>
		<div class="col-md-10 mb-5">
			<h2 class="mb-4">자주 묻는 질문</h2>
			<div class="row mb-4">
				<div class="col-8 offset-2">
					<form action="">
						<div class="input-group mb-3">
							<span class="input-group-text"><svg xmlns="http://www.w3.org/2000/svg" width="16"
									height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
									<path
										d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z" />
								</svg>
							</span>
							<input type="text" name="keyword" id="keyword" class="form-control" aria-label="Amount (to the nearest dollar)">
							<button class="btn btn-dark" type="button" id="button-addon2">검색</button> 
						</div>
					</form>
				</div>
			</div>
			<div class="row mb-4">
				<div class="row col-10 offset-1 align-items-center">
					<div class="btn col-sm" id="trip">해외여행</div>
					<div class="btn col-sm" id="airline">항공</div>
					<div class="btn col-sm" id="reservation">예약/결제</div>
					<div class="btn col-sm" id="passport">여권/비자/환전</div>
					<div class="btn col-sm" id="other">홈페이지/기타</div>
				</div>
			</div>
			<c:set var="number" value="0"/>
			<c:forEach var="faq" items="${list}"  >
			<c:set var="number" value="${number+=1}"/>
			<div class="accordion mb-3" id="accordionPanelsStayOpenExample">
				<div class="accordion-item">
					
					<h2 class="accordion-header" id="panelsStayOpen-heading-${number}">
						<button class="accordion-button" type="button" data-bs-toggle="collapse"
							data-bs-target="#panelsStayOpen-collapse-${number}" 
							aria-controls="panelsStayOpen-collapse-${number}">
							${faq.faq_title }
						</button>
					</h2>
					<div id="panelsStayOpen-collapse-${number}" class="accordion-collapse collapse"
						aria-labelledby="panelsStayOpen-heading-${number}">
						<div class="accordion-body">
							${faq.faq_content }
						</div>
					</div>
					
				</div>
				
			</div>
		
			</c:forEach>
			<%-- <nav aria-label="Page navigation example">
					<ul class="pagination">
						<c:if test="${pm.first}">
							<li class="page-item">
								<a class="page-link" href="${contextPath}/board/faq/${pm.makeQuery(1)}" aria-label="Previous">
        							<span aria-hidden="true">&laquo;&laquo;</span>
      							</a>
    						</li>
								<li><a href="${contextPath}/board/faq/${pm.makeQuery(1)}">&laquo;&laquo;</a></li>
							</c:if>
							<c:if test="${pm.prev}">
								<li><a href="${contextPath}/board/faq/${pm.makeQuery(pm.startPage-1)}">&laquo;</a></li>
							</c:if>
							<c:forEach var="i" begin="${pm.startPage}" end="${pm.endPage}">
								<li ${pm.cri.page ==i? 'class=active':''}><a href="${contextPath}/board/faq/${pm.makeQuery(i)}">[${i}]</a></li>
							</c:forEach>
							<c:if test="${pm.next}">
								<li><a href="${contextPath}/board/faq/${pm.makeQuery(pm.endPage+1)}">&raquo;</a></li>
							</c:if>
							<c:if test="${pm.last}">
								<li><a href="${contextPath}/board/faq/${pm.makeQuery(pm.maxPage)}">&raquo;&raquo;</a></li>
							</c:if>
					</ul>
			</nav> --%>
			<nav aria-label="Page navigation mb-3">
				<ul class="pagination justify-content-center">
					<c:if test="${pm.first}">
						<li class="page-item">
							<a class="page-link" href="${contextPath}/board/faq/${pm.makeQuery(1)}" aria-label="Previous">
       							<span aria-hidden="true">&laquo;</span></a>
   						</li>
    				</c:if>		
    				<c:if test="${pm.prev}">
						<li class="page-item">
							<a class="page-link" href="${contextPath}/board/faq/${pm.makeQuery(pm.startPage-1)}">&lt;</a>
						</li>
					</c:if>
					<c:forEach var="i" begin="${pm.startPage}" end="${pm.endPage}">
						<li class="page-item" ${pm.cri.page ==i? 'class=active':''}>
							<a class="page-link" href="${contextPath}/board/faq/${pm.makeQuery(i)}">${i}</a>
						</li>
					</c:forEach>
					<c:if test="${pm.next}">
						<li class="page-item">
							<a class="page-link" href="${contextPath}/board/faq/${pm.makeQuery(pm.endPage+1)}">&rt;</a>
						</li>
					</c:if>
					<c:if test="${pm.last}">
						<li class="page-item">
							<a class="page-link" href="${contextPath}/board/faq/${pm.maxPage}" aria-label="Previous">
       							<span aria-hidden="true">&raquo;</span></a>
   						</li>
    				</c:if>	
				</ul>
			</nav> 
			<c:if test="${userInfo.member_master eq 'Y'}">
			<div class="text-end mb-3">
				<button class="btn btn-outline-secondary" id="addBtn">추가하기</button>
			</div>
			</c:if>
		</div>
	</div>
</section>
<script>
	

	$("#addBtn").click(function () {
		location.href = "${contextPath}/board/service2/new";
	});
	
	$("#qnaBoard").click(function(){
		location.href="board/qna";
	});
	
	$("#faqBoard").click(function(){
		location.href="board/faq";
	});
	
	$("#noticeBoard").click(function(){
		location.href="board/notice";
	});
	
	$("#trip").on("click",function(){
		$("#airline").css("border", "");
		$("#reservation").css("border", "");
		$("#passport").css("border", "");
		$("#other").css("border", "");
		$(this).css("border", "solid darkblue 1px");
		location.href="board/faq/trip";
	});
	
	
	$("#airline").on("click",function(){
		$("#trip").css("border", "");
		$("#reservation").css("border", "");
		$("#passport").css("border", "");
		$("#other").css("border", "");
		$(this).css("border", "solid darkblue 1px");
		location.href="board/faq/airline";
	});
	
	$("#reservation").on("click",function(){
		$("#airline").css("border", "");
		$("#trip").css("border", "");
		$("#passport").css("border", "");
		$("#other").css("border", "");
		$(this).css("border", "solid darkblue 1px");
		location.href="board/faq/reservation";
	});
	
	$("#passport").on("click",function(){
		$("#airline").css("border", "");
		$("#reservation").css("border", "");
		$("#trip").css("border", "");
		$("#other").css("border", "");
		$(this).css("border", "solid darkblue 1px");
		location.href="board/faq/passport";
	});
	
	$("#other").on("click",function(){
		$("#airline").css("border", "");
		$("#reservation").css("border", "");
		$("#passport").css("border", "");
		$("#trip").css("border", "");
		$(this).css("border", "solid darkblue 1px");
		location.href="board/faq/other";
	});
	
	$("#faqBoard").on("click", function(){
		$.ajax({
			url:"faqList", dataType:"json", type:"POST",
			success:function(data){
				console.log(data);
			}, error:function(result){
				console.log(result);
			}
		});
	});
	
	var category= $(".form-control").val();
	var text= $(".form-control").text();
	
	$("#button-addon2").click(function(){
		
		var keyword=$("#keyword").val();
		console.log("kw: "+keyword);
		location.href="${contextPath}/board/faq";
	});
</script>
<%@ include file="../common/footer.jsp" %>