<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="include/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=1d73404e3145312efa07680cbf12840e&libraries=services,clusterer,drawing"></script>
</head>
<body>
	<article>		
		<!-- 전체 body 3개의 영역으로 나누기 시작
		     1. 좌측 전체 내용 표시 영역
		     2. 사이 여백 조절 영역
		     3. 우측 배너광고2 영역 -->	
		<table id="bodyall">
			<tr>
				<!-- 1. 좌측 전체 내용 표시 영역 시작 -->
				<td id="bodyalltd1">				
					<!-- 수산물 생산정보 내용 시작 -->
					<div id="zone_box">									
						<!-- 수산물 생산정보 타이틀 시작 -->
						<div id="contents_title" class="search_fish">
							&nbsp;&nbsp;수산물 생산정보
							<button id="search_open_fish" class="search_open_btn_fish">검색 조건 입력</button>																											
						</div>
						<!-- 수산물 생산정보 타이틀 끝 -->
						<!-- 수산물 생산정보 내용 시작 -->									
						<div class="gen_content">
							<!-- 검색 조건 시작 -->
							<div id="search_input_fish" class="hide">
								<!-- <form> -->
									<table id="searchbox_fish">
										<tr>
										 	<td class="searchboxtitle_fish">빅데이터 유형</td>
										 	<td class="searchboxtitle_fish">생산지역</td>
										 	<td class="searchboxtitle_fish">생산품목</td>
										 	<td class="searchboxtitle_fish">검색 기간</td>
										 	<td class="searchboxtitle_fish">검색</td>
										</tr>
										<tr>
											 <td class="searchboxtd_fish">											 	
												<input type="radio" id="government_fish" name="bigd" value="gover" checked="checked">
												<label for="government_fish">정부</label>
												<br>
												<br>
												<input type="radio" id="ouruser_fish" name="bigd" value="user" disabled>
												<label for="ouruser_fish">회원</label>	
											 </td>
											 <td class="searchboxtd_fish">
											 	<select id="location_fish" name="location_fish" title="생산지역" class="formstyle_fish">
													<option value="생산지역">생산지역</option>
													<option value="전국">전국</option>													
													<option value="부산시">부산시</option>													
													<option value="인천시">인천시</option>
													<option value="울산시">울산시</option>
													<option value="경기도">경기도</option>
													<option value="강원도">강원도</option>													
													<option value="충청남도">충청남도</option>
													<option value="전라북도">전라북도</option>
													<option value="전라남도">전라남도</option>
													<option value="경상북도">경상북도</option>
													<option value="경상남도">경상남도</option>
													<option value="제주도">제주도</option>
												</select>
											 </td>
											 <td class="searchboxtd_fish" width="200px">
											 	<form name="select_product">
												 	<select id="product1_fish" name="product1_fish" title="생산품목 선택" class="formstyle_fish" onChange="showSub(this.options[this.selectedIndex].value);">
												 		<option value="생산품목 선택">생산품목 선택</option>
														<option value="어류">어류</option>
														<option value="연체동물">연체동물</option>
														<option value="해조류">해조류</option>
													</select>
													<select id="product1_1_fish" name="product1_1_fish" title="어류 선택" class="formstyle_fish" style="display: none;">
														<option value="어류 선택">어류 선택</option>
														<option value="고등어">고등어</option>
														<option value="갈치">갈치</option>
														<option value="부시리">부시리</option>
													</select>
													<select id="product1_2_fish" name="product1_2_fish" title="연체동물 선택" class="formstyle_fish" style="display: none;">
														<option value="연체동물 선택">연체동물 선택</option>
														<option value="낙지">낙지</option>
														<option value="오징어">오징어</option>
														<option value="문어">문어</option>
													</select>
													<select id="product1_3_fish" name="product1_3_fish" title="해조류 선택" class="formstyle_fish" style="display: none;">
														<option value="해조류 선택">해조류 선택</option>
														<option value="김">김</option>
														<option value="파래">파래</option>
														<option value="미역">미역</option>
													</select>
												</form>
											 </td>
											 <td class="searchboxtd_fish">
											 	<select id="period_fish" name="period_fish" title="기간 선택" class="formstyle_fish">
													<option value="기간 선택">기간 선택</option>
													<option value="전체">전체</option>
													<option value="1년">1년</option>
													<option value="2년">2년</option>
													<option value="3년">3년</option>
													<option value="4년">4년</option>
													<option value="5년">5년</option>
													<option value="6년">6년</option>
													<option value="7년">7년</option>
													<option value="8년">8년</option>
													<option value="9년">9년</option>
													<option value="10년">10년</option>
													<option value="20년">20년</option>
												</select>
											 </td>
											 <td class="searchboxtd_fish" width="100px">
											 	<button id="search_to_fish" class="search_do_btn_fish">검색 실행</button>											 	
											 </td>
										</tr>
									</table>
								<!-- </form> -->
							</div>
							<!-- 검색 조건 끝 -->
							<!-- 다음지도 API 시작 -->
							<div class="map_wrap_fish">
								<div id="map" style="width:100%;height:100%;position:relative;overflow:hidden;"></div>
								<div class="custom_typecontrol radius_border">
							        <span id="btnRoadmap" class="selected_btn" onclick="setMapType('roadmap')">지도</span>
							        <span id="btnSkyview" class="btn" onclick="setMapType('skyview')">스카이뷰</span>
							    </div>
							</div>							
							<button onclick="panTo()" class="map_origin_fish">원위치 이동</button> 							
							<!-- 다음지도 API 끝 -->
							<!-- 결과 그래프 표시 시작 -->
							<div id="search_graph_fish">
								이곳에 선택된 수산물에 대한 결과 그래프 표시<br><br>
								display none 했다가 결과 생기면 block으로 변경
							</div>
							<!-- 결과 그래프 표시 끝 -->
							<!-- 결과 분석내용 시작 -->
							<div id="search_graph_text_fish">
								이곳에 선택된 수산물에 대한 기온와 수산물 생산량의 밀접한 관계에 대한 상관분석 내용과 기온, 강수량, 가격, 표준 물가(서울버스요금) 등이 생산량에 미치는 영향에 대한 회귀분석 내용 표시<br><br>
								display none 했다가 결과 생기면 block으로 변경
							</div>
							<!-- 결과 분석내용 끝 -->
						</div>									
						<!-- 농산물 생산정보 내용 끝 -->																																		
					</div>
					<!-- 수산물 생산정보 내용 끝 -->	
				</td>
				<!-- 1. 좌측 전체 내용 표시 영역 끝 -->			
				<!-- 2. 사이 여백 조절 영역 시작 -->
				<td id="bodyalltd2"></td>
				<!-- 2. 사이 여백 조절 영역 끝 -->
				<!-- 3. 우측 배너광고 영역 시작 -->
				<td id="bodyalltd3">
					<%@ include file="include/bannerad.jsp"%>
				</td>
				<!-- 3. 우측 배너광고 영역 끝 -->
			</tr>	
		</table>
		<!-- 전체 바디 3개의 영역으로 나누기 끝 -->
	</article>
	<!-- 전체 바디 3개의 영역으로 나누기 끝 -->	
	<br>
	<br>
	<br>
	<br>
	<br>	
	<!-- Footer 시작 -->
	<%@ include file="include/footer.jsp"%>	
	<!-- Footer 끝 -->
</body>
<!-- 스크립트,jQuery 시작 -->
<script type="text/javascript" src="js/daummap.js"></script>
<!-- 스크립트,jQuery 끝 -->
</html>