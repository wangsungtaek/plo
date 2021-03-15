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
<title>Insert title here</title>
<link rel="stylesheet" href="${path}/z01_css/default.css">
<link rel="stylesheet" href="${path}/z01_css/musicDetail.css">
<script type="text/javascript" src="${path}/z02_js/jquery-3.5.1.js"></script>
</head>
<body>
	<div id="app">
	<%@ include file="../a01_main/header.jsp" %>
		<div id="wrap">
			<section id="main" class="section_detail">
				<div class="section_inner">
					<div class="bagde_area">
						<div class="album_thumbnail">
							<div class="link_thumbnail">
								<img src="../z00_imgs/rollin_thumb.jpg" width="240" height="240" alt="롤린">
							</div>
							<button class="btn_thumbnail_play">노래제목 듣기</button>
						</div>
						<div class="badge_track_info">
							<div class="info_area">
								<p class="title"><a href="#">노래제목</a></p>
								<p class="artist"><a href="#">가수</a></p>
								<p class="album"><a href="#">앨범명</a></p>
							</div>
							<div class="util_area">
								<button type="button" class="btn_add_list">재생 목록 담기</button>
								<button type="button" class="btn_add_playlist">내 리스트 담기</button>
								<button type="button" class="btn_like">좋아요</button>
							</div>
						</div>
					</div>
					<div  class="section_content_wrap">
						<div class="music_detail_info">
							<div class="info_txt">
								<dl>
									<dt>곡명</dt>
									<dd>롤린 (Rollin')</dd>
									<dt>작곡</dt>
									<dd>용감한 형제</dd>
								</dl>
							</div>
							<div class="lyrics">그 날을 잊지 못해 babe<br>날 보며 환히 웃던<br>너의 미소에<br></div>
						</div>
					</div>
				</div>
			</section>
			<%@ include file="../a01_main/footer.jsp" %>
		</div>
	</div>
<script type="text/javascript" src="${path}/z02_js/musicdetail.js"></script>
<%@ include file="../a09_playList/musicplayer_test.jsp" %>
</body>
</html>