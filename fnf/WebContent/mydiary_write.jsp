<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="include/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="<%=path%>/smarteditor/js/service/HuskyEZCreator.js" charset="utf-8"></script>
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
					<!-- 나의 생산일지 내용 시작 -->
					<div id="zone_box">									
						<!-- 나의 생산일지 타이틀 시작 -->
						<div id="contents_title">
							&nbsp;&nbsp;나의 생산일지																				
						</div>
						<!-- 나의 생산일지 타이틀 끝 -->						
						<!-- 나의 생산일지 시작(디폴트로 표시) -->
						<div id="tab1" class="tab_content_my">
							<div id="myinfo_area">
								<div class="detail_title_div">
									<span class="detail_title">생산일지 작성</span>
								</div>																	
								<div id="border1">
								
								</div>
								<div class="detail_ilji">
									<table class="write_ilji_table">
										<tr>
											<td class="write_ilji_table_td1">&nbsp;&nbsp;<strong>제목</strong></td>
											<td class="write_ilji_table_td2">: <input type="text" id="write_title_p" placeholder="제목 입력" class="formstyle_write2"></td>
										</tr>
									</table>									
									<div class="writer_error">
										필수정보 입니다.															
									</div>
									<table class="write_ilji_table">
										<tr>
											<td class="write_ilji_table_td1">&nbsp;&nbsp;<strong>공개</strong></td>
											<td class="write_ilji_table_td2">: 
												<select id="board_kind" name="board_kind" title="게시글 공개설정" class="formstyle_write1">
													<option value="게시글 공개설정">게시글 공개설정</option>
													<option value="비공개">비공개</option>														
													<option value="공개">공개</option>
												</select>
											</td>
										</tr>
										<tr>
											<td class="write_ilji_table_td1">&nbsp;&nbsp;<strong>품목</strong></td>
											<td class="write_ilji_table_td2">: 
												<select id="board_kind" name="board_kind" title="품목 선택" class="formstyle_write1">
													<option value="품목 선택">품목 선택</option>
													<option value="농산물">농산물</option>														
													<option value="수산물">수산물</option>
												</select>
											</td>
										</tr>
										<tr>
											<td class="write_ilji_table_td1">&nbsp;&nbsp;<strong>게시글</strong></td>
											<td class="write_ilji_table_td2">: 
												<select id="board_kind" name="board_kind" title="게시글 종류" class="formstyle_write1">
													<option value="게시글 종류">게시글 종류</option>
													<option value="생산일지">생산일지</option>														
													<option value="일반글">일반글</option>
												</select>
											</td>
										</tr>										
									</table>
									<table class="write_ilji_table">
										<tr>
											<td class="write_ilji_table_td1"></td>
											<td class="write_ilji_table_td2">
												<div class="write_td_div1">&nbsp;&nbsp;<strong>생산지 :</strong>&nbsp;&nbsp;전라남도 담양군 월산면</div>														
												<div class="write_td_div2">&nbsp;&nbsp;<strong>생산품 :</strong>&nbsp;&nbsp;</div>
												<div class="write_td_div3">
													<form name="select_product">
													 	<select id="product" name="product" title="생산품목 선택" class="formstyle_write" onChange="showSub(this.options[this.selectedIndex].value);">
															<option value="생산품목 선택">생산품목 선택</option>
															<option value="곡물">곡물</option>
															<option value="야채">야채</option>
															<option value="과일">과일</option>
														</select>
														<select id="product1_1" name="product1_1" title="곡물 선택" class="formstyle_write" style="display: none;">
															<option value="곡물 선택">곡물 선택</option>
															<option value="쌀">쌀</option>
															<option value="보리">보리</option>
															<option value="현미">현미</option>
														</select>
														<select id="product1_2" name="product1_2" title="야채 선택" class="formstyle_write" style="display: none;">
															<option value="야채 선택">야채 선택</option>
															<option value="배추">배추</option>
															<option value="고추">고추</option>
															<option value="무">무</option>
														</select>
														<select id="product1_3" name="product1_3" title="과일 선택" class="formstyle_write" style="display: none;">
															<option value="과일 선택">과일 선택</option>
															<option value="사과">사과</option>
															<option value="오렌지">오렌지</option>
															<option value="수박">수박</option>
														</select>
													</form>
												</div>
												<div class="writer_error">
													필수정보 입니다.															
												</div>
												<div class="write_td_div2">&nbsp;&nbsp;<strong>생산일 :</strong>&nbsp;&nbsp;</div>
												<div class="write_td_div3">
													<select id="searchperiod" name="searchperiod" title="연도 선택" class="formstyle_write">
														<option value="연도 선택">연도 선택</option>														
														<option value="2018">2018</option>
														<option value="2019">2019</option>
														<option value="2020">2020</option>
													</select> 년
													<select id="searchperiod" name="searchperiod" title="월 선택" class="formstyle_write">
														<option value="월 선택">월 선택</option>														
														<option value="1">1</option>
														<option value="2">2</option>
														<option value="3">3</option>
														<option value="4">4</option>
														<option value="5">5</option>
														<option value="6">6</option>
														<option value="7">7</option>
														<option value="8">8</option>
														<option value="9">9</option>
														<option value="10">10</option>
														<option value="11">11</option>
														<option value="12">12</option>
													</select> 월
													<input type="text" maxlength="2" id="productday" name="productday" placeholder="숫자로만 일 입력" class="formstyle_write" numberOnly> 일												
												</div>
												<div class="writer_error">
													필수정보 입니다.															
												</div>												
												<div class="write_td_div2">&nbsp;&nbsp;<strong>판매가 :</strong>&nbsp;&nbsp;</div>
												<div class="write_td_div3">
													<input type="text" id="productprice" name="productprice" placeholder="숫자로만 가격 입력" class="formstyle_write" numberOnly>													
												</div>
												<div class="writer_error">
													필수정보 입니다.															
												</div>
												<div class="write_td_div5">&nbsp;&nbsp;<strong>판매처 :</strong>&nbsp;&nbsp;</div>
												<div class="write_td_div4">
													<input type="text" id="productsaler" name="productsaler" placeholder="판매처 입력" class="formstyle_write">													
												</div>
												<div class="writer_error">
													필수정보 입니다.															
												</div>				
											</td>
										</tr>																		
									</table>
									<div id="border4">
								
									</div>																		
									<div class="write_ilji_table_td5">
										<textarea name="content" id="content" value="" class="formstyle_writing"></textarea>
										<script type="text/javascript">
											var oEditors = [];
											nhn.husky.EZCreator.createInIFrame({
												oAppRef: oEditors,
												elPlaceHolder: "content",
												sSkinURI: "<%=path%>/smarteditor/SmartEditor2Skin.html",
												fCreator: "createSEditor2"
											});
										</script>
									</div>
									<div class="writer_error">
										필수정보 입니다.															
									</div>
									<table class="write_ilji_table">
										<tr>
											<td class="write_ilji_table_td1">&nbsp;&nbsp;<strong>파일1</strong></td>
											<td class="write_ilji_table_td2">: <input type="text" id="fileup1" placeholder="파일 찾기" class="formstyle_write3">
											<label for="fileup">파일</label> 
											<input type="file" id="fileup">
											</td>
										</tr>
										<tr>
											<td class="write_ilji_table_td1">&nbsp;&nbsp;<strong>파일2</strong></td>
											<td class="write_ilji_table_td2">: <input type="text" id="fileup2" placeholder="파일 찾기" class="formstyle_write3">
											<label for="fileup">파일</label> 
											<input type="file" id="fileup">
											</td>
										</tr>
										<tr>
											<td class="write_ilji_table_td1">&nbsp;&nbsp;<strong>파일3</strong></td>
											<td class="write_ilji_table_td2">: <input type="text" id="fileup3" placeholder="파일 찾기" class="formstyle_write3">
											<label for="fileup">파일</label> 
											<input type="file" id="fileup">
											</td>
										</tr>
									</table>
									<div class="writer_cuation">
										&nbsp;&nbsp;* 파일은 최대 3개까지 첨부가능하며 1개당 2MB를 초과할 수 없습니다.															
									</div>									
									<div id="border4">
								
									</div>												
									<div id="border1">
								
									</div>
									<div id="border3">
										<div class="buttonleft"><button onclick="location.href='mydiary.bizpoll'" class="go_list_btn">목록으로</button></div>
										<div class="buttonright"><button class="write_btn">일지 작성</button></div>
									</div>
								</div>
							</div>			
						</div>						
					</div>				
					<!-- 나의 생산일지 내용 끝 -->
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
</html>