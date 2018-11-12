<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="include/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
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
						<!-- 나의 생산일지 Tab 메뉴 시작 -->
						<div id="contentstab_my_wrap">
							<div class="contentstab_my" class="active" rel="tab1">나의 생산일지</div>
							<div class="contentstab_my_2"></div>
							<div class="contentstab_my" rel="tab2">전체 농산물 생산일지</div>
							<div class="contentstab_my_2"></div>
							<div class="contentstab_my" rel="tab3">전체 수산물 생산일지</div>
						</div>
						<!-- 나의 생산일지 Tab 메뉴 끝 -->
						<!-- 나의 생산일지 시작(디폴트로 표시) -->
						<div id="tab1" class="tab_content_my">
							<div id="myinfo_area">
								<div id="myinfo_photoarea">
									<span><img src="myphoto/myphoto.png" alt="프로필 사진" id="myphoto"></span>
									<div class="filebox"> 
										<label for="ex_file">등록/수정</label> 
										<input type="file" id="ex_file"> 
									</div>																		
								</div>
								<div id="myinfo_info">
									<table>
										<tr>
											<td class="myinfotd">닉네임 : <a href="javascript:;" class="js-open_my open-button_my"><b>니들이농사를알어</b></a></td>
										</tr>
										<tr>
											<td class="myinfotd">거주지 : 전라남도 담양군 월산면</td>
										</tr>
										<tr>
											<td class="myinfotd">
												이메일 : 
												<input type="radio" id="emailclose" name="emailopen" value="eclose" checked="checked">
												<label for="emailclose">비공개</label>
												<input type="radio" id="emailopen" name="emailopen" value="eopen">
												<label for="emailopen">공개</label>													
											</td>
										</tr>
										<tr>
											<td class="myinfotd">
												휴대폰 : 
												<input type="radio" id="phoneclose" name="phoneopen" value="pclose" checked="checked">
												<label for="phoneclose">비공개</label>
												<input type="radio" id="phoneopen" name="phoneopen" value="popen">
												<label for="phoneopen">공개</label>													
											</td>
										</tr>
										<tr>
											<td class="myinfotd" style="padding-top: 5px;">
												<form name="whatdoing">
												 	<select id="doing" name="doing" title="직종" class="doformstyle">
														<option value="직종 선택">직종 선택</option>
														<option value="농부">농부</option>
														<option value="어부">어부</option>
														<option value="일반">일반</option>
													</select>
												</form>
											</td>
										</tr>
									</table>
								</div>
								<div id="myinfo_intro">
									<form name="insertinfo"> 
										<textarea id="text_content_my" maxlength="150" name="contents" onkeyup="len_chk()" class="textzones" placeholder="150자로 간단한 자기소개를 적어주세요."></textarea>
										<span id="text_counter_my">0</span>/150자 까지 입력 가능																											
									</form>
								</div>
								<div id="hrdiv"><hr></div>
								<button id="myinfo_save_btn">저장</button>								
							</div>
							<div class="diary_header">
								<table width="100%">
									<tr>
										<td id="cbtd1">
											<div class="checks etrans">
											  <input type="checkbox" id="ex_chk3"> 
											  <label for="ex_chk3" class="ch_label">전체선택</label>
											</div>
										</td>
										<td id="cbtd2">
											<button class="del_list_btn">삭제</button><button onclick="location.href='mydiary_write.bizpoll'" class="write_btn" >일지 작성</button>
										</td>
										<td id="cbtd3">
											<div class="wrap_zone">
												<div id="select_kind">
													<select id="selectkind" name="selectkind" title="검색 조건" class="sformstyle">
														<option value="검색 조건">검색 조건</option>
														<option value="제목">제목</option>
														<option value="내용">내용</option>
														<option value="제목+내용">제목+내용</option>														
													</select>
												</div>
												<div id="input_keyword_zone">
													<input id="search_keyword" type="text" alt="" placeholder="검색어를 입력해 주세요."><button id="search_btn">검색</button>
												</div>
												<div id="select_kind">
													<select id="selectkind" name="selectkind" title="분류 선택" class="sformstyle">
														<option value="분류 선택">분류 선택</option>
														<option value="생산일지">생산일지</option>
														<option value="일반글">일반글</option>
													</select>
												</div>												
											</div>								
										</td>
										<td id="cbtd4">
											<select id="searchperiod" name="searchperiod" title="연도 선택" class="sformstyle">
												<option value="연도 선택">연도 선택</option>
												<option value="전체">전체</option>
												<option value="2018년">2018년</option>
											</select>
										</td>
									</tr>
								</table>								
							</div>
							<!-- 리스트 시작 -->
							<table id="list_table_list">
								<tr class="tstyle">
									<td class="checks etrans list_check">											
										<input type="checkbox" id="ex_chk3_list1"> 
										<label for="ex_chk3_list1" class="ch_label"></label>																						
									</td>
									<td class="td_img_style">																				
										<a href="mydiary_detail.bizpoll" target="_self"><img src="boardupimages/1.png" alt="프로필 사진" id="boardphoto"></a>
									</td>
									<td class="list_contents_space">
									
									</td>
									<td>
										<table class="list_text_table">
											<tr>
												<td class="list_text_table_title">연아가 귀농해서 첫 친구를 만들었습니다. 그래서 인지 오늘 기분이 너무좋아보여</td>
											</tr>										
											<tr>
												<td class="list_text_table_contents">
													<a href="mydiary_detail.bizpoll" target="_self">
														2018년도 햇감자를 오늘 수확했어요. 2018년도 햇감자를 오늘 수확했어요. 
														2018년도 햇감자를 오늘 수확했어요. 2018년도 햇감자를 오늘 수확했어요. 
														2018년도 햇감자를 오늘 수확했어요. 2018년도 햇감자를 오늘 수확했어요. 
														2018년도 햇감자를 오늘 수확했어요. 2018년도 햇감자를 오늘 수확했어요. 
														2018년도 햇감자를 오늘 수확했어요. 2018년도 햇감자를 오늘 수확했어요.
														2018년도 햇감자를 오늘 수확했어요. 2018년도 햇감자를 오늘 수확했어요.
														2018년도 햇감자를 오늘 수확했어요. 2018년도 햇감자를 오늘 수확했어요. 
														2018년도 햇감자를 오늘 수확했어요. 2018년도 햇감자를 오늘 수확했어요. 
														2018년도 햇감자를 오늘 수확했어요.	 2018년도 햇감자를 오늘 수확했어요.
														2018년도 햇감자를 오늘 수확했어요. 2018년도 햇감자를 오늘 수확했어요.
														2018년도 햇감자를 오늘 수확했어요. 2018년도 햇감자를 오늘 수확했어요.
													</a>										
												</td>
											</tr>
											<tr>
												<td class="list_text_util">
													게시글 : <span style="color: blue;">일반글</span>&nbsp;공개 : <span style="color: blue;">비공개</span>&nbsp;조회 : <span style="color: blue;">120</span>&nbsp;좋아요 : <span style="color: blue;">51</span>&nbsp;댓글 : <span style="color: blue;">120</span>&nbsp;작성 : <span style="color: blue;">2018년 11월 1일</span>											
												</td>
											</tr>																			
										</table>
									</td>
								</tr>
								<tr class="tstyle">
									<td class="checks etrans list_check">											
										<input type="checkbox" id="ex_chk3_list2"> 
										<label for="ex_chk3_list2" class="ch_label"></label>								
									</td>
									<td class="td_img_style">																				
										<a href="mydiary_detail.bizpoll" target="_self"><img src="boardupimages/2.png" alt="프로필 사진" id="boardphoto"></a>
									</td>
									<td>
									
									</td>
									<td>
										<table class="list_text_table">
											<tr>
												<td class="list_text_table_title">[ 감자 ]&nbsp;감자를 수확했어요~</td>
											</tr>										
											<tr>
												<td class="list_text_table_contents">
													<a href="mydiary_detail.bizpoll" target="_self">
														2018년도 햇감자를 오늘 수확했어요. 2018년도 햇감자를 오늘 수확했어요. 
														2018년도 햇감자를 오늘 수확했어요. 2018년도 햇감자를 오늘 수확했어요. 
														2018년도 햇감자를 오늘 수확했어요. 2018년도 햇감자를 오늘 수확했어요. 
														2018년도 햇감자를 오늘 수확했어요. 2018년도 햇감자를 오늘 수확했어요. 
														2018년도 햇감자를 오늘 수확했어요. 2018년도 햇감자를 오늘 수확했어요.
														2018년도 햇감자를 오늘 수확했어요. 2018년도 햇감자를 오늘 수확했어요.
														2018년도 햇감자를 오늘 수확했어요. 2018년도 햇감자를 오늘 수확했어요. 
														2018년도 햇감자를 오늘 수확했어요. 2018년도 햇감자를 오늘 수확했어요. 
														2018년도 햇감자를 오늘 수확했어요.	 2018년도 햇감자를 오늘 수확했어요.
														2018년도 햇감자를 오늘 수확했어요. 2018년도 햇감자를 오늘 수확했어요.
														2018년도 햇감자를 오늘 수확했어요. 2018년도 햇감자를 오늘 수확했어요. 
													</a>										
												</td>
											</tr>
											<tr>
												<td class="list_text_util">
													게시글 : <span style="color: red;">생산일지</span>&nbsp;공개 : <span style="color: red;">공개</span>&nbsp;조회 : <span style="color: red;">120</span>&nbsp;좋아요 : <span style="color: red;">51</span>&nbsp;댓글 : <span style="color: red;">120</span>&nbsp;작성 : <span style="color: red;">2018년 11월 1일</span>											
												</td>
											</tr>																			
										</table>
									</td>
								</tr>
							</table>
							<div class="hr">
						
							</div>
							<div class="bord_list_paging">
								<div class="pagination">
									<a href="#">&laquo;</a>
									<a href="#">1</a>
									<a class="active" href="#">2</a>
									<a href="#">3</a>
									<a href="#">4</a>
									<a href="#">5</a>
									<a href="#">6</a>
									<a href="#">7</a>
									<a href="#">8</a>
									<a href="#">9</a>
									<a href="#">10</a>
									<a href="#">&raquo;</a>
								</div>
							</div>
						</div>														
						<!-- 나의 생산일지 끝(디폴트로 표시) -->
						<!-- 전체 농산물 생산일지 시작(디폴트로 숨김) -->
						<div id="tab2" class="tab_content_my">
							<table width="100%">
								<tr>
									<td id="cbtd3">
										<div class="wrap_zone">
											<div id="select_kind">
												<select id="selectkind" name="selectkind" title="검색 조건" class="sformstyle">
													<option value="검색 조건">검색 조건</option>
													<option value="제목">제목</option>
													<option value="내용">내용</option>
													<option value="제목+내용">제목+내용</option>
													<option value="작성자">작성자</option>
												</select>
											</div>
											<div id="input_keyword_zone">
												<input id="search_keyword" type="text" alt="" placeholder="검색어를 입력해 주세요."><button id="search_btn">검색</button>
											</div>
											<div id="select_order">
												<select id="selectorder" name="selectorder" title="정렬 선택" class="sformstyle">
													<option value="정렬 선택">정렬 선택</option>
													<option value="최신순">최신순</option>
													<option value="좋아요순">좋아요순</option>
													<option value="조회순">조회순</option>
													<option value="댓글순">댓글순</option>
												</select>
											</div>
											<div id="select_kind">
												<select id="selectkind" name="selectkind" title="분류 선택" class="sformstyle">
													<option value="분류 선택">분류 선택</option>
													<option value="생산일지">생산일지</option>
													<option value="일반글">일반글</option>
												</select>
											</div>
										</div>								
									</td>
									<td id="cbtd4">
										<select id="searchperiod" name="searchperiod" title="연도 선택" class="sformstyle">
											<option value="연도 선택">연도 선택</option>
											<option value="전체">전체</option>
											<option value="2018년">2018년</option>
										</select>
									</td>
								</tr>
							</table>								
							<div class="list_space">
									
							</div>
							<table width="100%" id="list_table_list1">
								<tr style="border-bottom: 1px solid #dddddd;">
									<th width="50px">번호</th>
									<th>제목</th>
									<th width="180px">작성자</th>
									<th width="100px">작성일</th>
									<th width="50px">좋아요</th>
									<th width="50px">조회</th>
									<th width="50px">댓글</th>
								</tr>
								<tr class="tstyle1">
									<td class="title_td" width="50px">2</td>
									<td class="title_td_left"><span class="list_detail_title"><a href="#" target="_self">[ 일반글 ]&nbsp;연아가 귀농해서 첫 친구를 만들었습니다. 그래서 인지 오늘 기분이 너무좋아보여</a></span></td>
									<td class="title_td_left" width="180px"><span class="list_detail_title"><a href="javascript:;" class="js-open_my open-button_my"><b>니들이농사를알어바보멍충이들아</b></a></span></td>
									<td class="title_td" width="100px">2018.01.01</td>
									<td class="title_td" width="50px">23</td>
									<td class="title_td" width="50px">100</td>
									<td class="title_td" width="50px">5</td>
								</tr>
								<tr class="tstyle1">
									<td class="title_td">1</td>
									<td class="title_td_left"><span class="list_detail_title"><a href="#" target="_self">[ 생산일지 : 감자 ]&nbsp;감자를 수확했어요~</a></span></td>
									<td class="title_td_left"><span class="list_detail_title"><a href="javascript:;" class="js-open_my open-button_my"><b>니들이농사를알어</b></a></span></td>
									<td class="title_td">2018.01.01</td>
									<td class="title_td">23</td>
									<td class="title_td">100</td>
									<td class="title_td">5</td>
								</tr>								
							</table>							
							<div class="hr">
							
							</div>
							<div class="bord_list_paging">
								<div class="pagination">
									<a href="#">&laquo;</a>
									<a href="#">1</a>
									<a class="active" href="#">2</a>
									<a href="#">3</a>
									<a href="#">4</a>
									<a href="#">5</a>
									<a href="#">6</a>
									<a href="#">7</a>
									<a href="#">8</a>
									<a href="#">9</a>
									<a href="#">10</a>
									<a href="#">&raquo;</a>
								</div>
							</div>									
						</div>
						<!-- 전체 농산물 생산일지 끝(디폴트로 숨겨짐) -->
						<!-- 전체 수산물 생산일지 시작(딜폴트로 숨겨짐) -->
						<div id="tab3" class="tab_content_my">
							<table width="100%">
								<tr>
									<td id="cbtd3">
										<div class="wrap_zone">
											<div id="select_kind">
												<select id="selectkind" name="selectkind" title="검색 조건" class="sformstyle">
													<option value="검색 조건">검색 조건</option>
													<option value="제목">제목</option>
													<option value="내용">내용</option>
													<option value="제목+내용">제목+내용</option>
													<option value="작성자">작성자</option>
												</select>
											</div>
											<div id="input_keyword_zone">
												<input id="search_keyword" type="text" alt="" placeholder="검색어를 입력해 주세요."><button id="search_btn">검색</button>
											</div>
											<div id="select_order">
												<select id="selectorder" name="selectorder" title="정렬 선택" class="sformstyle">
													<option value="정렬 선택">정렬 선택</option>
													<option value="최신순">최신순</option>
													<option value="좋아요순">좋아요순</option>
													<option value="조회순">조회순</option>
													<option value="댓글순">댓글순</option>
												</select>
											</div>
											<div id="select_kind">
												<select id="selectkind" name="selectkind" title="분류 선택" class="sformstyle">
													<option value="분류 선택">분류 선택</option>
													<option value="생산일지">생산일지</option>
													<option value="일반글">일반글</option>
												</select>
											</div>
										</div>								
									</td>
									<td id="cbtd4">
										<select id="searchperiod" name="searchperiod" title="연도 선택" class="sformstyle">
											<option value="연도 선택">연도 선택</option>
											<option value="전체">전체</option>
											<option value="2018년">2018년</option>
										</select>
									</td>
								</tr>
							</table>								
							<div class="list_space">
									
							</div>
							<table width="100%" id="list_table_list1">
								<tr style="border-bottom: 1px solid #dddddd;">
									<th width="50px">번호</th>
									<th>제목</th>
									<th width="180px">작성자</th>
									<th width="100px">작성일</th>
									<th width="50px">좋아요</th>
									<th width="50px">조회</th>
									<th width="50px">댓글</th>
								</tr>
								<tr class="tstyle1">
									<td class="title_td" width="50px">2</td>
									<td class="title_td_left"><span class="list_detail_title"><a href="#" target="_self">[ 일반글 ]&nbsp;연아가 귀어해서 첫 친구를 만들었습니다. 그래서 인지 오늘 기분이 너무좋아보여</a></span></td>
									<td class="title_td_left" width="180px"><span class="list_detail_title"><a href="javascript:;" class="js-open_my open-button_my"><b>니들이농사를알어바보멍충이들아</b></a></span></td>
									<td class="title_td" width="100px">2018.01.01</td>
									<td class="title_td" width="50px">23</td>
									<td class="title_td" width="50px">100</td>
									<td class="title_td" width="50px">5</td>
								</tr>
								<tr class="tstyle1">
									<td class="title_td">1</td>
									<td class="title_td_left"><span class="list_detail_title"><a href="#" target="_self">[ 생산일지 : 오징어 ]&nbsp;오징어가 풍년입니다~</a></span></td>
									<td class="title_td_left"><span class="list_detail_title"><a href="javascript:;" class="js-open_my open-button_my"><b>니들이농사를알어</b></a></span></td>
									<td class="title_td">2018.01.01</td>
									<td class="title_td">23</td>
									<td class="title_td">100</td>
									<td class="title_td">5</td>
								</tr>								
							</table>							
							<div class="hr">
							
							</div>
							<div class="bord_list_paging">
								<div class="pagination">
									<a href="#">&laquo;</a>
									<a href="#">1</a>
									<a class="active" href="#">2</a>
									<a href="#">3</a>
									<a href="#">4</a>
									<a href="#">5</a>
									<a href="#">6</a>
									<a href="#">7</a>
									<a href="#">8</a>
									<a href="#">9</a>
									<a href="#">10</a>
									<a href="#">&raquo;</a>
								</div>
							</div>
						</div>	
						<!-- 전체 수산물 생산일지 끝(딜폴트로 숨겨짐) -->								
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