<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>최고의 여행 - 대탈출</title>
	<link rel="stylesheet" href="${contextPath}/resources/bootstrap-5.2.0-dist/css/bootstrap.min.css">
	<link rel="stylesheet" href="${contextPath}/resources/css/btn-primary.css">
	<link rel="stylesheet" href="${contextPath}/resources/css/style.css">
	<script src="${contextPath}/resources/js/jquery.js"></script>
</head>

<body class="d-flex flex-column vh-100">
	<nav id="mainNavbar" class="navbar fixed-top navbar-expand-lg">
		<div class="container">
			<a class="navbar-brand" href="${contextPath}/"><svg xmlns="http://www.w3.org/2000/svg" width="16"
					height="16" fill="currentColor" class="bi bi-airplane-fill" viewBox="0 0 16 16">
					<path
						d="M6.428 1.151C6.708.591 7.213 0 8 0s1.292.592 1.572 1.151C9.861 1.73 10 2.431 10 3v3.691l5.17 2.585a1.5 1.5 0 0 1 .83 1.342V12a.5.5 0 0 1-.582.493l-5.507-.918-.375 2.253 1.318 1.318A.5.5 0 0 1 10.5 16h-5a.5.5 0 0 1-.354-.854l1.319-1.318-.376-2.253-5.507.918A.5.5 0 0 1 0 12v-1.382a1.5 1.5 0 0 1 .83-1.342L6 6.691V3c0-.568.14-1.271.428-1.849Z" />
				</svg>
				대탈출
			</a>
			<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
				data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link active" aria-current="page" href="${contextPath}/product/asia">아시아</a></li>
					<li class="nav-item"><a class="nav-link active" aria-current="page" href="${contextPath}/product/europe">유럽</a></li>
					<li class="nav-item"><a class="nav-link active" aria-current="page" href="${contextPath}/product/america">아메리카</a></li>
					<li class="nav-item"><a class="nav-link active" aria-current="page" href="${contextPath}/product/oceania">오세아니아</a></li>
				</ul>
				<ul class="navbar-nav ml-auto mb-2 mb-lg-0">
					<c:choose>
						<c:when test="${!empty sessionScope.userInfo}">
							<li class="nav-item"><a class="nav-link active" aria-current="page"
									href="member/logOut">로그아웃</a></li>
							<c:choose>
								<c:when test="${userInfo.member_master eq 'Y'}">
									<li class="nav-item"><a class="nav-link active" aria-current="page"
											href="d">관리자페이지</a></li>
								</c:when>
								<c:otherwise>
									<li class="nav-item"><a class="nav-link active" aria-current="page"
											href="${contextPath}/member/myPage">마이페이지</a></li>
								</c:otherwise>
							</c:choose>
						</c:when>
						<c:otherwise>
							<li class="nav-item"><a class="nav-link active" aria-current="page"
									href="${contextPath}/member/login">로그인</a></li>
							<li class="nav-item"><a class="nav-link active" aria-current="page" href="${contextPath}/nomember/index">예약확인</a>
							</li>
						</c:otherwise>
					</c:choose>
					<li class="nav-item"><a class="nav-link active" aria-current="page"
							href="${contextPath}/board/service">고객센터</a></li>
				</ul>
			</div>
		</div>
	</nav>