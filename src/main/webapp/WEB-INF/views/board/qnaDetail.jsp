<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/header.jsp" %>
<section class="container">
	<div class="row">
		<div class="col-md-2">
			<div class="card mb-3">
				<div class="card-header">
					고객센터
				</div>
				<div class="list-group list-group-flush">
					<a href="${contextPath}/board/service" class="list-group-item active">질문과 답변</a>
					<a href="${contextPath}/board/service2" class="list-group-item">자주 묻는 질문</a>
					<a href="${contextPath}/board/service3" class="list-group-item">공지사항</a>
				</div>
			</div>
		</div>
		<div class="col-md-10 mb-5">
			<h2 class="mb-4">질문과 답변</h2>
			<div class="card mb-5">
				<div class="card-header">
					<button class="btn-close float-end"></button>
					<h3 class="card-title">질문 제목</h3>
					<p class="card-text text-muted d-inline">작성자</p>
					<p class="card-text text-muted d-inline">2022-11-11</p>
				</div>
				<div class="card-body">
					<p class="catd-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis quia
						repellendus provident vero reiciendis cumque dolorum facere commodi voluptatum omnis! Iste ullam
						atque culpa voluptate nostrum dignissimos? Laboriosam, corrupti quibusdam.
						Incidunt, deserunt? Quasi laboriosam animi magni. Quibusdam repellendus corporis nulla inventore
						nostrum a ducimus animi natus eius vero nemo placeat excepturi iure accusamus, est voluptatem
						molestiae eaque illum officia doloremque!
						Repudiandae repellendus tenetur aperiam dolore ut, adipisci non perspiciatis culpa in minus
						dolorum accusamus ullam quibusdam, corporis ad? Doloribus cumque doloremque, tempora ratione
						unde eveniet tenetur veritatis expedita temporibus consequatur?</p>
				</div>
			</div>
			<div class="card mb-5">
				<div class="card-header">
					<button class="btn-close float-end"></button>
					<h3 class="card-title">답변 제목</h3>
					<p class="card-text text-muted d-inline">작성자</p>
					<p class="card-text text-muted d-inline">2022-11-11</p>
				</div>
				<div class="card-body">
					<p class="catd-text">Lorem ipsum dolor sit, amet consectetur adipisicing elit. Quae sint quidem quam
						quis voluptas totam autem corrupti error libero expedita. Nostrum illo unde vitae, laudantium
						modi ullam impedit numquam. Dolores?
						Incidunt soluta, deserunt ullam quibusdam earum voluptas. Facere, praesentium! Voluptatem,
						doloremque libero. Necessitatibus placeat quas sit dolorem laborum eaque architecto debitis
						corporis officiis in rem, mollitia temporibus molestiae neque eum!
						Odit aperiam repellendus, facere odio fugiat autem ipsum blanditiis, ipsa rerum minus
						voluptatibus sequi magnam at ipsam? Aliquam culpa placeat numquam! Cumque quis, deserunt rem
						voluptas et quasi deleniti qui.</p>
				</div>
			</div>
		</div>
	</div>
</section>
<%@ include file="../common/footer.jsp" %>