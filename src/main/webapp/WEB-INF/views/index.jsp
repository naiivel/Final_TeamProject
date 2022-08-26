<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="common/header.jsp" %>
<link rel="stylesheet" href="${contextPath}/resources/css/index.css">
<section class="container text-center">
	<!-- 800*400 배너 공간 시작 -->
	<div id="carouselExampleDark" class="carousel carousel-dark slide mb-5" data-bs-ride="carousel">
		<div class="carousel-indicators">
			<button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
			<button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="1" aria-label="Slide 2"></button>
			<button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="2" aria-label="Slide 3"></button>
		</div>
		<div class="carousel-inner">
			<div class="carousel-item active" data-bs-interval="10000">
				<img src="https://images.unsplash.com/photo-1660937472479-f0d9608e8370?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2071&q=80" class="d-block w-100" style="height: 500px;" alt="...">
				<div class="carousel-caption d-none d-md-block">
					<h5>First slide label</h5>
					<p>Some representative placeholder content for the first slide.</p>
				</div>
			</div>
			<div class="carousel-item" data-bs-interval="2000">
				<img src="https://images.unsplash.com/photo-1434828927397-62ea053f7a35?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80" class="d-block w-100" alt="...">
				<div class="carousel-caption d-none d-md-block">
					<h5>Second slide label</h5>
					<p>Some representative placeholder content for the second slide.</p>
				</div>
			</div>
			<div class="carousel-item">
				<img src="https://images.unsplash.com/photo-1502602898657-3e91760cbb34?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2073&q=80" class="d-block w-100" alt="...">
				<div class="carousel-caption d-none d-md-block">
					<h5>Third slide label</h5>
					<p>Some representative placeholder content for the third slide.</p>
				</div>
			</div>
		</div>
		<button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span>
			<span class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span>
			<span class="visually-hidden">Next</span>
		</button>
	</div>
	<!-- 800*400 배너 공간 끝 -->

	<!-- 여행지 검색 공간 시작 -->
	<div class="row mb-3">
		<div class="col-1"></div>
		<div class="col-10 row p-3">
			<h2 class="mb-4">여행지 검색</h2>
<<<<<<< HEAD
			<form action="">
=======
			<form id="searchForm" action="${contextPath}/product/search">
>>>>>>> refs/heads/main
				<div class="row">
					<div class="col-lg-3">
						<div class="input-group mb-3">
							<span class="input-group-text" id="basic-addon1">나라</span>
<<<<<<< HEAD
							<input type="text" class="form-control" placeholder="나라명" aria-label="나라" aria-describedby="basic-addon1">
=======
							<input name="country" type="text" class="form-control" placeholder="나라명" aria-label="나라">
>>>>>>> refs/heads/main
						</div>
					</div>
					<div class="col-lg-3">
						<div class="input-group mb-3">
							<span class="input-group-text" id="basic-addon1">출발일</span>
<<<<<<< HEAD
							<input type="date" class="form-control" placeholder="출발일" aria-label="출발일" aria-describedby="basic-addon1">
=======
							<input name="departure" type="date" class="form-control" placeholder="출발일" aria-label="출발일">
>>>>>>> refs/heads/main
						</div>
					</div>
					<div class="col-lg-3">
						<div class="input-group mb-3">
							<span class="input-group-text" id="basic-addon1">기간</span>
<<<<<<< HEAD
							<input type="number" class="form-control" placeholder="기간" aria-label="기간" aria-describedby="basic-addon1">
=======
							<input name="plan" type="number" class="form-control" placeholder="기간" aria-label="기간">
>>>>>>> refs/heads/main
						</div>
					</div>
					<div class="col-lg-3">
						<div class="input-group mb-3">
							<span class="input-group-text" id="basic-addon1">인원</span>
<<<<<<< HEAD
							<input type="number" class="form-control" placeholder="인원" aria-label="인원" aria-describedby="basic-addon1">
=======
							<input name="seat" type="number" class="form-control" placeholder="인원" aria-label="인원">
>>>>>>> refs/heads/main
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-6">
						<div class="input-group mb-3">
							<span class="input-group-text" id="basic-addon1">도시</span>
<<<<<<< HEAD
							<input type="text" class="form-control" placeholder="도시명" aria-label="도시" aria-describedby="basic-addon1">
=======
							<input name="city" type="text" class="form-control" placeholder="도시명" aria-label="도시">
>>>>>>> refs/heads/main
						</div>
					</div>
					<div class="col-lg-4">
						<div class="input-group mb-3">
							<span class="input-group-text">예산</span>
<<<<<<< HEAD
							<input type="number" class="form-control" placeholder="최대금액" aria-label="예산" aria-describedby="basic-addon1">
=======
							<input name="money" type="number" class="form-control" placeholder="최대금액" aria-label="예산">
>>>>>>> refs/heads/main
							<span class="input-group-text">원</span>
						</div>
					</div>
					<div class="col-lg-2">
<<<<<<< HEAD
						<button class="form-control">
							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
								<path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z">
								</path>
=======
						<button id="formBtn" class="form-control">
							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
								<path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"></path>
>>>>>>> refs/heads/main
							</svg>
							검색
						</button>
					</div>
				</div>
			</form>
		</div>

		<div class="col-1"></div>
	</div>
	<!-- 여행지 검색 공간 끝 -->

	<!-- 추천 여행지 공간 시작 -->
	<section class="row mb-3">
		<h2 class="mb-4">최고의 여행지</h2>
<<<<<<< HEAD
		<div class="col-md-6 col-xl-3">
			<div class="card border-0 mx-auto" style="width: 18rem;">
				<img src="https://images.unsplash.com/photo-1469854523086-cc02fe5d8800?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8dHJhdmVsfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60" class="card-img-top" alt="...">
				<div class="card-body">
					<h5 class="card-title">Card title</h5>
					<p class="card-text">Some quick example text to build on the card title and make up the bulk of the
						card's content.</p>
					<a href="#" class="btn btn-outline-secondary">Go somewhere</a>
				</div>
			</div>
		</div>
		<div class="col-md-6 col-xl-3">
			<div class="card border-0 mx-auto" style="width: 18rem;">
				<img src="https://images.unsplash.com/photo-1476514525535-07fb3b4ae5f1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8dHJhdmVsfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60" class="card-img-top" alt="...">
				<div class="card-body">
					<h5 class="card-title">Card title</h5>
					<p class="card-text">Some quick example text to build on the card title and make up the bulk of the
						card's content.</p>
					<a href="#" class="btn btn-outline-secondary">Go somewhere</a>
				</div>
			</div>
		</div>
		<div class="col-md-6 col-xl-3">
			<div class="card border-0 mx-auto" style="width: 18rem;">
				<img src="https://images.unsplash.com/photo-1501785888041-af3ef285b470?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fHRyYXZlbHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60" class="card-img-top" alt="...">
				<div class="card-body">
					<h5 class="card-title">Card title</h5>
					<p class="card-text">Some quick example text to build on the card title and make up the bulk of the
						card's content.</p>
					<a href="#" class="btn btn-outline-secondary">Go somewhere</a>
				</div>
			</div>
		</div>
		<div class="col-md-6 col-xl-3">
			<div class="card border-0 mx-auto" style="width: 18rem;">
				<img src="https://images.unsplash.com/photo-1533105079780-92b9be482077?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjR8fHRyYXZlbHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60" class="card-img-top" alt="...">
				<div class="card-body">
					<h5 class="card-title">Card title</h5>
					<p class="card-text">Some quick example text to build on the card title and make up the bulk of the
						card's content.</p>
					<a href="#" class="btn btn-outline-secondary">Go somewhere</a>
				</div>
			</div>
		</div>
=======
		<c:choose>
			<c:when test="${!empty list}">
				<c:forEach var="product" items="${list}">
					<div class="col-md-6 col-xl-3">
						<div class="card border-0 mx-auto" style="width: 18rem;">
							<img src="${product.detail_title_image}" class="card-img-top" alt="...">
							<div class="card-body">
								<h5 class="card-title">${product.product_name}</h5>
								<p class="card-text">${product.detail_info.length() > 200 ? product.detail_info.substring(0, 200) : product.detail_info}...</p>
								<a href="${contextPath}/product/show/${product.product_num}"
									class="btn btn-outline-secondary">바로가기</a>
							</div>
						</div>
					</div>
				</c:forEach>
				</c:when>
				<c:otherwise>
				<c:forEach var="i" begin="1" end="4">
					<div class="col-md-6 col-xl-3">
						<div class="card border-0 mx-auto" style="width: 18rem;">
							<img src="https://source.unsplash.com/random" class="card-img-top" alt="...">
							<div class="card-body">
								<h5 class="card-title">품절</h5>
								<p class="card-text">죄송합니다 현재 모든 상품이 품절되었습니다. 상품 업데이트를 기다려 주세요! 빠른 시간 내에 최고의 여행 상품을 준비하겠습니다!</p>
							</div>
						</div>
					</div>
					</c:forEach>
				</c:otherwise>
		</c:choose>
>>>>>>> refs/heads/main
	</section>
	<!-- 추천 여행지 공간 끝 -->
</section>
<%@ include file="common/footer.jsp" %>