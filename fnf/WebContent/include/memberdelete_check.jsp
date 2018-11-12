<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
</head>
<body>	
	<div id="modal_leavecheck">
		<div class="js-layer_memberdele  allback_memberdele  hidden_memeberdele">
			<div id="title_back">
				<span id="allclose_my" class="infoclose_btn_memeberdele"><i class="fa fa-close"></i></span>
				<div id="title_my">회원탈퇴</div>
			</div>
			<div id="contents_back_memberdele">
				<div id="info_box_my">
					<form action="memberleaveplay.bizpoll" method="POST" name="frm_delok" id="frm_delok">					
						<input type="hidden" name="delid" value="${sessionScope.loginUser.mid}">
						<div>
							정말 탈퇴하시겠습니까?
							<br>
							<br>
						</div>					
						<br>
						<br>				
						<div class="member_el">						
				 			<button type="button" class="noagree_btn" id="btn_del_can">취소</button><button type="button" id="btn_delok" class="okagree_btn">탈퇴</button>				
						</div>					
					</form>					
				</div>	
			</div>				
		</div>		
	</div>
</body>
</html>