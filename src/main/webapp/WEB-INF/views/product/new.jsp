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
            <form action="">
                <h3 class="mb-4">여행상품 등록</h3>
                <div class="row">
                    <div class="col-md-6">
                        <div class="input-group mb-3">
                            <span class="input-group-text">나라</span>
                            <div class="form-floating">
                                <input type="text" class="form-control" id="floatingInputGroup1" name="product_country">
                                <label for="floatingInputGroup1">나라이름</label>
                            </div>
                        </div>

                        <div class="input-group mb-3">
                            <span class="input-group-text">지역</span>
                            <div class="form-floating">
                                <input type="text" class="form-control" id="floatingInputGroup2" name="product_city">
                                <label for="floatingInputGroup2">지역이름</label>
                            </div>
                        </div>
                        <div class="input-group mb-3">
                            <span class="input-group-text">요금</span>
                            <div class="form-floating">
                                <input type="number" class="form-control" id="floatingInputGroup7" name="product_adult">
                                <label for="floatingInputGroup7">성인</label>
                            </div>
                            <div class="form-floating">
                                <input type="number" class="form-control" id="floatingInputGroup4" name="product_minor">
                                <label for="floatingInputGroup4">소인</label>
                            </div>
                        </div>
                        <div class="input-group mb-3">
                            <span class="input-group-text">항공편</span>
                            <div class="form-floating">
                                <input type="text" class="form-control" id="floatingInputGroup3" name="product_airplane">
                                <label for="floatingInputGroup3">--항공</label>
                            </div>
                        </div>
                        <div class="input-group mb-3">
                            <span class="input-group-text">출발일</span>
                            <input type="date" class="form-control" id="floatingInputGroup5" name="product_departure">
                        </div>
                        <div class="input-group mb-3">
                            <span class="input-group-text">도착일</span>
                            <input type="date" class="form-control" id="floatingInputGroup6" name="product_arrive">
                        </div>
                        <div class="input-group mb-3">
                            <span class="input-group-text">잔여좌석</span>
                            <input type="number" class="form-control" id="floatingInputGroup6" name="product_seat">
                        </div>
                        <div class="mb-3">
                            <label for="exampleFormControlTextarea1" class="form-label">상품 설명</label>
                            <textarea name="detail_info" class="form-control" id="exampleFormControlTextarea1" rows="10"></textarea>
                        </div>
                        <div class="mb-3">
                            <label for="exampleFormControlTextarea1" class="form-label">상세 일정</label>
                            <textarea name="detail_schedule" class="form-control" id="exampleFormControlTextarea1" rows="10"></textarea>
                        </div>
                    </div>
                    <div class="col-md-6 justify-content-center row">
                        <img src="${contextPath}/resources/image/sample.jpg" class="img-fluid mb-3">
                        <div class="mb-3 text-center">
                            <label for="formFileSm" class="form-label">이미지를 첨부하세요.</label>
                            <input class="form-control form-control-sm mb-3" id="formFileSm" type="file" name="detail_title_image">
                            <button class="btn btn-success">등록</button>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</section>
<%@ include file="../common/footer.jsp" %>