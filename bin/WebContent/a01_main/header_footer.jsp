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
<link rel="stylesheet" href="default.css">
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
       height:2000px;
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
       width:180px;
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
       
   
   
   
   
       /*css*/
       
       
       
       
       
       
       /*하단 사이트 정보*/
       .footer{
       position : absolute;
       top:1800px;
       height:310px;
       width:1080px;
       background:  #FFDAB9; 
       margin-top : auto;
       sfont-size:15px;
       }
       
       /*하단 사이트 정보 상세*/
       .footer_site{   
       width:1080px;
       padding:40px;
       margin: 0 auto;
       font-weight: bold; 
       }
      
      /*하단 사이트 정보글 */
       .content{
       width: 1080px;
       padding:10px;
       margin:10 auto;     
       }
   
</style>
</head>
<body>
 <div class="page">
  <div class="wrapper">
    <div class="main_header">
      <div id="main_logo">
       <a href="#"><img src="z00_imgs/logo.png"></a>
      </div>
     
     <nav id="menubar">
       <ul>
        <li><a href="#">둘러보기</a></li>
        <li><a href="#">보관함</a></li>
       </ul>
      <form id="menu_search">
       <input type="text" placeholder="검색어를 입력하세요" size="50px">
       <input type="button" value="검색" size="10px">   
      </form>
     </nav> 
      <!-- 
      <c:if test="${m.m_name == 'admin'}">
		<div id="gameInsert-link">
			<a href="gameManager.jsp">게임관리</a>
		</div>
		</c:if>
		 -->
      
      
      
      
      <ul id="top_logjoin">
        <li><c:if test="${m.m_name == 'admin'}">
		<div id="adminBtn">
			<a href="#">관리자</a>
		</div>
		</c:if>
        </li>
        <li><a href="#">로그인</a></li>
        <li><a href="#">회원가입</a></li>
      </ul>
    </div> 

   <!-- 코드 작성해주세요 -->


 
 <div class="footer">
   <div class="footer_site">
    <a href="">공지사항 | </a>
     <a href="">고객센터 |</a>
     <a href="">PLO 플레이어 다운로드  </a>
 
 <br><br>

     <a href="">회사소개 |</a>
     <a href="">이용약관 |</a>
     <a href="">개인정보 처리방침 |</a> 
     <a href="">청소년 보호정책 |</a> 
     <a href="">사업자 정보 확인 </a>
    </div>
 
      <div class="content">
     대표이사 : 김김김  <br><br>
     이메일 : plo@music-plo.com | &nbsp 사업자 등록번호 : 134-57-14646 |
     &nbsp 통신판매업 신고번호 : 2021-서울역삼-1331<br><br>
    주소 및 대표번호 플로하우스 : 서울특별시 서초구 강남대로 대표전화: 1341-3141<br><br>
    아이리버 : 서울특별시 서초구 역삼동 &nbsp 대표전화: 1931-2492
    (주)플로1조컴퍼니
    <br><br>
    ALL RIGHTS RESERVED
       </div>
      </div>
    </div>
   </div>
</body>
       
       