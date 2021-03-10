<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*" 
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/> 
<fmt:requestEncoding value="UTF-8" />   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PLO</title>
<link rel="stylesheet" href="${path}/z01_css/default.css">
<style>

.signin_content{
	margin:0 auto;
	width:1024px;
	height:1200px;
	border : 1px solid yellow; /*삭제*/
}

img{
	width : 72px;
	height : 32px;
	display : absolute; 
	margin-left : 47%;
	margin-top : 50px;	
}

#box{
	margin : 0 auto;
	width : 620px;
	height : 700px;
	border : 1px solid lightgray;
	margin-top : 80px;
}

#title{
	margin-left : 250px;
	margin-top : 75px;
	font-size : 30px;
	font-weight : bold;
}
hr{
	width : 400px;
	size : 1px;
	color : #ebebeb;
	align : center;	
}
#topline{
	margin-top : 35px;
}
#check{ /*테이블*/
	width : 400px;
	height : 250px;
	margin-left : 110px;
}

#color{
	color : #FF8533;
}
#allText{
	font-size : 13px;
	font-weight : lighter;
	color : gray;
	cursor: pointer;
}
#popup1 {
    display: none; /*숨기기*/
    position: fixed;
    width: 100%;
    height: 100%;
    background: rgba(0,0,0,0.5);
}
#popmenu{
	position: absolute;
    left: 50%;
    top: 50%;
    transform: translate(-50%,-50%);
    width: 300px;
    height: 200px;
    text-align: center;
    background: #fff;
}

.exit {
    position: absolute;
    left: 50%;
    bottom: 10px;
    transform: translate(-50%,0);
    width: 60px;
    height: 30px;
    text-align: center;
    background: #007AAE;
    cursor: pointer;
}
</style>
<script type="text/javascript" src="${path}/z02_js/jquery-3.5.1.js"></script>
<script type="text/javascript">
	
	$(document).ready(function() {
	    $("#allText").click(function() {
	        $("#popup1").fadeIn();
	    });
	    $("#popup1").click(function() {
	        $("#popup1").fadeOut();
	    });
	});

</script>
</head>
<body>
	<div class="signin_content">

		<img src="../z00_imgs/logo.png"/>
		
		<div id="box">
	   		<div id="title">이용약관</div>
	   		<hr id= "topline">
	   		
	   		<table id="check" border>
	   			<col width="85%"><col width="15%">
	   			<tr>
	   				<td><label><input type="checkbox" name="check01" value="check01">  
	   					<span id="color">(필수)</span> 이용약관</label></td>
	   				<td><span id="allText">전문보기</span></td>
	   			</tr>
	   			<tr><td></td><td></td></tr>
	   			<tr><td></td><td></td></tr>
	   			<tr><td></td><td></td></tr>
	   			<tr><td></td><td></td></tr>
	   		</table>
	   		
	   		<div id="popup1">
	   			<div id="popmenu">
		           <p>팝업내용</p>
      			 </div>
	   		</div>
	   		
	   		
		</div>
   </div>
</body>
</html>