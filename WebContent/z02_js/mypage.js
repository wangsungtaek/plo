// 현재 비밀번호 확인 관련 :first
$('#currentPassword').on('input', function() {
	if($(this).val().length>5) {
		$('.btn_bg_orange_s:first').attr('disabled', false);
	} else {
		$('.btn_bg_orange_s:first').attr('disabled', true);
	}
});
$('.btn_pw_del:first').on('click', function(){
	$('#currentPassword').val('');
});
$('.btn_pw_show:first').on('click', function() {
	if($('#currentPassword').attr('type')=='password') {
		$('#currentPassword').attr('type', 'text');
	} else {
		$('#currentPassword').attr('type', 'password');
	}
});

// 현재 비밀번호 확인 버튼 클릭
$('.btn_bg_orange_s:first').on('click', function() {
	if($('#currentPassword').val()=='777777') { // 현재 비밀번호 맞는지 비교
		$('#newPassword, #newPasswordRe').attr('disabled', false);
		$('.txt_inp_error:first').text('');
		$('.btn_bg_orange_s:first').attr('disabled', true);
		$('#currentPassword').attr('disabled', true);
		$('.btn_pw_del:first').attr('disabled', true);
	} else {
		$('.txt_inp_error:first').text('앗! 비밀번호가 틀렸습니다!');
	}
});

// 새 비밀번호 입력
$('#newPassword').on('input', function() {
	if($(this).val().length<8){
		$('.txt_inp_error:eq(1)').text('8자리 이상 입력해주세요').css('color', '#ff4d78');
	} else {
		$('.txt_inp_error:eq(1)').text('사용가능한 비밀번호 입니다.').css('color', 'blue');
	}
});
$('.btn_pw_del:eq(1)').on('click', function(){
	$('#newPassword').val('');
});
$('.btn_pw_show:eq(1)').on('click', function() {
	if($('#newPassword').attr('type')=='password') {
		$('#newPassword').attr('type', 'text');
	} else {
		$('#newPassword').attr('type', 'password');
	}
});
// 새 비밀번호 확인
$('#newPasswordRe').on('input', function() {
	if($(this).val()==$('#newPassword').val()) {
		$('.txt_inp_error:last').text('비밀번호가 일치합니다.').css('color', 'blue');
		$('.btn_bg_orange_s:last').attr('disabled', false);
	} else {
		$('.txt_inp_error:last').text('비밀번호가 일치하지 않습니다.').css('color', '#ff4d78');
		$('.btn_bg_orange_s:last').attr('disabled', true);
	}
});
$('.btn_pw_del:last').on('click', function(){
	$('#newPasswordRe').val('');
	$('.btn_bg_orange_s:last').attr('disabled', true);
});
$('.btn_pw_show:last').on('click', function() {
	if($('#newPasswordRe').attr('type')=='password') {
		$('#newPasswordRe').attr('type', 'text');
	} else {
		$('#newPasswordRe').attr('type', 'password');
	}
});



// 회원 탈퇴
$('.popup_container').hide();
$('.sort_type_wrap button').on('click', function(){
	$('.popup_container').show();
});
$('.btn_close_popup').on('click', function(){
	$('.popup_container').hide();
});
$('input[type=checkbox]').on('click', function(){
	if($('#checkbox1').is(':checked') && $('#checkbox2').is(':checked')) {
		$('.btn_leave').attr('disabled', false);
	} else {
		$('.btn_leave').attr('disabled', true);
	}
});