<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../common/header.jsp" %>

<!-- 여기다 작성하셈 -->
	<section style="background: skyblue; min-height: 150px; overflow: hidden; padding-top: 50px; border-top: 1px solid black;" >
		<!-- <div style="max-width: 1100px; margin: 100px auto; padding: 0 8px;">
			<article style="display: block;">
				<h3>로그인</h3>
				<h4>탈출하라!</h4>
			</article>
			<form>
				<article style="width: 1100px;padding: 60px 130px; margin-bottom: 30px; border-top: 2px solid black; border-bottom: 1px solid blue;">
					<table style="border: 1px;">


					</table>

				</article>
			</form>


		</div> -->
		</section>
		<div class="container">
			<table class="table align-middle">
				<thead>
					<tr>
						<th colspan="2">대탈출</th>
					</tr>
				</thead>
				<tbody>
					<tr class="align-middle">
						<td><input type="text" name="" id=""></td>
						<td rowspan="2">
							<button class="btn">로그인</button>
						</td>
					</tr>
					<tr>
						<td ><input type="password" name="" id=""></td>
					</tr>
					<tr>
						<td colspan="2">
							<input type="checkbox" name="" id="sadf">
							<label for="sadf">아이디 저장</label>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<button class="btn">회원가입</button><button class="btn">아이디 찾기</button><button class="btn">비밀번호 찾기</button><button class="btn">비회원 예약확인</button>
						</td>
					</tr>
				</tbody>
			</table>
		</div>


<%@ include file="../common/footer.jsp" %>