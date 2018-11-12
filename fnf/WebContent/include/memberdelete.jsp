<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
</head>
<body>	
	<div id="popLayer_memberdele">
		<div class="js-layer_memberdele  allback_memberdele  hidden_memeberdele">
			<div id="title_back">
				<span id="allclose_my" class="infoclose_btn_memeberdele"><i class="fa fa-close"></i></span>
				<div id="title_my">회원탈퇴</div>
			</div>
			<div id="contents_back_memberdele">
				<div id="info_box_my">
					<form name="frm_del" id="frm_del">
						<div>
							<span style="font-size: 14px">중요한 내용이므로 주의 깊게 읽어주세요.
							<hr>
							다양한 '호박고구마와 자반고등어' 서비스에 대한 액세스를 제공하는 계정을 삭제하려고 합니다.
							더 이상 '호박고구마와 자반고등어' 서비스를 이용할 수 없으며 계정과 데이터 모두가 삭제됩니다.
							<br>
							<br>
							단, 회원탈퇴 후 언제든지 재 가입을 통해 '호박고구마와 자반고등어' 서비스를 이용하실 수 있습니다.
							이점 참고하여 회원탈퇴여부를 결정해 주시기 바랍니다.</span>
							<br>
							<br>
						</div>				
						<div class="member_el">
							<div>
								<label for="inputpw1" class="member_title">회원탈퇴 확인 비밀번호<span class="span_only"> (필수)</span></label>
							</div>
							<div class="div_input" id="str_pw_ch">
								<input type="password" alt="비밀번호 입력" id="inputpw1" name="inputpw1" class="input_login">
							</div>						
						</div>
						<span class="err_check_msg">필수 정보입니다.</span>						
						<div class="agree_btn_zone">
							<button type="button" class="noagree_btn" id="btn_del_can">취소</button><button type="button" id="btn_del" class="okagree_btn">탈퇴</button>
						</div>
					</form>								
				</div>	
			</div>				
		</div>		
	</div>
</body>
</html>