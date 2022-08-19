<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/header.jsp" %>
<section class="container">
	<div class="row">
		<div class="col-md-2">
			<div class="card mb-3">
				<div class="card-header">
					<h3 class="card-title text-center m-0">아시아</h3>
				</div>
				<div class="accordion" id="accordionExample">
					<div class="accordion-item">
						<h4 class="accordion-header" id="headingOne">
							<button class="accordion-button" type="button" data-bs-toggle="collapse"
								data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
								나라이름1
							</button>
						</h4>
						<div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne"
							data-bs-parent="#accordionExample">
							<div class="accordion-body">
								지역1
							</div>
						</div>
						<div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne"
							data-bs-parent="#accordionExample">
							<div class="accordion-body">
								지역2
							</div>
						</div>
						<div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne"
							data-bs-parent="#accordionExample">
							<div class="accordion-body">
								지역3
							</div>
						</div>
					</div>
					<div class="accordion-item">
						<h4 class="accordion-header" id="headingTwo">
							<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
								data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
								나라이름2
							</button>
						</h4>
						<div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo"
							data-bs-parent="#accordionExample">
							<div class="accordion-body">
								지역1
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-10 mb-2">
			<h3 class="mb-3">아시아/일본</h3>
			<!-- 나라 -->
			<div class="card mb-3">
				<div class="card-header">
					<h4 class="card-title m-1">도쿄</h4>
				</div>
				<!-- 지역 -->
				<div class="card-body">
					<div class="row border-bottom">
						<!-- 조건식 활용하여 마지막 지역이라면 border-bottom 클래스 지워주면 좋을 듯-->
						<div class="col-md-10 mb-3">
							<p class="card-text">여행정보1</p>
							<p class="card-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Aperiam, odit
								enim eveniet, numquam ad, dolores libero dolor maiores itaque modi recusandae at
								incidunt nesciunt dicta delectus placeat dolorem? Nihil, eveniet!</p>
						</div>
						<div class="col-md-2 mb-3">
							<p class="card-text">
								10000000원
							</p>
							<p>
								<!-- href collapse1 -- 목록마다 인덱스 숫자로 업데이트하기 -->
								<a class="btn btn-primary" data-bs-toggle="collapse" href="#collapse1">
									상세보기
								</a>
							</p>
						</div>
						<div class="collapse" id="collapse1">
							<div class="card card-body">
								상세보기 내용
							</div>
						</div>
					</div>
				</div>
				<!-- 지역 끝 -->
				<div class="card-body">
					<div class="row border-bottom">
						<div class="col-md-10 mb-3">
							<p class="card-text">여행정보1</p>
							<p class="card-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Aperiam, odit
								enim eveniet, numquam ad, dolores libero dolor maiores itaque modi recusandae at
								incidunt nesciunt dicta delectus placeat dolorem? Nihil, eveniet!</p>
						</div>
						<div class="col-md-2 mb-3">
							<p class="card-text">
								10000000원
							</p>
							<p>
								<a class="btn btn-primary" data-bs-toggle="collapse" href="#collapse2">
									상세보기
								</a>
							</p>
						</div>
						<div class="collapse" id="collapse2">
							<div class="card card-body">
								상세보기 내용
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- 나라 끝-->
			<div class="card mb-3">
				<div class="card-header">
					<h4 class="card-title m-1">오사카</h4>
				</div>
				<div class="card-body">
					<div class="row border-bottom">
						<div class="col-md-10 mb-3">
							<p class="card-text">여행정보1</p>
							<p class="card-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Aperiam, odit
								enim eveniet, numquam ad, dolores libero dolor maiores itaque modi recusandae at
								incidunt nesciunt dicta delectus placeat dolorem? Nihil, eveniet!</p>
						</div>
						<div class="col-md-2 mb-3">
							<p class="card-text">
								10000000원
							</p>
							<p>
								<a class="btn btn-primary" data-bs-toggle="collapse" href="#collapse3">
									상세보기
								</a>
							</p>
						</div>
						<div class="collapse" id="collapse3">
							<div class="card card-body">
								상세보기 내용
							</div>
						</div>
					</div>
				</div>
				<div class="card-body">
					<div class="row border-bottom">
						<div class="col-md-10 mb-3">
							<p class="card-text">여행정보1</p>
							<p class="card-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Aperiam, odit
								enim eveniet, numquam ad, dolores libero dolor maiores itaque modi recusandae at
								incidunt nesciunt dicta delectus placeat dolorem? Nihil, eveniet!</p>
						</div>
						<div class="col-md-2 mb-3">
							<p class="card-text">
								10000000원
							</p>
							<p>
								<a class="btn btn-primary" data-bs-toggle="collapse" href="#collapse4">
									상세보기
								</a>
							</p>
						</div>
						<div class="collapse" id="collapse4">
							<div class="card card-body">
								상세보기 내용
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="text-end mb-3">
			<button class="btn btn-success">등록</button>
		</div>
	</div>
</section>
<%@ include file="../common/footer.jsp" %>