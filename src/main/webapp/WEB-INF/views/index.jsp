<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>최고의 여행 - 대탈출</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/bootstrap-5.2.0-dist/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css">
<script src="${pageContext.request.contextPath}/resources/js/jquery.js"></script>
</head>

<body>
	<header class="mb-5">
		<nav id="mainNavbar"
			class="navbar fixed-top navbar-expand-lg bg-light">
			<div class="container">
				<a class="navbar-brand" href="#"> <img
					src="/docs/5.2/assets/brand/bootstrap-logo.svg" alt="" width="30"
					height="24" class="d-inline-block align-text-top"> 대탈출
				</a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav me-auto mb-2 mb-lg-0">
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="a">아시아</a></li>
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="b">유럽</a></li>
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="c">아메리카</a></li>
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="d">오세아니아</a></li>
					</ul>
					<ul class="navbar-nav ml-auto mb-2 mb-lg-0">
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="d">로그인</a></li>
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="d">예약확인</a></li>
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="d">고객센터</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</header>
	<section class="container">Obcaecati enim voluptatum commodi
		nulla autem? Quos, accusamus saepe! Quaerat sequi sunt tenetur maxime
		dolores voluptatibus officiis delectus illo nesciunt culpa aliquam
		reiciendis quam explicabo qui, in quia libero commodi! Odit quibusdam
		fugit quidem aspernatur rerum molestias accusantium sint vero vitae
		ex, beatae voluptate quisquam soluta necessitatibus doloribus, illum
		fugiat? Unde quaerat nulla laborum deleniti ex alias fugit obcaecati
		soluta. Quas placeat atque ipsum minima vel ex facilis eum culpa
		aspernatur nobis, delectus vero hic ut, veritatis perferendis dolorum
		accusamus voluptatum officia odit. Dicta, consequuntur error. Facere
		ullam ratione tempore.</section>
	<footer class="mt-5 bg-light">
		<div class="container">
			<div class="row align-center">
				<div class="col-md-2 ">
					<span class="fs-1">대탈출</span>
				</div>
				<div class="col-md-7">
					<div class="fs-6">㈜한국기술교육직업전문학교 │ 부산지점 : (47821)부산광역시 동래구 충렬대로 84 (온천동)</div>
					<div class="fs-6">사업자등록번호 : 123-45-67890 │ 통신판매업신고번호 : 제2022 부산동래 12345호</div>
					<div class="fs-6">관광사업등록증번호 : 제2022-999999호</div>
				</div>
				<div class="col-md-3 p-3">
				<div class="list-group">
					  <a href="#" class="fs-6 text-center list-group-item list-group-item-action">아시아</a>
					  <a href="#" class="fs-6 text-center list-group-item list-group-item-action">유럽</a>
					  <a href="#" class="fs-6 text-center list-group-item list-group-item-action">아메리카</a>
					  <a href="#" class="fs-6 text-center list-group-item list-group-item-action">오세아니아</a>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<script
		src="${pageContext.request.contextPath}/resources/bootstrap-5.2.0-dist/js/bootstrap.min.js"></script>
</body>

</html>