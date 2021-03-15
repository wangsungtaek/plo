<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8" import="java.util.*" import="jspexp.z01_vo.*"
   import="jspexp.a03_database.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<fmt:requestEncoding value="UTF-8" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PLO</title>
<link rel="stylesheet" href="../z01_css/default.css">
<style>

     body{
      margin:0px;
      padding:0px;
     }
    
     /*페이지*/
      .page{
       display: flex;
       flex-direction: column;
       }
       
     /*전체 페이지*/
    .wrapper{
       width:1080px;
       height:100px;
       background-color:white; 
       margin:0 auto;
     }
    
     /*헤더*/
    .main_header {
       position: absolute;
       display: block;
       height:100px;
       width:1080px;
       }
     
     /*메인 로고*/  
     #main_logo{
       position:absolute;
     }
     
     /*메인 로고 이미지*/
     #main_logo img{
       width:90px;
       height:40px;
       margin-top:30px;
       }
       
      /*메뉴바*/ 
       #menubar{
       position:absolute;
       margin-top:30px;
       margin-left:100px;
       width:750px;
       height:30px;
       }
       
       /*메뉴바 검색 카테고리*/
       #menubar ul{
       display:inline-block;
       margin:0px;
       padding:0px;
       width:300px;
        }
        
       /*메뉴바 검색 카테고리 상세*/
       #menubar ul li{
       display:inline-block;
       padding:10px 30px;    
       }
      
      /*메뉴바 검색 카테고리 상세*/ 
       #menubar ul li a{
       text-decoration:none;
       font-size:15px;
       font-weight:bold;
       color:black;
       }
       
       /*검색창*/
       #menubar #menu_search{
       display:inline-block;
       padding-left:0px;
       }
       
       /*검색창*/
       #menu_search input[type=text]{
       border:1px solid #FF8533;
       border-radius:5px;
       }
      
       /*검색 버튼*/ 
       #menu_search input[type=button]{
       border: 1px solid gray;
       border-radius:5px;
       background-color:#FF8533;
       color:white;
       border-color:#FF8533;
       }
       
       /*로그인 버튼*/
       #top_logjoin{
       position:absolute;
       display:inline-block;
       right:0px;
       top:30px;
       width:250px;
       }
      
       /*로그인*/ 
       #top_logjoin li{
       display:inline-block;
       list-style-type:none;
       padding:10px 10px;
       }
       
       /*회원가입*/
       #top_logjoin a{
       color:black;
       text-decoration:none;
       font-size:15px;
       font-weight: bold;
       }
       
       /*관리자*/
       .adminBtn{
       color:black;
       text-decoration:none;
       font-size:15px;
       font-weight: bold;     
       }
       
   </style>
</head>
<body>
 <div class="page">
  <div class="wrapper">
    <div class="main_header">
      <div id="main_logo">
       <a href="${path}/a01_main/main.jsp"><img src="../z00_imgs/logo.png"></a>
      </div>
     
     <nav id="menubar">
       <ul>
        <li><a href="${path}/a05_music/chart.jsp">둘러보기</a></li>
        <li><a href="${path}/a10_storage/store_1.jsp">보관함</a></li>
       </ul>
      <form id="menu_search">
       <input type="text" placeholder="검색어를 입력하세요" size="50px">
       <a href="${path}/a01_main/main_search_album.jsp"><input type="button" value="검색" size="10px"></a>   
      </form>
     </nav> 
   
      
      
       <ul id="top_logjoin">
       <li>
			<c:if test="${m.u_name != 'admin'}">
			<div id="adminBtn">
				<a href="${path}/admin">관리자</a>
			</div>
			</c:if>
		</li>
		
        <li><a href="${path}/a03_login/login.jsp">로그인</a></li>
        <li><a href="${path}/a03_login/signin_1.jsp">회원가입</a></li>
      </ul>
    </div> 
    </div>
   </div>
   </body>
   
  
   