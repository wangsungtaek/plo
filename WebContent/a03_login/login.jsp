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
<style>
.signin_content{
	margin:0 auto;	width:1024px;	height:1000px;		padding-top : 10px;}
#box{
	margin : 0 auto;	width : 620px;	height : 400px;	border : 1px solid lightgray;	margin-top : 200px;	}
#loginTable{
	width : 400px;	height : 220px;	margin-top: 60px; margin-left : 110px; font-size:14px;}		
#loginTable td{
	padding : 5px; }
.input{
	box-shadow : 0px; width : 390px; height: 40px; border-bottom :1px solid lightgray;	border-top : none;	border-left : none;	border-right : none; font-size:13px; }
.input:focus{
	outline : none; }
#loginBtn{
	width : 400px;	height : 50px;	background-color : #FF8533;	border : none; color : #fff; font-weight : bold;}
#loginBtn:focus{
	outline : none; }
#btnGp{
	width : 400px;	margin-left : 110px; color : gray;}
#btnGp a{
	 color: inherit; text-decoration: none;}


</style>
<script type="text/javascript" src="${path}/z02_js/jquery-3.5.1.js"></script>
<script type="text/javascript">

   $(document).ready(function(){
	   document.querySelector("form").onsubmit=function(){
   		var id=document.querySelector("[name=id]");
   		var pw=document.querySelector("[name=pw]");
   		if(id.value==""){
   			alert("아이디를 입력하세요");
   			return false;
   		}
   		else if(pw.value==""){
   			alert("비밀번호를 입력하세요");
   			return false;
   		}		
   	};
   }
   
</script>
</head>
<body>
	<div class="signin_content">
		<%@ include file="header.jsp" %>
		<div id="box">
			<form method="post"> 
				<table id="loginTable" >	
					<tr><td><input type="text" name="id" class="input" placeholder="&nbsp;아이디 (이메일)"></td></tr>
					<tr><td><input type="password" name="pw" class="input" placeholder="&nbsp;비밀번호"></td></tr>	
					<tr><td><input type="submit" value="로그인" id="loginBtn"></td></tr>
				</table>
			</form>	
			<div id="btnGp">
				<a href="idfind_1.jsp"> 아이디 찾기</a>
				<a href="pwfind_1.jsp">비밀번호찾기</a> 
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="signin_1.jsp" id="joinBtn">회원가입</a>
			</div>		
		</div>
		<%@ include file="footer.jsp" %>
	</div>


</body>
</html>