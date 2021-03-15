<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<c:set var="path" value="${pageContext.request.contextPath}"/> 
<fmt:requestEncoding value="UTF-8"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!--default.css -->
<link rel="stylesheet" href="${path}/z01_css/default.css">

<!--notice.css -->
<link rel="stylesheet" href="${path}/z01_css/notice/notice.css">

</head>
<body>

	<!-- nav -->
	<div>
		<%@ include file="../a01_main/header.jsp" %>
	</div>

	
	<!-- Page Wrapper -->
	<div id="notice-wrapper">
		
		<!-- content-top -->
		<div id="content-top">
			<h1 id="title">고객센터</h1>
			
			<div id="link-btn">
				<ul>
					<li class="select"><a href="${path}/a06_notice/notice.jsp">공지사항</a></li>
					<li class="unSelect"><a href="${path}/a06_notice/faq.jsp">FAQ</a></li>
				</ul>
			</div>
		</div>
		<!-- End of content-top -->
		
		<!-- content-main -->
		<div id="content-main">
			
			<table>
			
				<colgroup>
					<col width="42">
					<col width="*">
					<col width="100">
					<col width="90">
				</colgroup>
				
				<thead>
					<tr>
						<th class="center">번호</th>
						<th style="padding-left: 20px;">제목</th>
						<th class="center">작성일</th>
						<th></th>
					</tr>
				</thead>
				<tbody>
					<tr class="title">
						<td class="center">222</td>
						<td class="pl-25">[서비스 점검] 각 은행/증권사 시스템 작업으로 인한 
						네이버페이 결제 서비스 일시 중단 안내</td>
						<td class="center">2021.03.05</td>
						<td class="center">^</td>
					</tr>
					<tr class="content">
						<td colspan="4">
							<div>
								"안녕하세요, PLO 입니다!"
								<br>
								"항상 FLO를 이용해 주시는 고객님들께 감사의 말씀 드립니다."
								<br>
								<br>
								"아래 안내 드리는 일시에 각 은행 및 증ㅇ권사의 시스템
								점검 작업이 진행될 예정입니다."
								<br>
								"작업 시간 동안에는 "
								<strong>네이버페이 계좌 간편결제 중 각 은행 및 증권사의
								결제수단</strong>"을 통한 결제가 불가한 점 서비스 이용에 참고
								부탁 드립니다."
								<br>
								<br>
								<img src="../z00_imgs/notice_test.png"/>
							</div>
						</td>
					</tr>
					<tr class="title">
						<td class="center">221</td>
						<td class="pl-25">[서비스 점검] 각 은행/증권사 시스템 작업으로 인한 
						네이버페이 결제 서비스 일시 중단 안내</td>
						<td class="center">2021.03.05</td>
						<td class="center">^</td>
					</tr>
				</tbody>
			</table>
			
		</div>
		<!-- End of content-main -->
		
		<!-- page button -->
		<div id="page-btn">
			<ul>
				<li><a href=""><</a></li>
				<li><a href="">1</a></li>
				<li><a href="">2</a></li>
				<li><a href="">3</a></li>
				<li><a href="">4</a></li>
				<li><a href="">></a></li>
			</ul>
		</div>
		
	</div>
	<!-- End of Page Wrapper -->
	<jsp:include page="../a01_main/footer.jsp"></jsp:include>
	<!-- jquery -->
	<script src="${path}/z02_js/jquery-3.5.1.js"></script>
</body>
</html>