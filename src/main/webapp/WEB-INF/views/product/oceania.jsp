<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/header.jsp"%>
<style>
	a {
	text-decoration: none;
	}
</style>
<section class="container">
	<div class="row">
		<div class="col-md-2">
			<div class="card mb-3">
				<div class="card-header">
					<h3 class="card-title text-center m-0" id="continent">오세아니아</h3>
				</div>
				<div class="accordion" id="accordionExample">
					<div class="accordion-item">
						<h4 class="accordion-header" id="headingOne">
							<button class="accordion-button" type="button"
								data-bs-toggle="collapse" data-bs-target="#collapseOne"
								aria-expanded="true" aria-controls="collapseOne">오스트레일리아</button>
						</h4>
						<div id="collapseOne" class="accordion-collapse collapse show"
							aria-labelledby="headingOne" data-bs-parent="#accordionExample">
							<div class="accordion-body"><a href="시드니">시드니</a></div>
						</div>
						<div id="collapseOne" class="accordion-collapse collapse show"
							aria-labelledby="headingOne" data-bs-parent="#accordionExample">
							<div class="accordion-body"><a href="골드코스트">골드코스트</a></div>
						</div>
					</div>
				</div>
				<div class="accordion" id="accordionPanelsStayOpenExample">
					<div class="accordion-item">
						<h4 class="accordion-header" id="panelsStayOpen-headingTwo">
							<button class="accordion-button" type="button"
								data-bs-toggle="collapse"
								data-bs-target="#panelsStayOpen-collapseTwo"
								aria-expanded="true" aria-controls="panelsStayOpen-collapseTwo">뉴질랜드</button>
						</h4>
						<div id="panelsStayOpen-collapseTwo"
							class="accordion-collapse collapse show"
							aria-labelledby="panelsStayOpen-headingTwo">
							<div class="accordion-body"><a href="남섬">남섬</a></div>
						</div>
						<div id="panelsStayOpen-collapseTwo"
							class="accordion-collapse collapse show"
							aria-labelledby="panelsStayOpen-headingTwo">
							<div class="accordion-body"><a href="오클랜드">오클랜드</a></div>
						</div>
					</div>
				</div>
				<div class="accordion" id="accordionPanelsStayOpenExample">
					<div class="accordion-item">
						<h4 class="accordion-header" id="panelsStayOpen-headingThree">
							<button class="accordion-button" type="button"
								data-bs-toggle="collapse"
								data-bs-target="#panelsStayOpen-collapseThree"
								aria-expanded="true"
								aria-controls="panelsStayOpen-collapseThree">팔라우</button>
						</h4>
						<div id="panelsStayOpen-collapseThree"
							class="accordion-collapse collapse show"
							aria-labelledby="panelsStayOpen-headingThree">
							<div class="accordion-body"><a href="밀키웨이">밀키웨이</a></div>
						</div>
							<div id="panelsStayOpen-collapseThree"
							class="accordion-collapse collapse show"
							aria-labelledby="panelsStayOpen-headingThree">
							<div class="accordion-body"><a href="롱비치">롱비치</a></div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-10 mb-2">
			<h3 class="mb-3" id="continent-country">오세아니아</h3>
			<!-- 나라 -->
			<div class="card mb-3">
				<div class="card-header">
					<h4 class="card-title m-1" id="country">도시이름</h4>
				</div>
				<!-- 지역 -->
				<div class="card-body" id="listBox">
					<c:choose>
						<c:when test="${!empty list}">
							<c:forEach var="product" items="${list}">
								<div class="row border-bottom">
									<!-- 조건식 활용하여 마지막 지역이라면 border-bottom 클래스 지워주면 좋을 듯-->
									<div class="col-md-10 mb-3">
										<p class="card-text">${product.product_city}/${product.product_name}</p>
										<p class="card-text">${product.product_airplane}</p>
									</div>
									<div class="col-md-2 mb-3">
										<p>
											<!-- href collapse1 -- 목록마다 인덱스 숫자로 업데이트하기 -->
											<a class="btn btn-primary showBtn" data-num="${product.product_num}"> 상세보기 </a>
											<c:choose>
												<c:when test="${product.product_seat>5}">
													<div class="card card-body">좌석 수 : ${product.product_seat}</div>
												</c:when>
												<c:when test="${product.product_seat<6}">
													<div class="card card-body">좌석 수 : ${product.product_seat} 마감임박</div>
												</c:when>
												<c:otherwise>
													<div class="card card-body">좌석 수 : 예약마감</div>
												</c:otherwise>
											</c:choose>
										</p>
									</div>
								</div>
							</c:forEach>
						</c:when>
						<c:otherwise>
							<div class="card-body">
								<p class="card-text">없음</p>
							</div>
						</c:otherwise>
					</c:choose>
				</div>

				<!-- 지역 끝 -->
				<c:choose>
					<c:when test="${!empty sessionScope.userInfo}">
						<c:choose>
							<c:when test="${userInfo.member_master eq 'Y'}">
								<div class="text-end mb-3">
									<button class="btn btn-success" id="addBtn">새 상품 등록</button>
								</div>
							</c:when>
						</c:choose>
					</c:when>
				</c:choose>
			</div>
		</div>
</section>
<script src="${contextPath}/resources/js/popper.min.js"></script>
<script>
	$("#addBtn").click(function() {
		location.href = "${contextPath}/product/new";
	});
	
	$(".showBtn").click(function(){
		location.href = "${contextPath}/product/show?product_num=" + $(this).attr("data-num");
	});
	
	$("#listBox").on("click", ".showBtn", function() {
		location.href = "${contextPath}/product/show?product_num=" + $(this).attr("data-num");
	});
	
	$(".accordion-item").on("click","a",function(e){
		e.preventDefault();
		var tag = $(this);
		$.ajax({
			type : "GET",
			url : "${contextPath}/product/selectCountry",
			data: {
				product_continent: $("#continent").html(),
				product_country: $(this).parent().parent().parent().find("h4 button").html(),
				product_city: $(this).attr("href")
			},
			dataType : "json",
			success : function(list){
				$("#listBox").html('');
				$("#continent-country").html(tag.parent().parent().parent().find("h4 button").html());
				$("#country").html(tag.attr("href"));
				for (var product of list) {
					var html = '<div class="row border-bottom">';
					html += '<div class="col-md-10 mb-3">';
					html += '<p class="card-text">' + product.product_city + product.product_name + '</p>';
					html += '<p class="card-text">' + product.product_airplane + '</p>';
					html += '</div>';
					html += '<div class="col-md-2 mb-3">';
					html += '<p>';
					html += '<a class="btn btn-primary showBtn" data-num="' + product.product_num + '"> 상세보기 </a>';			
					if (product.product_seat > 5) {
					html += '<div class="card card-body">좌석 수 : ' + product.product_seat + '</div>';
					} else if (product.product_seat < 6) {
					html += '<div class="card card-body">좌석 수 : ' + product.product_seat + '<br/>마감임박</div>';
					} else {
					html += '<div class="card card-body">좌석 수 : <br/>예약마감</div>';
					}
					html += '</p>';
					html += '</div>';
					html += '</div>';
					$("#listBox").append(html);
				}
			},
			error : function(res){
				alert(res.responseText);
			}
		}); // ajax end
	});

</script>
<%@ include file="../common/footer.jsp"%>