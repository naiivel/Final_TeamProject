<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="common/header.jsp" %>
<section class="container text-center">
	<!-- 800*400 배너 공간 시작 -->
	<div id="carouselExampleDark" class="carousel carousel-dark slide mb-5" data-bs-ride="carousel">
		<div class="carousel-indicators">
			<button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="0" class="active"
				aria-current="true" aria-label="Slide 1"></button>
			<button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="1"
				aria-label="Slide 2"></button>
			<button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="2"
				aria-label="Slide 3"></button>
		</div>
		<div class="carousel-inner">
			<div class="carousel-item active" data-bs-interval="10000">
				<img src="https://marketingcube.com.au/wp-content/uploads/2019/02/Placeholder-800x400-pixels-Timeline.png"
					class="d-block w-100" alt="...">
				<div class="carousel-caption d-none d-md-block">
					<h5>First slide label</h5>
					<p>Some representative placeholder content for the first slide.</p>
				</div>
			</div>
			<div class="carousel-item" data-bs-interval="2000">
				<img src="https://marketingcube.com.au/wp-content/uploads/2019/02/Placeholder-800x400-pixels-Timeline.png"
					class="d-block w-100" alt="...">
				<div class="carousel-caption d-none d-md-block">
					<h5>Second slide label</h5>
					<p>Some representative placeholder content for the second slide.</p>
				</div>
			</div>
			<div class="carousel-item">
				<img src="https://marketingcube.com.au/wp-content/uploads/2019/02/Placeholder-800x400-pixels-Timeline.png"
					class="d-block w-100" alt="...">
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
	<div class="row mb-5">
		<div class="col-1"></div>

		<div class="col-10 row p-3">
			<h2 class="mb-3">여행지 검색</h2>
			<form action="">
				<div class="row">
					<div class="col-lg-3">
						<div class="input-group mb-5">
							<span class="input-group-text" id="basic-addon1">나라</span>
							<input type="text" class="form-control" placeholder="나라명" aria-label="나라"
								aria-describedby="basic-addon1">
						</div>
					</div>
					<div class="col-lg-3">
						<div class="input-group mb-5">
							<span class="input-group-text" id="basic-addon1">출발일</span>
							<input type="date" class="form-control" placeholder="출발일" aria-label="출발일"
								aria-describedby="basic-addon1">
						</div>
					</div>
					<div class="col-lg-3">
						<div class="input-group mb-5">
							<span class="input-group-text" id="basic-addon1">기간</span>
							<input type="number" class="form-control" placeholder="기간" aria-label="기간"
								aria-describedby="basic-addon1">
						</div>
					</div>
					<div class="col-lg-3">
						<div class="input-group mb-5">
							<span class="input-group-text" id="basic-addon1">인원</span>
							<input type="number" class="form-control" placeholder="인원" aria-label="인원"
								aria-describedby="basic-addon1">
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-6">
						<div class="input-group mb-5">
							<span class="input-group-text" id="basic-addon1">도시</span>
							<input type="text" class="form-control" placeholder="도시명" aria-label="도시"
								aria-describedby="basic-addon1">
						</div>
					</div>
					<div class="col-lg-4">
						<div class="input-group mb-5">
							<span class="input-group-text">예산</span>
							<input type="number" class="form-control" placeholder="최대금액" aria-label="예산"
								aria-describedby="basic-addon1">
							<span class="input-group-text">원</span>
						</div>
					</div>
					<div class="col-lg-2">
						<button class="form-control">
							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
								class="bi bi-search" viewBox="0 0 16 16">
								<path
									d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z">
								</path>
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
	<section class="row mb-5">
		<h2 class="mb-3">최고의 여행지</h2>
		<div class="col-md-6 col-xl-3">
			<div class="card border-0 mx-auto" style="width: 18rem;">
				<img src="${contextPath}/resources/image/geek.gif" class="card-img-top" alt="...">
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
				<img src="${contextPath}/resources/image/geek-glasses.gif" class="card-img-top" alt="...">
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
				<img src="${contextPath}/resources/image/geek-hair.gif" class="card-img-top" alt="...">
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
				<img src="${contextPath}/resources/image/geek-glasses-hair.gif" class="card-img-top" alt="...">
				<div class="card-body">
					<h5 class="card-title">Card title</h5>
					<p class="card-text">Some quick example text to build on the card title and make up the bulk of the
						card's content.</p>
					<a href="#" class="btn btn-outline-secondary">Go somewhere</a>
				</div>
			</div>
		</div>
	</section>
	<!-- 추천 여행지 공간 끝 -->
</section>
<%@ include file="common/footer.jsp" %>