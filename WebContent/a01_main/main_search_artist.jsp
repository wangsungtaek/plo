<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<c:set var="path" value="${pageContext.request.contextPath}"/> 
<fmt:requestEncoding value="UTF-8" /> 
<%@ include file="header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Plo</title>
<link rel="stylesheet" href="../z01_css/default.css">
<script type="text/javascript" src="/jspexp/a00_com/jquery-3.5.1.js"></script>
<script type="text/javascript">

</script>
<style>

  .section_inner {
    width: 1080px;
    height: 700px;
    margin: 0 auto;
    padding-top: 30px;
    }
    
    .text{
     font-weight:bold;
     font-size:20px;
    }
   
    .tab{
    overflow: hidden;
    position: relative;
    padding-right: 40px;
    height: 32px;
    float:right;
     }
  
  .section_search .tab{
   margin-top:25px;
   }
  
  .tab{
  overflow: hidden;
  position: relative;
  padding-right: 40px 10px;
  height: 50px;
  top:-20px;
  font-size:15px;
  font-weight:bold;
  }
  
  .tab li{
  display:inline-block;
  padding:10px 30px; 
  } 
  
  .albumC{
  color:#FF8533;
  }
   
  .album{
  display:inline-block;
  height:500px;
  width:1028px;
  }
  
  .albumDetail{
   display:inline-block;
   height:150px;
   width:150px;
   padding:20px;
   font-size:15px;
   font-weight:bold;
  }
  
  .albumText{
  font-size:15px;
  font-weight:bold;
  }
  
  .albumArtist{
   font-size:15px;
   font-weight:bold;
   top:-30px;
   }
  
</style>
<script type="text/javascript">

</script>
</head>
<body>
   <div class="wrapper">
    </div>
   <div class="page">
   <div class="section_inner">
   <div class="text">
    <h2>'블랙핑크' 검색결과</h2>
    </div>

  <div class="tab">
 
 <ul>
   <li><a href="main_search_song.jsp">곡</a></li>
   <li><a href="main_search_album.jsp">앨범</a></li>
   <li class="albumC"><a href="main_search_artist.jsp">아티스트</a></li>
   <li><a href="main_search_lyrics.jsp">가사</a></li>
 </ul>

  </div>

<div class="album">
 <ul>
   <li>
    <img src="../z00_imgs/main_search_artist02.PNG" width="150px" height="150px">
     <span class="albumDetail">
     <div class="albumText">
     <a href="#">BLACKPINK</a><br><br><br>
     </div>
     <div class="albumArtist">
      <a href="#">그룹</a>
        <br><br>
      <br><br>
     </div>
     </span>
  
    <img src="../z00_imgs/main_search_artist01.PNG" width="150px" height="150px">
     <div class="albumDetail">
     <div class="albumText">
       <a href="#">로제</a><br><br><br>
    </div>
    <div class="albumArtist">
       <a href="#">솔로</a><br><br>
       <br><br>
    </div>
    </div>
   </li>
  
   <li>
   <img src="../z00_imgs/main_search_artist03.PNG" width="150px" height="150px">
    <div class="albumDetail">
    <div class="albumText">
      <a href="#">지수</a><br><br><br>
   </div>
   <div class="albumArtist">
      <a href="#">솔로</a><br><br><br><br>
    </div>
    </div>
 
  <img src="../z00_imgs/main_search_artist04.PNG" width="150px" height="150px">
   <div class="albumDetail">
   <div class="albumText">
       <a href="#">제니</a><br><br><br>
  </div>
  <div class="albumArtist">
       <a href="#">솔로</a><br><br><br><br>
    </div>
    </div>
     </li>
     
     <li>
     <img src="../z00_imgs/main_search_artist05.PNG" width="150px" height="150px">
   <div class="albumDetail">
   <div class="albumText">
       <a href="#">리사</a><br><br><br>
  </div>
  <div class="albumArtist">
       <a href="#">솔로</a><br><br><br><br>
    </div>
    </div>
  </li>
 </div>
 </div>
</ul>
</div>
<%@ include file="footer.jsp"%>
</body>
</html>