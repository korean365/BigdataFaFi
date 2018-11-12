// 화면 공통 시작 ////////////////////////////////////////////////////////////////////////////////////////////////
/* 회원정보 레이어팝업 jQuery 시작 */
$('.js-open_my').click(function () {
	var scrollHeight = 0;
	
	scrollHeight = $("body").scrollTop();
	$("body").addClass("layer-open");
	$("#popLayer_my").css({
		"position" : "fixed", //최상위 div 고정 
		"top" : -scrollHeight // 최상위 div에 현재 스크롤된값 = 보이는화면만큼 top값 추가
	});
	
	$("#popLayer_my").show();
	
	var $layer = $('.js-layer_my');
    $layer.removeClass('hidden_my');
    
    $(".infoclose_btn_my").click(function(){

		$("body").removeClass("layer-open");
		$("#popLayer_my").css({
			"position" : "relative",
			"top" : "0"
		});

		$("body").scrollTop(scrollHeight);
		$("#popLayer_my").hide();
	});
});
/* 회원정보 레이어팝업 jQuery 끝 */

/* 화면 메뉴 에니 jQuery 시작 */
jQuery(window).scroll(function () {
		if (jQuery(this).scrollTop() > 50) {
			jQuery(".topmenuani").stop().animate({
					marginTop:"0px"
				}, 300);
		} else {
			jQuery(".topmenuani").stop().animate({
					marginTop:"-50px"
				}, 300);
		}
});
/* 화면 메뉴 에니 jQuery 끝 */

/* 화면 위아래 이동 버튼 jQuery 시작 */
$(document).ready(function () {
	$(".godownbtn").addClass("show");
	
	$(window).scroll(function(event){
		var scroll = $(window).scrollTop();
		if (scroll >= 60) {
			$(".goupbtn").addClass("show");
			$(".godownbtn").removeClass("show");
		} else {
			$(".goupbtn").removeClass("show");
			$(".godownbtn").addClass("show");
		}
	});
	
	var topEle = $("#up");
	var bottomEle = $("#down");
	var delay = 2000;

	topEle.click(function() {
		$("html").stop().animate({scrollTop: 0}, delay);
	});

	bottomEle.click(function() {
		$("html").stop().animate({scrollTop : ($("#footer_area_info").offset().top)}, delay);
	});
});
/* 화면 위아래 이동 버튼 jQuery 끝 */	

/* 서비스 Tab 메뉴 jQuery 시작 */
$(function () {

	$(".tab_contents").hide();
    $(".tab_contents:first").show();
    $("#tab_menu td:first").addClass("active").css("color", "orange");

    $("#tab_menu td").click(function () {
        $("#tab_menu td").removeClass("active").css("color", "#3e5dad");	        
        $(this).addClass("active").css("color", "orange");
        $(".tab_contents").hide()
        var activeTab = $(this).attr("rel");
        $("#" + activeTab).fadeIn()
    });    
	
	$(".contentstab_best").click(function () {
        $(".contentstab_best").removeClass("active").css("color", "#3e5dad");	        
        $(this).addClass("active").css("color", "#723d77");
        $(".tab_content_best").hide()
        var activeTab = $(this).attr("rel");
        $("#" + activeTab).fadeIn()
    });
    
	$(".tab_content_gotown").hide();
    $(".tab_content_gotown:first").show();
    $(".contentstab_gotown:first").addClass("active").css("color", "#723d77");

    $(".contentstab_gotown").click(function () {
        $(".contentstab_gotown").removeClass("active").css("color", "#3e5dad");	        
        $(this).addClass("active").css("color", "#723d77");
        $(".tab_content_gotown").hide()
        var activeTab = $(this).attr("rel");
        $("#" + activeTab).fadeIn()
    });
    
    $(".tab_content_my").hide();
    $(".tab_content_my:first").show();
    $(".contentstab_my:first").addClass("active").css("color", "#723d77");

    $(".contentstab_my").click(function () {
        $(".contentstab_my").removeClass("active").css("color", "#3e5dad");	        
        $(this).addClass("active").css("color", "#723d77");
        $(".tab_content_my").hide()
        var activeTab = $(this).attr("rel");
        $("#" + activeTab).fadeIn()
    });
    
    $(".tab_content_idpw").hide();
    $(".tab_content_idpw:first").show();
    $(".contentstab_idpw:first").addClass("active").css("color", "#723d77");

    $(".contentstab_idpw").click(function () {
        $(".contentstab_idpw").removeClass("active").css("color", "#3e5dad");	        
        $(this).addClass("active").css("color", "#723d77");
        $(".tab_content_idpw").hide()
        var activeTab = $(this).attr("rel");
        $("#" + activeTab).fadeIn()
    });
	
});
/* 서비스 Tab 메뉴 jQuery 끝 */

/* 메인에서 더보기 클릭시 인기 생산일지 Top 20 Tab 메뉴 처리 jQuery 시작 */
$(function () {
	var nowUrl = window.location.href;
	var index = nowUrl.indexOf("=");
	var tab = nowUrl.substring(index + 1);
	
	if(tab == 'a'){
		$("#tab2_best").hide();
		$("#tab1_best").show();
	    $("#t1").addClass("active").css("color", "#723d77");
	    $("#t2").removeClass("active").css("color", "#3e5dad");
	} else {
		$("#tab2_best").show();
		$("#tab1_best").hide();
		$("#t1").removeClass("active").css("color", "#3e5dad");
		$("#t2").addClass("active").css("color", "#723d77");		
	}
});
/* 메인에서 더보기 클릭시 인기 생산일지 Top 20 Tab 메뉴 처리 jQuery 끝 */
//화면 공통 끝 ////////////////////////////////////////////////////////////////////////////////////////////////

//rural.jsp 시작 ////////////////////////////////////////////////////////////////////////////////////////////////
/* 검색조건 오픈 jQuery 시작 */
$(function () { 
    $("#search_open_rural").click(function() {
        $("#search_input_rural").toggleClass("hide_rural");
    });
});
/* 검색조건 오픈 jQuery 끝 */

/* 상위 셀렉트 박스 선택시 하위 설렉트 박스 표시 jQuery 시작 */
function showSub(obj) {

    f = document.forms.select_product;

    if(obj == "곡물") {    
    	f.product1_1.style.display = "";
        f.product1_2.style.display = "none";
        f.product1_3.style.display = "none";
    } else if(obj == "야채") {
    	f.product1_1.style.display = "none";
        f.product1_2.style.display = "";
        f.product1_3.style.display = "none";
     } else if(obj == "과일") {
    	f.product1_1.style.display = "none";
        f.product1_2.style.display = "none";
        f.product1_3.style.display = "";
     } else if(obj == "어류") {    
    	f.product1_1_fish.style.display = "";
        f.product1_2_fish.style.display = "none";
        f.product1_3_fish.style.display = "none";
    } else if(obj == "연체동물") {
    	f.product1_1_fish.style.display = "none";
        f.product1_2_fish.style.display = "";
        f.product1_3_fish.style.display = "none";
     } else if(obj == "해조류") {
    	f.product1_1_fish.style.display = "none";
        f.product1_2_fish.style.display = "none";
        f.product1_3_fish.style.display = "";
     } else {
        f.product1_1_fish.style.display = "none";
        f.product1_2_fish.style.display = "none";
        f.product1_3_fish.style.display = "none";
        f.product1_1.style.display = "none";
        f.product1_2.style.display = "none";
        f.product1_3.style.display = "none";
     } 
}
/* 상위 셀렉트 박스 선택시 하위 설렉트 박스 표시 jQuery 끝 */
//rural.jsp 끝 ////////////////////////////////////////////////////////////////////////////////////////////////

//fishingvillage.jsp 시작 ////////////////////////////////////////////////////////////////////////////////////////////////
/* 검색조건 오픈 jQuery 시작 */
$(function () {    
	$("#search_open_fish").click(function () {
        $("#search_input_fish").toggleClass("hide_fish"); 
    });
});
/* 검색조건 오픈 jQuery 끝 */
//fishingvillage.jsp 끝 ////////////////////////////////////////////////////////////////////////////////////////////////

//myiary.jsp 시작 ////////////////////////////////////////////////////////////////////////////////////////////////
/* 자기소개 글자수 제한 jQuery 시작 */
function len_chk(){
	var frm = document.insertinfo.contents;
	
	$("#text_counter_my").html(frm.value.length);
	
	if(frm.value.length > 150){
	    alert("150자까지만 입력 가능합니다.");
		frm.value = frm.value.substring(0,150);  
	    frm.focus();
	}
}
/* 자기소개 글자수 제한 jQuery 끝 */

/* 댓글 글자수 제한 jQuery 시작 */
function len_chk_comment(){
	var frm = document.insertinfo_comment.comment_content;
	
	$("#comment_counter").html(frm.value.length);
	
	if(frm.value.length > 300){
		frm.value = frm.value.substring(0,300);  
	    frm.focus();
	}
}
/* 댓글 글자수 제한 jQuery 끝 */

/* 댓글 수정 글자수 제한 jQuery 시작 */
function len_chk_change_comment(){
	var frm = document.insertinfo_comment_change.comment_change_content;
	
	$("#comment_change_counter").html(frm.value.length);
	
	if(frm.value.length > 300){
		frm.value = frm.value.substring(0,300);  
	    frm.focus();
	}
}
/* 댓글 수정 글자수 제한 jQuery 끝 */

/* 회원정보 레이어팝업 jQuery 시작 */
$('.js-open_my').click(function () {
	var scrollHeight = 0;
	
	scrollHeight = $("body").scrollTop();
	$("body").addClass("layer-open");
	$("#popLayer_my").css({
		"position" : "fixed", //최상위 div 고정 
		"top" : -scrollHeight // 최상위 div에 현재 스크롤된값 = 보이는화면만큼 top값 추가
	});
	
	$("#popLayer_my").show();
	
	var $layer = $('.js-layer_my');
    $layer.removeClass('hidden_my');
    
    $(".infoclose_btn_my").click(function(){

		$("body").removeClass("layer-open");
		$("#popLayer_my").css({
			"position" : "relative",
			"top" : "0"
		});

		$("body").scrollTop(scrollHeight);
		$("#popLayer_my").hide();
	});
});
/* 회원정보 레이어팝업 jQuery 끝 */

/* 게시판 좋아요 jQuery 시작 */		
$(document).ready(function () {
	$('#likebutton').click(function(){
		if($(this).hasClass('btn_unlike')){
		   $(this).removeClass('btn_unlike');
		   $('.ani_heart_m').removeClass('hi');
		   $('.ani_heart_m').addClass('bye');
		} else{
		   $(this).addClass('btn_unlike');
		   $('.ani_heart_m').addClass('hi');
		   $('.ani_heart_m').removeClass('bye');
		}
	});
});
/* 게시판 좋아요 jQuery 끝 */

/* 게시판 작성시 생산일 숫자만 입력 jQuery 시작 */
$("input:text[numberOnly]").on("keyup", function() {
    $(this).val($(this).val().replace(/[^0-9]/g,""));
});
/* 게시판 작성시 생산일 숫자만 입력 jQuery 끝 */

//agreement.jsp 시작 ////////////////////////////////////////////////////////////////////////////////////////////////
$(document).ready(function () {
	$("#cbox").click(function () {
			
		var ckAll = $("#cbox").is(":checked");		
		
		if(ckAll == true) {			
			$(".ckboxs").prop("checked", true);
			$(".agree_error").css("display", "none");
		} else {
			$(".ckboxs").prop("checked", false);				
		}
	});
		
	$(".ckboxs").click(function () {
			
		checkedLength = $(".ul_li_span > input:checked").length;	
		
		if(checkedLength == 4) {			
			$("#cbox").prop("checked", true);
		} else {
			$("#cbox").prop("checked", false);				
		} 
	});
				
	$(".okagree_btn").click(function () {
		var ck1 = $("#li1box").is(":checked");
		var ck2 = $("#li2box").is(":checked");
			
		if(ck1 == true && ck2 == true) {
			$(location).attr("href", "inputmemberinfo.bizpoll");
		} else {
			$(".agree_error").css("display", "block");
			return;
		}		
	});	
		
	$(".ckboxs").click(function () {
			
		var ck1 = $("#li1box").is(":checked");
		var ck2 = $("#li2box").is(":checked");
			
		if(ck1 == true && ck2 == true) {			
			$(".agree_error").css("display", "none");
		} 
	});	
});

// 동의 버튼 클릭 
$(document).on("click", "#okagree", function() {
	var
	form = $("#frm_agree");

	// 유효성 끝나면 Controller로 보내야 함
	form.submit();
});
//agreement.jsp 끝 ////////////////////////////////////////////////////////////////////////////////////////////////

//inputmemberinfo.jsp 시작 ////////////////////////////////////////////////////////////////////////////////////////////////
$(".input_login").focus(function() {
	$(this).parent().css("border", "1px solid orange");
});

$(".input_login").blur(function() {
	$(this).parent().css("border", "1px solid #dadada");
	
	var inputval = $(this).val();
	
	if(inputval == "") {
		$(this).parent().parent().next().css("display", "block").text("필수 정보입니다.");
	} else {
		$(this).parent().parent().next().css("display", "none");
	}
});

//이메일 아이디 정규식 검사
$("#email").blur(function() {
	var email = $(this).val();
	var regMail = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;
	
	if(email == "") {
		$(this).parent().parent().next().css("display", "block").text("필수 정보입니다.");
		$(this).focus();
	} else if(!regMail.test(email)) {
		$(this).parent().parent().next().css("display", "block").text("이메일 형식이 아닙니다.");
		$(this).select();
	} else {				
		$.ajax({				
			url: "idCheck.bizpoll",
			type: "POST",
			dataType: "json",
			data: "id=" + email,
		
			success: function(data) {
				if(data.message == "-1"){
					$("#email").parent().parent().next().css("display", "block").text("이미 사용중인 아이디 입니다.");					
					$("#email").select();
				} else {
					$("#email").parent().parent().next().css("display", "block").css("color", "#0000ff").text("멋진 아이디군요!");
				}
			},					
			error: function(){
				alert("System Error!!!");
			}
		});
	}
});

// 닉네임 중복 유효성 검사
$("#inputnickname").blur(function(){
	var nick = $(this).val();
	var regNick = /^[ㄱ-ㅎ|가-힣|a-z|A-Z|0-9|\*]+.{2,9}$/ // +{3,10}/; // 한글만 공백없이.3~10자리
	
	if(nick == "") {
		$(this).parent().parent().next().css("display", "block").text("필수 정보입니다.");
	} else if(!regNick.test(nick)){
		$(this).parent().parent().next().css("display", "block").text("3~10자의 별명을 입력해 주세요.");
	} else if(nick != "") {				
		$.ajax({				
			url: "nickCheck.bizpoll",
			type: "POST",
			dataType: "json",
			data: "nick=" + nick,		
		
			success: function(data) {
				if(data.message == "-1"){
					$("#inputnickname").parent().parent().next().css("display", "block").text("이미 사용중인 별명입니다.");
				} else {
					$("#inputnickname").parent().parent().next().css("display", "block").css("color", "#0000ff").text("멋진 별명이네요!");
				}
			},			
			error: function(){
				alert("System Error!!!");
			}
		});
	}
});

// 비밀번호 정규식 검사
$("#inputpw").blur(function() {
	var pw = $("#inputpw").val();
	var regPass = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,15}$/;
	
	if(pw == "") {		
		$(this).parent().parent().next().css("display", "block").text("필수 정보입니다.");
	} else if(!regPass.test(pw)){
		$(this).parent().parent().next().css("display", "block").text("8~15 글자 수, 최소 1개의 대문자와 소문자 그리고 특수문자 1개 포함해야 합니다.");
	} else if(pw = "" && pw_ch != "") {
		$("#inputpw_ch").parent().parent().next().css("display", "none");
	} 
});

// 비밀번호 일치 유효성
$("#inputpw_ch").blur(function() {
	var pw = $("#inputpw").val();
	var pw_ch = $("#inputpw_ch").val();
	
	if(pw_ch == "") {		
		$(this).parent().parent().next().css("display", "block").text("필수 정보입니다.");
	} else if(pw == "" && pw_ch != "") {		
		$(this).parent().parent().next().css("display", "none");
		$("#inputpw").parent().parent().next().css("display", "block").text("필수 정보입니다.");
	} else if(pw != "" && pw_ch != "") {		
		if(pw != pw_ch) {
			$(this).parent().parent().next().css("display", "block").text("비밀번호가 일치하지 않습니다.");
		} else if(pw == pw_ch) {			
			$(this).parent().parent().next().css("display", "block").css("color", "#0000ff").text("비밀번호가 일치합니다.");
		}
	}
});

// 이름 정규식 검사
$("#inputname").blur(function(){
	var name = $(this).val();
	var regName = /^[가-힣]+.{2,9}$/; // +{3,10}/; // 한글만 공백없이.3~10자리
	
	if(name == "") {
		$(this).parent().parent().next().css("display", "block").text("필수 정보입니다.");		
		$(this).focus();
	} else if(!regName.test(name)){
		$(this).parent().parent().next().css("display", "block").text("3~10자까지의 한글, 띄어쓰기는 불가능합니다.");
		$(this).select();
	} else if(regName.test(name)){
		$(this).parent().parent().next().css("display", "none");		
	}	
});

// 출생연도의 연입력 정규식 확인
$("#inputbirth").blur(function() {
	var birth = $(this).val();
	var regBirth = /^(19|20)\d{2}(0[1-9]|1[012])(0[1-9]|[12][0-9]|3[0-1])$/;
	
	if(birth == "") {		
		$(this).parent().parent().next().css("display", "block").text("필수 정보입니다.");
		$(this).focus();
	} else if(!regBirth.test(birth)){
		$(this).parent().parent().next().css("display", "block").text("8자리 숫자로 생년월일을 입력해 주세요(예, 19900505), 0으로 시작할수 없습니다.");
		$(this).select();
	} else if(regBirth.test(birth)){
		$(this).parent().parent().next().css("display", "none");		
	} 		
});

// 성별 선택 유효성 검사
$("#inputgender").blur(function() {
	var gender = $(this).val();
	
	if(gender == "") {		
		$(this).parent().parent().next().css("display", "block").text("필수 정보입니다.");
		$(this).focus();
	} else if(gender == "성별 선택"){
		$(this).parent().parent().next().css("display", "block").text("성별을 선택해 주세요.");
		$(this).focus();
	} else if(gender != "성별 선택") {
		$(this).parent().parent().next().css("display", "none");		
	}
});

// 전화번호 정규식 확인
$("#inputphone").blur(function() {
	var phone = $(this).val();
	var regPhone = /^01(?:0|1|[6-9])-?([0-9]{3,4})-?([0-9]{4})$/;
	
	if(phone == "") {		
		$(this).parent().parent().next().css("display", "block").text("필수 정보입니다.");
		$(this).focus();
	} else if(!regPhone.test(phone)){
		$(this).parent().parent().next().css("display", "block").text("전화번호를 최소 10~11자리까지 숫자로 입력해 주세요. 반드시 0으로 시작해야 합니다.");
		$(this).select();
	} else if(regPhone.test(phone)){
		$(this).parent().parent().next().css("display", "none");		
	}
});  

// 우편번호 유효성 검사
$("#sample6_postcode").blur(function() {
	var zipcode = $(this).val();
	var add1 = $("#sample6_address").val();
	var add2 = $("#sample6_address2").val();	
	
	if(zipcode == "") {
		$(this).parent().parent().next().css("display", "block").text("필수 정보입니다.");
		$(this).focus();
	} else if(zipcode != "") {			
		$("#sample6_address2").parent().parent().next().css("display", "block").text("필수 정보입니다.");
		$("#sample6_address2").focus();		
	} else if(zipcode != "" && add2 != "") {	
		$(this).parent().parent().next().css("display", "none");
		$("#sample6_address2").select();		
		$("#sample6_address2").parent().parent().next().css("display", "none");
	}
}); 

// 주소 유효성 검사
$("#sample6_address").blur(function() {
	var zipcode = $("#sample6_postcode").val();
	var add1 = $(this).val();
	var add2 = $("#sample6_address2").val();	
	
	if(add1 == "" && zipcode == "") {
		$(this).parent().parent().next().css("display", "block").text("필수 정보입니다.");
		$("#sample6_postcode").focus();
	} 
}); 

// 상세주소 유효성 검사
$("#sample6_address2").blur(function() {
	var zipcode = $("#sample6_postcode").val();
	var add1 = $("#sample6_address").val();
	var add2 = $(this).val();	
	
	if(add2 == "") {		
		$(this).parent().parent().next().css("display", "block").text("필수 정보입니다.");
		$(this).focus();
		$("#sample6_postcode").blur();
	} else if(add2 != "" && zipcode == "") {
		$("#sample6_postcode").parent().parent().next().css("display", "block").text("필수 정보입니다.");
		$("#sample6_postcode").focus();
	} else if(add2 != "" && zipcode != "") {
		$(this).parent().parent().next().css("display", "none");		
	} 
});

// 가입 버튼 클릭 시 유효성 검사 
$(document).on("click", "#memberinfo_send", function() {	
	var
	form = $("#frm_meminfo"),
	memail = $("#email"),
	mnick = $("#inputnickname"),
	mpw = $("#inputpw"),
	mpwch = $("#inputpw_ch"),
	mname = $("#inputname"),
	mbirth = $("#inputbirth"),	
	mgender = $("#inputgender"),
	mphone = $("#inputphone"),
	mzipcode = $("#sample6_postcode"),
	maddr1 = $("#sample6_address"),
	maddr2 = $("#sample6_address2");
	
	// id 유효성 검사
	// trim : 앞뒤 공백 제거
	// 가운데 공백은 substring으로 제거
	// 이메일 유효성 검사
	//이메일 아이디 정규식 검사
	var mail = $.trim(memail.val());
	var regMail = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;
	
	if(mail == "") {			
		memail.parent().parent().next().css("display", "block").text("필수 정보입니다.");	
		memail.focus();
		return false;
	} else if(!regMail.test(mail)){
		memail.parent().parent().next().css("display", "block").text("이메일 형식이 아닙니다.");
		memail.select();
		return false;
	} else if(regMail.test(mail)){
		mnick.focus();				
	}

	// 닉네임 유효성 검사
	var nick = $.trim(mnick.val());
	var regNick = /^[ㄱ-ㅎ|가-힣|a-z|A-Z|0-9|\*]+.{2,9}$/ // 정규식, 영문자,숫자 포함 특수문자 사용가능.8~20자리
	if(nick == "") {			
		mnick.parent().parent().next().css("display", "block").text("필수 정보입니다.");
		mnick.focus();
		return false;
	} else if(!regNick.test(nick)){
		mnick.parent().parent().next().css("display", "block").text("3~10자의 별명을 입력해 주세요.");
		mnick.select();
		return false;
	} else if(regNick.test(nick)){
		mpw.focus();				
	}

	// 비밀번호 유효성 검사
	var pw = $.trim(mpw.val());
	var pw_ch = $.trim(mpwch.val());
	var regPass = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,15}$/;
	
	if(pw == "") {		
		mpw.parent().parent().next().css("display", "block").text("필수 정보입니다.");
		mpw.focus();
		return false;
	} else if(!regPass.test(pw)){
		mpw.parent().parent().next().css("display", "block").text("8~15 글자 수, 최소 1개의 대문자와 소문자 그리고 특수문자 1개 포함해야 합니다.");
		mpw.select();
		return false;					
	} else if(regPass.test(pw)){
		mpwch.focus();		
	}
	
	// 비밀번호 확인 유효성 검사
	if(pw_ch == ""){
		mpwch.parent().parent().next().css("display", "block").text("필수 정보입니다.");
		mpwch.focus();
		return false;
	} else if(pw != "" && pw_ch != "") {
		if(pw != pw_ch) {
			mpwch.parent().parent().next().css("display", "block").text("비밀번호가 일치하지 않습니다.");
			mpwch.select();
			return false;
		} else if(pw == pw_ch) {			
			mpwch.parent().parent().next().css("display", "block").css("color", "#0000ff").text("비밀번호가 일치합니다.");
			mname.focus();
		} 
	} 

	// 이름 유효성 검사
	var name = $.trim(mname.val());
	var regName = /^[가-힣]+.{2,9}$/; // +{3,10}/; // 한글만 공백없이.3~10자리
	
	if(name == "") {
		mname.parent().parent().next().css("display", "block").text("필수 정보입니다.");
		mname.focus();
		return false;
	} else if(!regName.test(name)){
		mname.parent().parent().next().css("display", "block").text("3~10자까지의 한글, 띄어쓰기는 불가능합니다.");
		mname.select();
		return false;
	} else if(regName.test(name)){
		mbirth.focus();		
	}

	// 생년 유효성 검사
	var birth = $.trim(mbirth.val());
	var regBirth = /^(19|20)\d{2}(0[1-9]|1[012])(0[1-9]|[12][0-9]|3[0-1])$/;
	
	if(birth == "") {		
		mbirth.parent().parent().next().css("display", "block").text("필수 정보입니다.");
		mbirth.focus();
		return false;
	} else if(!regBirth.test(birth)){
		mbirth.select();
		mbirth.parent().parent().next().css("display", "block").text("8자리 숫자로 생년월일을 입력해 주세요(예, 19900505), 0으로 시작할수 없습니다.");
		return false;
	} else if(regBirth.test(birth)){
		mgender.focus();		
	}

	// 성별 유효성 검사
	var gender = $.trim(mgender.val());
	
	if(gender == "") {		
		mgender.parent().parent().next().css("display", "block").text("필수 정보입니다.");
		mgender.focus();
		return false;
	} else if(gender == "성별 선택"){
		mgender.parent().parent().next().css("display", "block").text("성별을 선택해 주세요.");
		mgender.focus();
		return false;
	} else if(gender != "성별 선택"){
		mphone.focus();		
	}

	// 전화번호 유효성 검사
	var phone = $.trim(mphone.val());
	var regPhone = /^01(?:0|1|[6-9])-?([0-9]{3,4})-?([0-9]{4})$/;
	
	if(phone == "") {		
		mphone.parent().parent().next().css("display", "block").text("필수 정보입니다.");
		mphone.focus();
		return false;
	} else if(!regPhone.test(phone)){
		mphone.select();
		mphone.parent().parent().next().css("display", "block").text("전화번호를 최소 10~11자리까지 숫자로 입력해 주세요. 반드시 0으로 시작해야 합니다.");
		return false;
	} else if(regPhone.test(phone)){
		mzipcode.focus();		
	}

	// 주소 유효성 검사
	var zipcode = $.trim(mzipcode.val());	
	var add2 = $.trim(maddr2.val());
	
	if(zipcode == "") {		
		mzipcode.parent().parent().next().css("display", "block").text("필수 정보입니다.");
		mzipcode.focus();
		return false;
	} else if(zipcode != "" && add2 == "") {		
		maddr2.parent().parent().next().css("display", "block").text("필수 정보입니다.");
		maddr2.focus();
		return false;
	} else if(add2 != "" && zipcode != "") {
		maddr2.parent().parent().next().css("display", "none");	
	}	
	
	// 유효성 끝나면 Controller로 보내야 함
	form.submit();
});

/* 다음 주소찾기 */
function sample6_execDaumPostcode() {
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var fullAddr = ''; // 최종 주소 변수
            var extraAddr = ''; // 조합형 주소 변수

            // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                fullAddr = data.roadAddress;

            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                fullAddr = data.jibunAddress;
            }

            // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
            if(data.userSelectedType === 'R'){
                //법정동명이 있을 경우 추가한다.
                if(data.bname !== ''){
                    extraAddr += data.bname;
                }
                // 건물명이 있을 경우 추가한다.
                if(data.buildingName !== ''){
                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('sample6_postcode').value = data.zonecode; //5자리 새우편번호 사용
            if(data.zonecode != "") {
            	$("#sample6_postcode").parent().parent().next().css("display", "none");
            }            
            document.getElementById('sample6_address').value = fullAddr;

            // 커서를 상세주소 필드로 이동한다.
            document.getElementById('sample6_address2').focus();
        }
    }).open();
}

//inputmemberinfo.jsp 끝 ////////////////////////////////////////////////////////////////////////////////////////////////

//login.jsp 시작 ////////////////////////////////////////////////////////////////////////////////////////////////
// 회원가입 여부 id 유효성 검사
$("#btn_login_ok").click(function () {
	var id = $("#inputid_login").val();
	var pw = $("#inputpw_login").val();
		
	if(id != "" && pw != "") {
		$.ajax({				
			url: "loginplay.bizpoll",
			type: "POST",
			dataType: "json",
			data: "id=" + id + "&pw=" + pw, 

			success: function(data) {					
				if(data.message == "-1"){
					location.href="index.bizpoll";
				} else {
					$(".err_check_msg").css("display", "block");
					$(".err_check_msg").text("아디디 또는 비밀번호가 일치하지 않습니다.");
					return;
				}
			},
				
			error: function(){
				alert("System Error!!!");
			}
		});		
		
	} else {
		$(".err_check_msg").css("display", "block");
		return;
	}
});
//login.jsp 끝 ////////////////////////////////////////////////////////////////////////////////////////////////	

//idpwsearch.jsp 시작 ////////////////////////////////////////////////////////////////////////////////////////////////
$(document).ready(function () {
	$("#btn_searchid").on("click", function() {
		var val1 = $("#inputname_search").val();
		var val2 = $("#inputphone_search").val();
		if(val1 != "" && val2 != "") {			
			$("#idpw_search").submit();
		} else {
			$("#idw").text("회원가입하실 때 입력한 이름과 전화번호를 입력해 주세요.").css("display", "block");
			return;
		}
	});
	
	$("#btn_searchpw").on("click", function() {
		var val1 = $("#inputid_search").val();
		var val2 = $("#inputphone_search").val();
		if(val1 != "" && val2 != "") {			
			$("#idpw_search").submit();
		} else {
			$("#pww").text("회원가입하실 때 입력한 아이디와 전화번호를 입력해 주세요.").css("display", "block");
			return;
		}
	});
});

//idpwsearch.jsp 끝 ////////////////////////////////////////////////////////////////////////////////////////////////	

//myinfo.jsp 시작 ////////////////////////////////////////////////////////////////////////////////////////////////



//myinfo.jsp 끝 ////////////////////////////////////////////////////////////////////////////////////////////////












