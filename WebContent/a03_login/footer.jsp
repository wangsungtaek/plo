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
<style>

.footer{
	margin:0 auto; padding:0 auto; position : relative; height:310px; width:1080px; background:  #FFDAB9; 
   margin-top : 100px; font-size:15px;}
.footer a{
 	text-decoration : none; color : #000;} 
 /*하단 사이트 정보 상세*/
.footer_site{   
    width:1080px; padding:40px; margin: 0 auto;  font-weight: bold;  }
/*하단 사이트 정보글 */
.content{
    width: 1080px; padding:10px; margin:10 auto;   margin-left : 30px;  line-height : 100%;  }
   
</style>
</head>
<body>

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

</body>
       