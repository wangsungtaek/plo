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
	margin:0 auto;	width:1024px;	height:1000px;	padding-top : 10px;	}
#box{
	margin : 0 auto;	width : 620px;	height : 600px;	border : 1px solid lightgray;	margin-top : 200px; 	}
.logo {
	width : 72px;	height : 32px;  margin-left : -274px;	margin-left : 45%;	margin-top : 50px;	}
#joinTable{
	width : 300px;	height : 350px;	margin-top: 30px; margin-left : 160px; font-size:14px; }		
#joinTable td{
	padding : 5px; }
.input{
	box-shadow : 0px; width : 300px; height: 40px; border-bottom :1px solid lightgray;	border-top : none;	border-left : none;	border-right : none; font-size:13px; }
.input:focus{
	outline : none; }
#doneBtn{
	width : 300px;	height : 50px;	background-color : #FF8533;	border : none;	margin-top : 20px;	margin-right: 10px; margin-left : 160px; }
#doneBtn:focus{
	outline : none; }
</style>
<script type="text/javascript" src="${path}/z02_js/jquery-3.5.1.js"></script>
<script type="text/javascript">

   $(document).ready(function(){
	    var nameObj=document.querySelector("[name=name]");
		var emailObj=document.querySelector("[name=email]");
		var birthObj=document.querySelector("[name=birth]");
	    var idObj=document.querySelector("[name=id]");
		var pass1Obj=document.querySelector("[name=pass1]");
		var pass2Obj=document.querySelector("[name=pass2]");
		
	    $("#doneBtn").click(function(){
	    	if(nameObj.value==""){
				alert("이름을 입력하세요.");
				nameObj.focus();
				return false;
			} 
			if(emailObj.value==""){
				alert("이메일을 입력하세요.");
				emailObj.focus();
				return false;
			} 
			if(birthObj.value==""){
				alert("생년월일을 입력하세요.");
				birthObj.focus();
				return false;
			}else{
		        if(birthObj.value.length != 6 ){
		       		alert("생년월일을 6글자로 입력하세요.(YYMMDD)");
		       		birthObj.value="";
		       		birthObj.focus();
		            return false;
		        }	
			}
	    	if(idObj.value==""){
				alert("id를 입력하세요.");
				idObj.focus();
				return false;
			} else{
		        if(idObj.value.length<4 || idObj.value.length>16){
		       		alert("4~16글자로 입력하세요.");
		       		idObj.value="";
		       		idObj.focus();
		            return false;
		        }else{
		        	if(idObj.value==''){
		        		alert("이미 존재하는 id입니다.");
		        		idObj.value="";
		        		idObj.focus();
		    	        return false;
		        	}		        	
		        }
		    }
	    	if(pass1Obj.value==""){
				alert("password를 입력하세요.");
				pass1Obj.focus();
				return;
			} else{
		        if(pass1Obj.value.length<8 || pass1Obj.value.length>16  ){
		       		alert("8~16글자로 입력하세요.");
		       		pass1Obj.value="";
		       		pass1Obj.focus();
		       		return false;
		        }
		    }
			if(pass2Obj.value==""){
				alert("password를 입력하세요.");
				pass2Obj.focus();
				return false;
			} else{
		        if(pass2Obj.value.length<8 || pass2Obj.value.length>16  ){
		       		alert("8~16글자로 입력하세요.");
		       		pass2Obj.value="";
					return false;
		        }
		    }
			if(!(pass1Obj.value==pass2Obj.value)){
				alert("비밀번호를 동일하게 입력해주세요");
				pass1Obj.focus();
				return false;
			}	    		    		    	 	    		    		    
	    	location.href="signin_3.jsp";
   		});
   
   });
</script>
</head>
<body>
	<div class="signin_content">
		<%@ include file="header.jsp" %>
		<div id="box">
			<img class="logo" src="../z00_imgs/logo.png"/>
			
			<form method="post"> 
				<table id="joinTable" >				
					<tr><td><input type="text" name="name" class="input" placeholder="&nbsp;&nbsp;이름"></td></tr>
					<tr><td><input type="email" name="email" class="input" placeholder="&nbsp;&nbsp;이메일주소 (example@google.com)"></td></tr>
					<tr><td><input type="text" name="birth" class="input" placeholder="&nbsp;&nbsp;생년월일 (YYMMDD)"></td></tr>
					<tr><td><input type="text" name="id" class="input" placeholder="&nbsp;&nbsp;아이디 (4~16자)"></td></tr>
					<tr><td><input type="password" name="pass1" class="input" placeholder="&nbsp;&nbsp;비밀번호 (8자~16자)"></td></tr>
					<tr><td><input type="password" name="pass2" class="input" placeholder="&nbsp;&nbsp;비밀번호확인"></td></tr>			
				</table>
			</form>				
			<button id="doneBtn"><span style="font-weight:bold; color:#fff; font-size:15px;">가입 완료</span></button>
		</div>
		<%@ include file="footer.jsp" %>
	</div>

</body>
</html>