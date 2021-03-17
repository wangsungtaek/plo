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
<script src="${path}/z02_js/jquery-3.5.1.js"></script>
<link rel="stylesheet" href="../z01_css/default.css">
<style>
  /*전체 페이지
   여백 제거*/
   body{
    margin:0px;
    padding:0px;
    }
   
   /*전체 감싸는 것*/
   .wrapper{
    width:100%;   
    }
   
   /*콘텐츠*/
   div.container{
    min-width: 955px;
    max-width: 1600px;
    margin: 0 auto;
    padding:50px 0px 110px 0px;
    }
   
   /*혈액형*/
   .section_a{
    width:100%;
    padding:50px 0px 30px 0px;
    }
   
   /*혈액형 글씨*/
   .section_a_text{
    font-size:15px;
    font-weight:bold;
    }
   /*최신 음악*/
   .section_b{
	padding:50px 0px 30px 0px;
    }
  
    .section_c{
    padding:50px 0px 30px 0px;
    }
     
    .section_d{
    padding:50px 0px 30px 0px;
    }
    
    .section_e{
     padding:50px 0px 30px 0px;
     }
     
     .section_f{
     padding:50px 0px 30px 0px;
     }
     
     .section_g{
     padding:50px 0px 30px 0px;
     }
     
  	.section_box {
  	width: 955px;
  	padding-left: 80px;
  	padding-right: 80px;
  	margin: 0 auto;
  	}
   
</style>
<body>
 <div class="wrapper">
  <div class="container">
  <div class="section_box">
  <div class="section_a">
   <div class="section_a_text">
   혈액형에 딱 맞는 노래들, 들어볼래?
  
   </div>
    <br>
   <a href="#">
   <img src="../z00_imgs/main_Img22.PNG" width="200px" height="200px"></a>
    <a href="#">
   <img src="../z00_imgs/main_Img23.PNG" width="200px" height="200px"></a>
    <a href="#">
   <img src="../z00_imgs/main_Img24.PNG" width="200px" height="200px"></a>
    <a href="#">
   <img src="../z00_imgs/main_Img25.PNG" width="200px" height="200px"></a>
  </div>
  
  <div class="section_b">
   <div class="section_a_text">
    최신 발매 음악
   </div>
   <br>
  <a href="../a11_musicDetail/musicDetail.jsp">
  <img src="../z00_imgs/main_Img01.PNG"  width="200px" height="200px"></a>
  <a href="#">
  <img src="../z00_imgs/main_Img02.PNG"  width="200px" height="200px"></a>
  <a href="#">
  <img src="../z00_imgs/main_Img03.PNG"  width="200px" height="200px"></a>
  <a href="#">
  <img src="../z00_imgs/main_Img04.PNG"  width="200px" height="200px"></a>
  </div>
  
  <div class="section_c">
  <a href="#">
  <img src="../z00_imgs/main_Img05.PNG"  width="200px" height="200px"></a>
   <a href="#"> 
  <img src="../z00_imgs/main_Img06.PNG"  width="200px" height="200px"></a>
   <a href="#">
  <img src="../z00_imgs/main_Img07.PNG"  width="200px" height="200px"></a>
   <a href="#">
  <img src="../z00_imgs/main_Img08.PNG"  width="200px" height="200px"></a>
   </div>
  
   <div class="section_d">
   <a href="#">
   <img src="../z00_imgs/main_Img09.PNG"  width="200px" height="200px"></a>
   <a href="#">
   <img src="../z00_imgs/main_Img10.PNG"  width="200px" height="200px"></a>
   </div>
   
   <div class="section_e">
   <div class="section_a_text">
    장르 콜렉션
   </div>
   <br>
   <a href="..a05_music/genre.jsp">
   <img src="../z00_imgs/main_Img11.PNG" width="175px" height="75px"></a>
    <a href="..a05_music/genre.jsp">
   <img src="../z00_imgs/main_Img12.PNG" width="175px" height="75px"></a>
    <a href="..a05_music/genre.jsp">
   <img src="../z00_imgs/main_Img12.PNG" width="175px" height="75px"></a>
    <a href="..a05_music/genre.jsp">
   <img src="../z00_imgs/main_Img13.PNG" width="175px" height="75px"></a>
    <a href="..a05_music/genre.jsp">
   <img src="../z00_imgs/main_Img14.PNG" width="175px" height="75px"></a>  
   </div>
   
   <div class="section_f">
   <br>
   <a href="..a05_music/genre.jsp">
   <img src="../z00_imgs/main_Img15.PNG" width="175px" height="75px"></a>
   <a href="..a05_music/genre.jsp">
   <img src="../z00_imgs/main_Img16.PNG" width="175px" height="75px"></a>
   <a href="..a05_music/genre.jsp">
   <img src="../z00_imgs/main_Img17.PNG" width="175px" height="75px"></a>
   <a href="..a05_music/genre.jsp">
   <img src="../z00_imgs/main_Img18.PNG" width="175px" height="75px"></a>
   <a href="..a05_music/genre.jsp">
   <img src="../z00_imgs/main_Img19.PNG" width="175px" height="75px"></a>
   </div>
   
   <div class="section_g">
   <br>
   <a href="..a05_music/genre.jsp">
   <img src="../z00_imgs/main_Img20.PNG" width="175px" height="75px"></a>
   <a href="..a05_music/genre.jsp">
   <img src="../z00_imgs/main_Img21.PNG" width="175px" height="75px"></a> 
  </div>
  
  <%@include file="footer.jsp" %>

  </div>
  <%@include file="../a09_playList/musicplayer.jsp" %>
 </div><!-- container -->
 </div><!-- wrapper -->
</body>
</html>