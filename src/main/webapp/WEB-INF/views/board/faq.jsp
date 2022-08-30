<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../common/header.jsp"%>
<style>
txt-hlight {
	background: yellow;
}
</style>


<section class="container">
	<div class="row">
		<div class="col-md-2">
			<div class="card mb-3">
				<div class="card-header">고객센터</div>
				<div class="list-group list-group-flush">
					<a href="${contextPath}/board/faq" class="list-group-item active"
						id="faqBoard">자주 묻는 질문</a> <a href="${contextPath}/board/qna"
						class="list-group-item" id="qnaBoard">질문과 답변</a> <a
						href="${contextPath}/board/notice" class="list-group-item"
						id="noticeBoard">공지사항</a>
				</div>
			</div>
		</div>
		<div class="col-md-10 mb-5">
			<h2 class="mb-4">자주 묻는 질문</h2>
			<div class="row mb-4">
				<div class="col-8 offset-2">
					<form action="">
						<div class="input-group mb-3">
							<span class="input-group-text"><svg
									xmlns="http://www.w3.org/2000/svg" width="16" height="16"
									fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
									<path
										d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z" />
								</svg> </span> <input type="text" name="keyword" id="keyword"
								class="form-control" aria-label="Amount (to the nearest dollar)"
								placeholder="검색어를 입력하세요">
							<button class="btn btn-dark" type="button" id="button-addon2">검색</button>
						</div>
					</form>
				</div>
			</div>
			<div class="row mb-4">
				<div class="btn-group" role="group">
					<button value="전체" type="button" class="btn btn-outline-dark"
						id="all">전체보기</button>
					<button value="해외여행" type="button" class="btn btn-outline-dark"
						id="trip">해외여행</button>
					<button value="항공" type="button" class="btn btn-outline-dark"
						id="airline">항공</button>
					<button value="예약/결제" type="button" class="btn btn-outline-dark"
						id="reservation">예약/결제</button>
					<button value="여권/비자/환전" type="button" class="btn btn-outline-dark"
						id="passport">여권/비자/환전</button>
					<button value="홈페이지/기타" type="button" class="btn btn-outline-dark"
						id="other">홈페이지/기타</button>
				</div>
			</div>

			<div id="listAll" class="accordion mb-3">
				<c:set var="number" value="0" />
				<c:choose>
					<c:when test="${list ne null }">
						<c:forEach var="faq" items="${list}">
							<c:set var="number" value="${number+=1}" />
							<div class="accordion mb-2" id="accordionPanelsStayOpenExample">
								<div class="accordion-item">
									<h2 class="accordion-header"
										id="panelsStayOpen-heading-${number}">
										<button class="accordion-button collapsed" type="button"
											data-bs-toggle="collapse"
											data-bs-target="#panelsStayOpen-collapse-${number}"
											aria-controls="panelsStayOpen-collapse-${number}">
											${faq.faq_category}&nbsp;&nbsp;|&nbsp;&nbsp;
											Q.&nbsp;${faq.faq_title }</button>
									</h2>
									<div id="panelsStayOpen-collapse-${number}"
										class="accordion-collapse collapse"
										aria-labelledby="panelsStayOpen-heading-${number}">
										<div class="accordion-body">${faq.faq_content }
											<c:if test="${userInfo.member_master eq 'Y'}">
												<button id="delBtn" type="button" class="btn btn-close"
													data-bs-toggle="modal" data-bs-target="#staticBackdrop"
													onclick="setNum(${faq.faq_num})" data-what="${faq.faq_num}"></button>
											</c:if>
										</div>
									</div>
								</div>
							</div>
							<form name="faqInfo">
								<input type="hidden" name="faq_num" value="${faq.faq_num}">
							</form>
						</c:forEach>
					</c:when>
					<c:otherwise>
						<h1>게시글이 없습니다.</h1>
					</c:otherwise>
				</c:choose>
			</div>

			<!-- Modal -->
			<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static"
				data-bs-keyboard="false" tabindex="-1"
				aria-labelledby="staticBackdropLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="staticBackdropLabel">해당 글을
								삭제하시겠습니까?</h5>
							<button type="button" class="btn-close" data-bs-dismiss="modal"
								aria-label="Close"></button>
						</div>
						<div class="modal-body">
							삭제된 게시글 정보는 다시 불러올수 없습니다. <br />주의사항을 확인 후 삭제하시겠습니까?
						</div>
						<div class="modal-footer">
							<button id="btnDelCancel" type="button" class="btn btn-secondary"
								data-bs-dismiss="modal">취소</button>
							<button id="btnDelAgree" type="button" class="btn btn-primary"
								onclick="clickDel(faqInfo)">삭제</button>
						</div>
					</div>
				</div>
			</div>

			<div class="accordion mb-3" id="accordionTrip"></div>
			<div id="pagingTrip"></div>

			<div class="accordion mb-3" id="accordionAirline"></div>
			<div id="pagingAirline"></div>

			<div class="accordion mb-3" id="accordionReserv"></div>
			<div id="pagingReserv"></div>

			<div class="accordion mb-3" id="accordionPass"></div>
			<div id="pagingPass"></div>

			<div class="accordion mb-3" id="accordionOther"></div>
			<div id="pagingOther"></div>

			<div id="pagingAll">
				<nav id="allPaging" aria-label="Page navigation mb-3">
					<ul class="pagination justify-content-center">
						<c:if test="${pm.first}">
							<li class="page-item"><a class="page-link"
								href="${contextPath}/board/faq/${pm.makeQuery(1)}"
								aria-label="Previous"> <span aria-hidden="true">&laquo;</span></a>
							</li>
						</c:if>
						<c:if test="${pm.prev}">
							<li class="page-item"><a class="page-link"
								href="${contextPath}/board/faq/${pm.makeQuery(pm.startPage-1)}">&lt;</a>
							</li>
						</c:if>
						<c:forEach var="i" begin="${pm.startPage}" end="${pm.endPage}">
							<li class="page-item" aria-current="page"
								${pm.cri.page ==i? 'class="active"':''}><a
								class="page-link"
								href="${contextPath}/board/faq/${pm.makeQuery(i)}">${i}</a></li>
						</c:forEach>
						<c:if test="${pm.next}">
							<li class="page-item"><a class="page-link"
								href="${contextPath}/board/faq/${pm.makeQuery(pm.endPage+1)}">&gt;</a>
							</li>
						</c:if>
						<c:if test="${pm.last}">
							<li class="page-item"><a class="page-link"
								href="${contextPath}/board/faq/${pm.makeQuery(pm.maxPage)}"
								aria-label="Previous"> <span aria-hidden="true">&raquo;</span></a>
							</li>
						</c:if>
					</ul>
				</nav>
			</div>
			<div class="row">
				<c:if test="${userInfo.member_master eq 'Y'}">
					<div class="text-end mb-3">
						<button class="btn btn-outline-secondary" id="addBtn">추가하기</button>
					</div>
				</c:if>

			</div>
		</div>
	</div>
</section>


<script>
	var faqnum;
	function setNum(num) {
		faqnum = num;
		console.log(faqnum)
	}
	var userInfo= "<%=session.getAttribute("userInfo")%>";
	console.log("userInfo: "+userInfo);
	var userMaster= '${userInfo.member_master}';
	
	var pm= "${pm}";
	var cri= '${pm.cri}';
	
	console.log("pm: "+pm);
	console.log("pm.cri: "+cri);

	$("#addBtn").click(function() {
		location.href = "${contextPath}/board/faqWrite";
	});

	
	$("#qnaBoard").click(function() {
		location.href = "board/qna";
	});

	$("#faqBoard").click(function() {
		location.href = "board/faq";
	});

	$("#noticeBoard").click(function() {
		location.href = "board/notice";
	});

	$("#all").on("click", function() {
		$(this).removeClass("active");
		$("#trip").removeClass("active");
		$("#airline").removeClass("active");
		$("#passport").removeClass("active");
		$("#reservation").removeClass("active");
		$("#other").removeClass("active");
		let faq_category = $(this).val();
		console.log("faq_category: ", faq_category);
		location.href="${contextPath}/board/faq";
	});

	$("#trip").on("click", function() {
		$(this).toggleClass("active");
		$("#airline").removeClass("active");
		$("#passport").removeClass("active");
		$("#reservation").removeClass("active");
		$("#other").removeClass("active");
		
		$("#listAll").hide();
		$("#accordionReserv").hide();
		$("#accordionPass").hide();
		$("#accordionAirline").hide();
		$("#accordionOther").hide();
		
		$("#allPaging").hide();
		
		let faq_category = $(this).val();
		console.log("faq_category: ", faq_category);
		
		$.ajax({
			url : "${contextPath}/board/categoryList/trip", type : "POST", dataType : "json",
			data : { "faq_category" : faq_category },
			success : function(data) {
				console.log(data);
				console.log(data.tripList);
				console.log(data.tripPm);
				let str="";
				let i = 0;
			
				$(data.tripList).each(function(){
					let faq_category= this.faq_category;
					let faq_title= this.faq_title;
					let faq_content= this.faq_content;
					console.log(faq_category, faq_title, faq_content);
					str += '<div class="accordion mb-2" id="listTrip">';
					str += '<div class="accordion-item mb-2">';
					str += '<h2 class="accordion-header" id="headingOne-'+i+'">';
					str += '<button class="accordion-button collapsed" type="button"';
					str += 'data-bs-toggle="collapse" data-bs-target="#collapseOne'+i+'"';
					str += 'aria-expanded="true" aria-controls="collapseOne">'; 
					str += faq_category+'&nbsp;&nbsp;|&nbsp;&nbsp;Q.&nbsp;'+faq_title;
					str += '</button></h2>';
					str += '<div id="collapseOne'+i+'" class="accordion-collapse collapse"';
					str += 'aria-labelledby="headingOne-'+i+'" data-bs-parent="#accordionTrip">';
					str += '<div class="accordion-body">';
					str += faq_content;
					if(userMaster=='Y'){
						str += '<button id="delBtn" type="button" class="btn btn-close" data-bs-toggle="modal"'; 
						str +=	'data-bs-target="#staticBackdrop"></button></div>';
					}
					str += '</div>';
					str += '</div>';
					str += '</div>';
					i++;
				});
				$("#accordionTrip").html(str);
				
		
				//$("#pagingTrip").html(strPaging);
			},// success
			error : function(err) {
				console.log("응 안돼 돌아가");
			}
		});
		$("#accordionTrip").show();
		
	});


	
	$("#airline").on("click", function() {
		$(this).toggleClass("active");
		$("#trip").removeClass("active");
		$("#passport").removeClass("active");
		$("#reservation").removeClass("active");
		$("#other").removeClass("active");
		
		$("#listAll").hide();
		$("#accordionReserv").hide();
		$("#accordionPass").hide();
		$("#accordionTrip").hide();
		$("#accordionOther").hide();
		
		$("#allPaging").hide();
		
		var faq_category = $(this).val();
		
		console.log("faq_category: ", faq_category);
		$.ajax({
			url : "${contextPath}/board/categoryList/airline", type : "POST", dataType : "json",
			data : {  "faq_category" : faq_category  },
			success : function(data) {
				console.log(data);
				console.log(data.airlineList);
				console.log(data.airlinePm);
				let str="";
				let i = 0;
				$(data.airlineList).each(function(){
					let faq_category= this.faq_category;
					let faq_title= this.faq_title;
					let faq_content= this.faq_content;
					console.log(faq_category, faq_title, faq_content);
					str += '<div class="accordion mb-2" id="listAirline">';
					str += '<div class="accordion-item mb-2">';
					str += '<h2 class="accordion-header" id="headingOne-'+i+'">';
					str += '<button class="accordion-button collapsed" type="button"';
					str += 'data-bs-toggle="collapse" data-bs-target="#collapseOne'+i+'"';
					str += 'aria-expanded="true" aria-controls="collapseOne">'; 
					str += faq_category+'&nbsp;&nbsp;|&nbsp;&nbsp;Q.&nbsp;'+faq_title;
					str += '</button></h2>';
					str += '<div id="collapseOne'+i+'" class="accordion-collapse collapse"';
					str += 'aria-labelledby="headingOne-'+i+'" data-bs-parent="#accordionAirline">';
					str += '<div class="accordion-body">';
					str += faq_content;
					if(userMaster=='Y'){
						str += '<button id="delBtn" type="button" class="btn btn-close" data-bs-toggle="modal"'; 
						str +=	'data-bs-target="#staticBackdrop"></button></div>';
					}
					str += '</div>';
					str += '</div>';
					str += '</div>';
					i++;
				});
				$("#accordionAirline").html(str);
			},
			error : function(err) {
				console.log("응 안돼 돌아가");
			}
		});
		$("#accordionAirline").show();
	});

	$("#reservation").on("click", function() {
		$(this).toggleClass("active");
		$("#airline").removeClass("active");
		$("#passport").removeClass("active");
		$("#trip").removeClass("active");
		$("#other").removeClass("active");
		
		$("#listAll").hide();
		$("#accordionAirline").hide();
		$("#accordionPass").hide();
		$("#accordionTrip").hide();
		$("#accordionOther").hide();
		
		$("#allPaging").hide();
		
		let faq_category = $(this).val();
		console.log("faq_category: ", faq_category);
		$.ajax({
			url : "${contextPath}/board/categoryList/reservation", type : "POST", dataType : "json",
			data : {  "faq_category" : faq_category  },
			success : function(data) {
				console.log(data);
				console.log(data.reserveList);
				console.log(data.reservePm);
				let str="";
				let i = 0;
				$(data.reserveList).each(function(){
					let faq_category= this.faq_category;
					let faq_title= this.faq_title;
					let faq_content= this.faq_content;
					console.log(faq_category, faq_title, faq_content);
					str += '<div class="accordion mb-2" id="listReserv">';
					str += '<div class="accordion-item mb-2">';
					str += '<h2 class="accordion-header" id="headingOne-'+i+'">';
					str += '<button class="accordion-button collapsed" type="button"';
					str += 'data-bs-toggle="collapse" data-bs-target="#collapseOne'+i+'"';
					str += 'aria-expanded="true" aria-controls="collapseOne">'; 
					str += faq_category+'&nbsp;&nbsp;|&nbsp;&nbsp;Q.&nbsp;'+faq_title;
					str += '</button></h2>';
					str += '<div id="collapseOne'+i+'" class="accordion-collapse collapse"';
					str += 'aria-labelledby="headingOne-'+i+'" data-bs-parent="#accordionReserv">';
					str += '<div class="accordion-body">';
					str += faq_content;
					if(userMaster=='Y'){
						str += '<button id="delBtn" type="button" class="btn btn-close" data-bs-toggle="modal"'; 
						str +=	'data-bs-target="#staticBackdrop"></button></div>';
					}
					str += '</div>';
					str += '</div>';
					str += '</div>';
					i++;
				});
				$("#accordionReserv").html(str);
			},
			error : function(err) {
				console.log("응 안돼 돌아가");
			}
		});
		$("#accordionReserv").show();
	});

	$("#passport").on("click", function() {
		$(this).toggleClass("active");
		$("#airline").removeClass("active");
		$("#trip").removeClass("active");
		$("#reservation").removeClass("active");
		$("#other").removeClass("active");
		
		$("#listAll").hide();
		$("#accordionReserv").hide();
		$("#accordionTrip").hide();
		$("#accordionAirline").hide();
		$("#accordionOther").hide();
		
		$("#allPaging").hide();
		
		let faq_category = $(this).val();
		console.log("faq_category: ", faq_category);
		$.ajax({
			url : "${contextPath}/board/categoryList/passport", type : "POST", dataType : "json",
			data : {  "faq_category" : faq_category  },
			success : function(data) {
				console.log(data);
				console.log(data.passList);
				console.log(data.passPm);
				let str="";
				let i = 0;
				$(data.passList).each(function(){
					let faq_category= this.faq_category;
					let faq_title= this.faq_title;
					let faq_content= this.faq_content;
					console.log(faq_category, faq_title, faq_content);
					str += '<div class="accordion mb-2" id="listPass">';
					str += '<div class="accordion-item mb-2">';
					str += '<h2 class="accordion-header" id="headingOne-'+i+'">';
					str += '<button class="accordion-button collapsed" type="button"';
					str += 'data-bs-toggle="collapse" data-bs-target="#collapseOne'+i+'"';
					str += 'aria-expanded="true" aria-controls="collapseOne">'; 
					str += faq_category+'&nbsp;&nbsp;|&nbsp;&nbsp;Q.&nbsp;'+faq_title;
					str += '</button></h2>';
					str += '<div id="collapseOne'+i+'" class="accordion-collapse collapse"';
					str += 'aria-labelledby="headingOne-'+i+'" data-bs-parent="#accordionPass">';
					str += '<div class="accordion-body">';
					str += faq_content;
					if(userMaster=='Y'){
						str += '<button id="delBtn" type="button" class="btn btn-close" data-bs-toggle="modal"'; 
						str +=	'data-bs-target="#staticBackdrop"></button></div>';
					}
					str += '</div>';
					str += '</div>';
					str += '</div>';
					i++;
				});
				$("#accordionPass").html(str);
			},
			error : function(err) {
				console.log("응 안돼 돌아가");
			}
		});
		$("#accordionPass").show();
	});

	$("#other").on("click", function() {
		$(this).toggleClass("active");
		$("#airline").removeClass("active");
		$("#passport").removeClass("active");
		$("#reservation").removeClass("active");
		$("#trip").removeClass("active");
		
		$("#listAll").hide();
		$("#accordionReserv").hide();
		$("#accordionPass").hide();
		$("#accordionTrip").hide();
		$("#accordionOther").hide();
		
		$("#allPaging").hide();
		
		let faq_category = $(this).val();
		console.log("faq_category: ", faq_category);
		$.ajax({
			url : "${contextPath}/board/categoryList/other", type : "POST", dataType : "json",
			data : {  "faq_category" : faq_category  },
			success : function(data) {
				console.log(data);
				console.log(data.otherList);
				console.log(data.otherPm);
				let str="";
				let i = 0;
				$(data.otherList).each(function(){
					let faq_category= this.faq_category;
					let faq_title= this.faq_title;
					let faq_content= this.faq_content;
					console.log(faq_category, faq_title, faq_content);
					str += '<div class="accordion mb-2" id="listOther">';
					str += '<div class="accordion-item mb-2">';
					str += '<h2 class="accordion-header" id="headingOne-'+i+'">';
					str += '<button class="accordion-button collapsed" type="button"';
					str += 'data-bs-toggle="collapse" data-bs-target="#collapseOne'+i+'"';
					str += 'aria-expanded="true" aria-controls="collapseOne">'; 
					str += faq_category+'&nbsp;&nbsp;|&nbsp;&nbsp;Q.&nbsp;'+faq_title;
					str += '</button></h2>';
					str += '<div id="collapseOne'+i+'" class="accordion-collapse collapse"';
					str += 'aria-labelledby="headingOne-'+i+'" data-bs-parent="#accordionOther">';
					str += '<div class="accordion-body">';
					str += faq_content;
					if(userMaster=='Y'){
						str += '<button id="delBtn" type="button" class="btn btn-close" data-bs-toggle="modal"'; 
						str +=	'data-bs-target="#staticBackdrop"></button></div>';
					}
					str += '</div>';
					str += '</div>';
					str += '</div>';
					i++;
				});
				$("#accordionOther").html(str);
			},
			error : function(err) {
				console.log("응 안돼 돌아가");
			}
		});
		$("#accordionOther").show();
	});
	


	function clickDel(formName) {
		for (var tag of formName) {
			if (tag.faq_num.value == faqnum) {
				tag.action = "faqDelete";
				tag.method = "post";
				tag.submit();
			}
		}
	}
	
</script>
<%@ include file="../common/footer.jsp"%>