<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/header.jsp" %>
<section class="container">
    <div class="row">
        <div class="col-md-10 mb-2">
            <form action="${contextPath}/products" method="post">
                <select name="product_continent">
                    <option value="아시아">아시아</option>
                    <option value="유럽">유럽</option>
                    <option value="아메리카">아메리카</option>
                    <option value="오세아니아">오세아니아</option>
                </select>
                <label for="product_name">상품명</label>
                <input type="text" name="product_name" id="product_name" />
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
                            <input type="date" class="form-control" id="floatingInputGroup5" name="departure">
                        </div>
                        <div class="input-group mb-3">
                            <span class="input-group-text">도착일</span>
                            <input type="date" class="form-control" id="floatingInputGroup6" name="arrive">
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
                            <button class="btn btn-success regist" data-num="${param.product_continent}">등록</button>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</section>
<%@ include file="../common/footer.jsp" %>