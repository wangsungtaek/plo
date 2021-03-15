<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>   
<fmt:requestEncoding value="utf-8"/> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Plo</title>
<link rel="stylesheet" href="${path}/z01_css/default.css">
<link rel="stylesheet" href="${path}/z01_css/mypage.css">
<script type="text/javascript" src="${path}/z02_js/jquery-3.5.1.js"></script>
</head>
<body>
	<div id="app">
		<%@ include file="../a01_main/header.jsp" %>
		<div id="wrap">
			<section id="main" class="section_info">
				<div class="section_inner">
					<div class="popup_container">
						<div class="popup_leave">
							<h3>회원탈퇴</h3>
							<div class="popup_content">
								<p class="popup_main_text">회원 탈퇴 전 안내사항을 꼭 읽어보세요.</p>
								<p class="popup_sub_text">회원 탈퇴를 하면 FLO 서비스 이용정보가 삭제되어 복구 불가능합니다.</p>
								<ul class="popup_sub_list">
									<li>탈퇴 시 이용중인 모든 서비스에 대한 정보가 삭제되어 복구 불가능합니다.</li>
								</ul>
								<div class="popup_check_area">
									<p>
										<input type="checkbox" name="checkbox1" id="checkbox1" value="agree1" class="inp_chk">
										<label for="checkbox1"><span>위 내용을 확인하였으며, 회원 탈퇴 시 모든 정보가 복구 불가능함을 동의합니다.</span></label>
									</p>
									<p>
										<input type="checkbox" name="checkbox2" id="checkbox2" value="agree2" class="inp_chk">
										<label for="checkbox2"><span>약관 동의를 철회하고 PLO회원에서 탈퇴합니다.</span></label>
									</p>
								</div>
								<div class="pop_button">
									<button type="button" disabled="disabled" class="btn_leave">회원 탈퇴 완료</button>
								</div>
								<button type="button" class="btn_close_popup"></button>
							</div>
						</div>
					</div>
					<h2>정보관리</h2>
					<div class="info_box">
						<p class="info_email">
							<span>aaa@naver.com</span>
						</p>
					</div>
					<div class="newlist_tab">
						<ul>
							<li><button type="button" class="btn_tab_normal active">비밀번호 변경</button></li>
						</ul>
						<div class="sort_type_wrap">
							<button type="button">회원탈퇴</button>
						</div>
					</div>
					<div class="input_section">
						<ul>
							<li>
								<span>
									<div class="comp_inc_btn">
										<label for="currentPassword"><input id="currentPassword" title="비밀번호를 입력해 주세요" placeholder="현재 비밀번호" type="password" class="comp_inp_pw"></label>
										<div class="btn_area">
											<button type="button" class="btn_pw_del">입력한 비밀번호 삭제</button>
											<button type="button" class="btn_pw_show">비밀번호 보기</button>
										</div>
										<p class="txt_inp_error"></p>
									</div>
								</span>
								<span>
									<button type="button" class="btn_bg_orange_s" disabled="disabled">확인</button> 
								</span>
							</li>
							<li>
								<span>
									<div class="comp_inc_btn">
										<label for="newPassword">
											<input id="newPassword" disabled="disabled" title="비밀번호를 입력하세요" placeholder="새로운 비밀번호 입력" type="password" class="comp_inp_pw">
										</label>
										<div class="btn_area">
											<button type="button" class="btn_pw_del">입력된 비밀번호 삭제</button>
											<button type="button" class="btn_pw_show">비밀번호 보기</button>
										</div>
										<p class="txt_inp_error"></p>
									</div>
								</span>
							</li>
							<li>
								<span>
									<div class="comp_inc_btn" style="width: 440px;">
										<label for="newPasswordRe">
											<input id="newPasswordRe" disabled="disabled" title="비밀번호를 입력하세요" placeholder="새로운 비밀번호 확인" type="password" class="comp_inp_pw">
										</label>
										<div class="btn_area">
											<button type="button" class="btn_pw_del">입력된 비밀번호 삭제</button>
											<button type="button" class="btn_pw_show">비밀번호 보기</button>
										</div>
										<p class="txt_inp_error"></p>
									</div>
								</span>
								<span>
									<button type="button" disabled="disabled" class="btn_bg_orange_s">변경완료</button>
								</span>
							</li>
						</ul>
					</div>
				</div>
				<%@ include file="../a01_main/footer.jsp" %>
			</section>	
		</div>
	</div>

<script type="text/javascript" src="${path}/z02_js/mypage.js"></script>
	<%@ include file="../a09_playList/musicplayer_test.jsp" %>
</body>
</html>