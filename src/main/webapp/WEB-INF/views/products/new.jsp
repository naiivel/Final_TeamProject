<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/header.jsp" %>
<section class="container mb-3">
    <h3 class="mb-3">여행상품 등록</h3>
    <form action="${contextPath}/products" method="post">
        <div class="row">
            <div class="col-lg-6 ">
                <div class="card p-3 border-0 h-100 d-flex flex-column justify-content-between ">
                    <div class="input-group">
                        <span class="input-group-text">대륙</span>
                        <div class="form-floating">
                            <select class="form-select" name="product_continent" id="selectContinent">
                                <option value="아시아">아시아</option>
                                <option value="유럽">유럽</option>
                                <option value="아메리카">아메리카</option>
                                <option value="오세아니아">오세아니아</option>
                            </select>
                            <label for="selectContinent">대륙</label>
                        </div>
                    </div>
                    <div class="input-group">
                        <span class="input-group-text">나라</span>
                        <div class="form-floating">
                            <input type="text" class="form-control" id="inputCountry" name="product_country">
                            <label for="inputCountry">나라이름</label>
                        </div>
                    </div>
                    <div class="input-group">
                        <span class="input-group-text">지역</span>
                        <div class="form-floating">
                            <input type="text" class="form-control" id="inputCity" name="product_city">
                            <label for="inputCity">지역이름</label>
                        </div>
                    </div>
                    <div class="input-group">
                        <span class="input-group-text">요금</span>
                        <div class="form-floating">
                            <input type="number" class="form-control" id="inputAdult" name="product_adult">
                            <label for="inputAdult">성인</label>
                        </div>
                        <div class="form-floating">
                            <input type="number" class="form-control" id="inputMinor" name="product_minor">
                            <label for="inputMinor">소인</label>
                        </div>
                    </div>
                    <div class="input-group">
                        <span class="input-group-text">항공편</span>
                        <div class="form-floating">
                            <input type="text" class="form-control" id="inputAirplane" name="product_airplane">
                            <label for="inputAirplane">--항공</label>
                        </div>
                    </div>
                    <div class="input-group">
                        <span class="input-group-text">출발일</span>
                        <input type="date" class="form-control" name="departure">
                    </div>
                    <div class="input-group">
                        <span class="input-group-text">도착일</span>
                        <input type="date" class="form-control" name="arrive">
                    </div>
                    <div class="input-group">
                        <span class="input-group-text">확보좌석</span>
                        <input type="number" class="form-control" name="product_seat">
                    </div>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="card p-3 border-0 h-100 d-flex flex-column justify-content-between ">
                    <div class="input-group input-group-lg mb-3">
                        <span class="input-group-text">상품명</span>
                        <input class="form-control" type="text" name="product_name">
                    </div>
                    <div class="mb-3">
                        <label for="inputInfo" class="form-label">상품 설명</label>
                        <textarea name="detail_info" class="form-control" id="inputInfo" rows="10"></textarea>
                    </div>
                    <div class="">
                        <label for="inputSchedule" class="form-label">상세 일정</label>
                        <textarea name="detail_schedule" class="form-control" id="inputSchedule" rows="10"></textarea>
                    </div>
                </div>
            </div>
        </div>
    </form>
    <div class="mb-3 text-center p-3">
        <label for="inputFile" class="form-label">이미지를 첨부하세요.</label>
        <input class="form-control form-control-sm mb-3" id="inputFile" type="file" name="detail_title_image" multiple>
        <button class="btn btn-success regist" data-num="${param.product_continent}">등록</button>
    </div>
</section>
<%@ include file="../common/footer.jsp" %>