<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="common/header.jsp" %>

	<!--about-us start -->
	<section id="home" class="about-us">
		<div class="container">
			<div class="about-us-content">
				<div class="row">
					<div class="col-sm-12">
						<div class="single-about-us">
							<div class="about-us-txt">
								<h2>답답한 집을 떠나 <br/>탈출을 꿈꾸자</h2>
							</div>
						</div>
					</div>
					<div class="col-sm-0">
						<div class="single-about-us"></div>
					</div>
				</div>
			</div>
		</div>

	</section>

	<!--여행 선택 박스-->
	<section class="travel-box">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="single-travel-boxes">
						<div id="desc-tabs" class="desc-tabs">

							<ul class="nav nav-tabs" role="tablist">

								<li role="presentation" class="active"><a href="#tours"
									aria-controls="tours" role="tab" data-toggle="tab"> <i
										class="fa fa-tree"></i> 여행지 검색
								</a></li>
							</ul>

							<div class="tab-content">

								<div role="tabpanel" class="tab-pane active fade in" id="tours">
									<div class="tab-para">

										<div class="row">
											<div class="col-lg-4 col-md-4 col-sm-12">
												<div class="single-tab-select-box">

													<h2>여행 목적지</h2>

													<div class="travel-select-icon">
														<select class="form-control ">
															<option value="default">나라를 입력해주세요</option>

															<option value="#">1</option>

															<option value="#">2</option>

															<option value="#">3</option>
														</select>
													</div>

													<div class="travel-select-icon">
														<select class="form-control ">

															<option value="default">도시를 입력해주세요</option>

															<option value="#">4</option>

															<option value="#">5</option>

															<option value="#">6</option>


														</select>
													</div>
												</div>
											</div>

											<div class="col-lg-2 col-md-3 col-sm-4">
												<div class="single-tab-select-box">
													<h2>출발일</h2>
													<div class="travel-check-icon">
														<form action="#">
															<input type="text" name="check_in" class="form-control"
																data-toggle="datepicker" placeholder="12 -01 - 2017 ">
														</form>
													</div>
												</div>
											</div>

											<div class="col-lg-2 col-md-1 col-sm-4">
												<div class="single-tab-select-box">
													<h2>기간</h2>
													<div class="travel-select-icon">
														<select class="form-control ">

															<option value="default">2</option>

															<option value="3">3</option>

															<option value="4">4</option>

															<option value="5">5</option>
														</select>
													</div>
												</div>
											</div>

											<div class="col-lg-2 col-md-1 col-sm-4">
												<div class="single-tab-select-box">
													<h2>인원</h2>
													<div class="travel-select-icon">
														<select class="form-control ">

															<option value="default">1</option>

															<option value="2">2</option>

															<option value="3">3</option>

															<option value="4">4</option>
														</select>
													</div>
												</div>
											</div>
										</div>

										
											</div>
											<div class="clo-sm-7">
												<div class="about-btn travel-mrt-0 pull-right">
													<button class="about-view travel-btn">검색</button>
												</div>
											</div>
										</div>
									</div>
								</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--인기 지역 -->
	<section id="gallery" class="gallery">
		<div class="container">
			<div class="gallery-details">
				<div class="gallary-header text-center">
					<h2>지역 선호도</h2>
					<p>여행지들 중 가장 많이 찾는 곳을 보여드립니다.</p>
				</div>
				<!-- 인기지역 리스트 -->
				<div class="gallery-box">
					<div class="gallery-content">
						<div class="filtr-container">
							<div class="row">

								<div class="col-md-6">
									<div class="filtr-item">
										<img
											src="${pageContext.request.contextPath}/resources/images/gallary/g1.jpg"
											alt="portfolio image" />
										<div class="item-title">
											<a href="#">몰라</a>
											<p>
												<span>조회 수</span>
											</p>
										</div>
									</div>
								</div>

								<div class="col-md-6">
									<div class="filtr-item">
										<img
											src="${pageContext.request.contextPath}/resources/images/gallary/g2.jpg"
											alt="portfolio image" />
										<div class="item-title">
											<a href="#">몰라</a>
											<p>
												<span>조회 수</span>
											</p>
										</div>
									</div>
								</div>

								<div class="col-md-4">
									<div class="filtr-item">
										<img
											src="${pageContext.request.contextPath}/resources/images/gallary/g3.jpg"
											alt="portfolio image" />
										<div class="item-title">
											<a href="#">몰라</a>
											<p>
												<span>조회 수</span>
											</p>
										</div>
									</div>
								</div>

								<div class="col-md-4">
									<div class="filtr-item">
										<img
											src="${pageContext.request.contextPath}/resources/images/gallary/g4.jpg"
											alt="portfolio image" />
										<div class="item-title">
											<a href="#">몰라</a>
											<p>
												<span>조회 수</span>
											</p>
										</div>
									</div>
								</div>

								<div class="col-md-4">
									<div class="filtr-item">
										<img
											src="${pageContext.request.contextPath}/resources/images/gallary/g5.jpg"
											alt="portfolio image" />
										<div class="item-title">
											<a href="#">몰라</a>
											<p>
												<span>조회 수</span>
											</p>
										</div>
									</div>
								</div>

								<div class="col-md-8">
									<div class="filtr-item">
										<img
											src="${pageContext.request.contextPath}/resources/images/gallary/g6.jpg"
											alt="portfolio image" />
										<div class="item-title">
											<a href="#">몰라</a>
											<p>
												<span>조회 수</span>
											</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

<%@ include file="common/footer.jsp" %>

