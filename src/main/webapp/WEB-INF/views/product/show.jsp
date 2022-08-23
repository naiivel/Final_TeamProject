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
            <h3 class="mb-4">상세보기</h3>
            <div class="row mb-5">
                <div class="col-md-8" id="detailBox">
                
                    <h4>상품명 솰라솰라</h4>
                    <div class="table-responsive">
                        <table class="table table-borderless" style="font-size: 1rem;">
                            <tr>
                                <th>교통편</th>
                                <td colspan="2">대한항공</td>
                                <th>여행일정</th>
                                <td colspan="2">아시아 일본 [3박 4일]</td>
                            </tr>
                            <tr>
                                <th>출발일정</th>
                                <td colspan="5">출발 2022.09.01 (수) 14:45 | <span class="text-muted"
                                        style="font-size: 0.95rem;">현지기준 도착시간 2022.09.02 (수)
                                        16:50</span></td>
                            </tr>
                            <tr>
                                <th>도착일정</th>
                                <td colspan="5"><span class="text-muted" style="font-size: 0.95rem;">출발 2022.09.01 (수)
                                        14:45</span> | 도착 2022.09.02 (수)
                                    16:50</td>
                            </tr>
                            <tr>
                                <th rowspan="2">가격</th>
                                <td>성인</td>
                                <td>100,000원 <span class="text-muted" style="font-size: 0.8rem;">유류할증료 및 제세공과금 포함</span>
                                </td>
                            </tr>
                            <tr>
                                <td>소인</td>
                                <td>50,000원 <span class=" text-muted" style="font-size: 0.8rem;">유류할증료 및 제세공과금 포함</span>
                                </td>
                            </tr>
                            </td>
                            </tr>
                            <tr>
                                <th>예약현황</th>
                                <td colspan=" 5">예약 100석 (잔여좌석 5석 | 최소출발인원 20명)</td>
                            </tr>
                        </table>
                    </div>
                    <div class="text-center">
                        <button class="btn btn-success" id="reservBtn">예약하기</button>
                        <button class="btn btn-warning" id="qnaBtn">문의하기</button>
                    </div>
                </div>
                <div class="col-md-4">
                    <img src="${contextPath}/resources/image/sample.jpg" class="img-fluid mb-3">
                    <div class="card">
                        <div class="row align-items-center justify-content-center">
                            <div class="col-md-4">
                                <img src="${contextPath}/resources/image/profile.jpg" class="img-fluid rounded-start"
                                    alt="상담사 사진">
                            </div>
                            <div class="col-md-8">
                                <div class="card-body">
                                    <p class="card-text">상담사: 최기근</p>
                                    <p class="card-text">상담번호: 010-1234-5678</p>
                                    <p class="card-text">이메일: abcdef@gmail.com</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card mb-5">
                <div class="card-header">
                    <h6 class="card-title m-0 p-1">상품 설명</h3>
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
                    <h6 class="card-title m-0 p-1"">상세 일정</h3>
                </div>
                <div class=" card-body">
                        <p class="catd-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis quia
                            repellendus provident vero reiciendis cumque dolorum facere commodi voluptatum omnis! Iste
                            ullam
                            atque culpa voluptate nostrum dignissimos? Laboriosam, corrupti quibusdam.
                            Incidunt, deserunt? Quasi laboriosam animi magni. Quibusdam repellendus corporis nulla
                            inventore
                            nostrum a ducimus animi natus eius vero nemo placeat excepturi iure accusamus, est
                            voluptatem
                            molestiae eaque illum officia doloremque!
                            Repudiandae repellendus tenetur aperiam dolore ut, adipisci non perspiciatis culpa in minus
                            dolorum accusamus ullam quibusdam, corporis ad? Doloribus cumque doloremque, tempora ratione
                            unde eveniet tenetur veritatis expedita temporibus consequatur?</p>
                </div>
            </div>
        </div>
    </div>
</section>
<script>
	$("#reservBtn").click(function(){
		location.href = "${contextPath}/product/reserve";
	});
	
	$("#qnaBtn").click(function(){
		location.href = "${contextPath}/board/service";
	});
</script>
<%@ include file="../common/footer.jsp" %>