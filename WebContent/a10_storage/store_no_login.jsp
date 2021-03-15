<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*" 
    import="jspexp.z01_vo.*"
    import="jspexp.a03_database.*"
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<fmt:requestEncoding value="UTF-8" />   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../z01_css/default.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.0/font/bootstrap-icons.css">
<style>

	.container{
		background:white;
		width:1080px;
		margin:0 auto;
		display:flex;
	}
	.storage-list{
		display:flex;
		margin-left:10px;
	}
	.storage-list li{
		list-style-type:none;
		padding:10px 20px;
		font-size:15px;
	}
	.storage-list li:hover{
		cursor:pointer;
		color:blue;
	}
	.storage-list li:focus{
		background:blue;
		color:white;
		border-radius:20px;
	}
	.storage-nav{
		margin-top:50px;
	}
	.stor_login{
		position:relative;
		width:1080px;
		text-align:center;
	}
	.stor_login_box{
		margin-top:300px;
	}
	.stor_login_box #login_one{
		font-size:17px;
		font-weight:bold;
	}
	.stor_login_box #login_two{
		font-size:14px;
		color:gray;
		line-height:150%;
	}
	.stor_login_box #login_three{
		background:none;
		color:blue;
		font-size:13px;
		border-color:blue;
		border-width:1.5px;
		border-radius:20px;
		width:80px;
		height:30px;
	}
	.stor_login_box #login_three:hover{
		cursor:pointer;
	}
	.stor_login_box #login_three:focus{
		outline:none;
	}
	

	
</style>
<script type="text/javascript" src="${path}/z02_js/jquery-3.5.1.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		
		$(".storage-list>li").on("click",function(){
			$(".storage-list>li").css("background","none");
			$(".storage-list>li").css("color","black");
			$(".storage-list>li").css("border-radius","0px");
			$(this).css("background","blue");
			$(this).css("color","white");
			$(this).css("border-radius","20px");
		});

		$("#login_three").on("click",function(){
			location.href="#";
		});
	});
	
</script>
</head>
<body>
	<jsp:include page="../a01_main/header.jsp"></jsp:include>
	<div class="container">
		<div class="storage">
			<div class="storage-nav">
				<ul class="storage-list">
					<li>내 리스트</li>
					<li>♡ 곡</li>
					<li>♡ 앨범</li>
					<li>♡ 가수</li>
					<li>많이 들은 곡</li>
					<li>최근 들은 곡</li>
				</ul>
			</div>
		
			<div class="stor_login">
				<div class="stor_login_box">
					<span id="login_one">로그인해주세요.</span><br><br>
					<span id="login_two">로그인하시면 더욱 더 다양한<br>FLO를 즐길 수 있어요.</span><br><br>
					<button id="login_three">로그인</button>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="../a01_main/footer.jsp"></jsp:include>
</body>
</html>