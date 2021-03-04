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
<link rel="stylesheet" href="${path}/default.css">
<style>
	
	.container{
		background:white;
		width:1024px;
		height:1000px;
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
	.storage-nav{
		margin-top:150px;
	}
	.storage-list a{
		color:black;
		text-decoration:none;
	}
	.mylist{
		margin-top:30px;
		margin-left:50px;
		width:924px;
	}
	table{
		border-spacing:0 50px;
	}
	table tr{
		height:180px;
	}
	table img{
		width:140px;
		height:140px;
		border-radius:10px;
	}
	table span{
		margin-left:10px;
		
	}
	.listname{
		font-size:14px;
		font-weight:600;
	}
	.listcnt{
		font-size:12px;
	}
	.listdate{
		font-color:gray;
		font-size:12px;
	}
	#right_p{
		position:block;
		text-align:right;
		margin-right:50px;
		font-size:12px;
		cursor:pointer;
	}
	.plus a{
		font-size:12px;
		color:blue;
	}
	#stor_select{
		color:white;
		font-weight:600;
	}
	#li_select{
		background:blue;
		border-radius:20px;
	}
</style>
<script type="text/javascript" src="${path}/z02_js/jquery-3.5.1.js"></script>
<script type="text/javascript">
	
	$(document).ready(function(){
		$(".stor_unselect").mouseover(function(){
			$(this).css("color","blue");	
			$(this).css("cursor","pointer");
		});
		$(".stor_unselect").mouseout(function(){
			$(this).css("color","black");
		});
		$("#stor_select").mouseover(function(){	
			$(this).css("cursor","pointer");
		});
	});
</script>
</head>
<body>
	<div class="container">
		<div class="storage">
			<div class="storage-nav">
				<ul class="storage-list">
					<li id="li_select"><a href="#" id="stor_select">내 리스트</a></li>
					<li><a href="#" class="stor_unselect">♡ 곡</a></li>
					<li><a href="#" class="stor_unselect">♡ 앨범</a></li>
					<li><a href="#" class="stor_unselect">♡ 가수</a></li>
					<li><a href="#" class="stor_unselect">♡ 많이 들은 곡</a></li>
					<li><a href="#" class="stor_unselect">♡ 최근 들은 곡</a></li>
				</ul>
			</div>
			<div class="mylist">
				<div id="right_p">편집</div>
				<table>
				<col width="16%"><col width="17%"><col width="16%"><col width="17%"><col width="16%"><col width="17%">
					<tr><td><img src="../z00_imgs/mylist_img01.jpg"/></td>
						<td><span class="listname">리스트명</span><br>
							<span class="listcnt">총 15곡</span><br><br>
							<span class="listdate">2021.03.01</span></td>
						<td><img src="../z00_imgs/mylist_img02.jpg"/></td>
						<td><span class="listname">리스트명</span><br>
							<span class="listcnt">총 7곡</span><br><br>
							<span class="listdate">2021.03.02</span></td>
						<td><img src="../z00_imgs/mylist_img03.jpg"/></td>
						<td><span class="listname">리스트명</span><br>
							<span class="listcnt">총 20곡</span><br><br>
							<span class="listdate">2021.03.03</span></td>
					</tr>
					<tr><td><img src="../z00_imgs/mylist_plus_img.PNG"/></td>
						<td><span class="plus"><a href="#">새로운 리스트 만들기</a></span></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
				</table>
			</div>
		</div>
	</div>
</body>
</html>