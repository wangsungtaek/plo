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
<style>
  /*전체 페이지*/
 .wrapper{
     width:1080px;
     height:100px;    
     background-color:white; 
     margin:0 auto;
     }
     
     
    /*앨범 메뉴*/
    .section_content_wrap{
    position:relative;
    padding:70px 0 0 0;
    }
    
    /*앨범 메뉴*/
    .section_content_head{
    position:relative;
    z-index:20;
    min-height:20px;
    font-weight:bold;
    }
    
    /*제목*/
   .section_title{
    color:#333;
    font-weight:bold;
   }
    
    
   .swiper_horizon {
    min-height: 189px;
    margin-top: 6px;
    overflow-x: hidden;
    overflow-y: hidden;
    white-space: nowrap;
    }    
    
   .swiper-wrapper{
    position:relative;
    width:100%;
    height:100%;
    z-index:1;
    display:flex;
    transition-property:transform, -webkit-transform;
    box-sizing:content-box;
   }
 
   .swiper-slide{
   flex-shrink:0;
   width:100%;
   height:100%;
   position:relative;
   transition-property: transform,-webkit-transform;
   }
   .thmbnail_list{
   margin-left:-16px;
   }
   
   .thumbnail_list li{
   display:inline-block;
   vertical-align:top;
   overflow:hidden;
   width:175px;
   margin-left:20px;   
   }
 
   div{
   margin:0;
   padding:0;
   border:0;
   }
 
  .album_thumnail{
    position: relative;
    height: 175px;
    width: 175px;
    margin-bottom: 15px;
    padding-top: 14px;
    line-height: 175px;
    text-align: center;
    background: transparent;
  }
 
   .album_thumnail .link_thumbnail{
    z-index: 3;
    position: relative;
    display: block;
    height: 100%;
    width: 100%;
    border-radius: 6px;
    background-size: cover;
    background-repeat: no-repeat;
    background-color: white;
   }
   
   .btn_thumbnail_play{
   z-index: 3;
   postition:absolute;
   right:9px;
   bottom:12px;
   color: transparent;
   text-indent:100%;
   vertical-align:middle;
   white-space:nowrap;
   overflow:hidden;
   background-image:url;
   background-position:-569px -310px;
   width:32px;
   height:32px; 
   }
   
   .thumbnail_list li .album_title_text{
   display:block;
   margin:0 3px;
   font-size:15px;
   white-space: normal;   
   }
   
   .thumbnail_list li .artist_title_text{
   display:block;
   margin:5px 3px 0;
   color: #969696;
   font-size:13px;
   white-space:normal;   
   }
   

</style>
<script type="text/javascript">
</script>
</head>

<body>
<div class=wrapper>

<!-- 추천 음악 배너 -->
<section class="section_content_wrap">
 <div class="section_content_head">
  <h3>
   <a href="#" class="section_title">
  혈액형에 딱 맞는 노래들, 들어볼래?
   </a>
  </h3>
 </div>
 <div class="swiper-wrapper">
  <ul class="thumbnail_list">
   <li class>
     <div class="thumbnail_item area">
      <div class="album_thumnail">
        <a href="#" class="link_thumbnail">
        <img src="../z00_imgs/main_Img22.PNG" width="175" height="175">        
        </a>
        
       </div>
      </div>
    </li>
   
   
      <li class>
     <div class="thumbnail_item area">
      <div class="album_thumnail">
        <a href="#" class="link_thumbnail">
        <img src="../z00_imgs/main_Img23.PNG" width="175" height="175">        
        </a>
       </div>
      </div>
    </li>
    
    
     <li class>
     <div class="thumbnail_item area">
      <div class="album_thumnail">
        <a href="#" class="link_thumbnail">
        <img src="../z00_imgs/logo.png" width="90" height="40">          
        </a>
       </div>
      </div>
    </li>
    
     <li class>
     <div class="thumbnail_item area">
      <div class="album_thumnail">
        <a href="#" class="link_thumbnail">
        <img src="../z00_imgs/main_Img24.PNG" width="175" height="175">        
        </a>
       </div>
      </div>
    </li>
    
     <li class>
     <div class="thumbnail_item area">
      <div class="album_thumnail">
        <a href="#" class="link_thumbnail">
        <img src="../z00_imgs/main_Img25.PNG" width="175" height="175">        
        </a>
       </div>
      </div>
    </li>
    

</section>

<section class="section_content_wrap">
 <div class="section_content_head">
  <h3>
   <a href="#" class="section_title">
   최신 발매 앨범
   </a>
  </h3>
 </div>
 <div class="swiper-wrapper">
  <ul class="thumbnail_list">
   <li class>
     <div class="thumbnail_item area">
      <div class="album_thumnail">
        <a href="#" class="link_thumbnail">
        <img src="../z00_imgs/main_Img01.PNG" width="175" height="175">        
        </a>
        
       </div>
      </div>
    </li>
   
   
      <li class>
     <div class="thumbnail_item area">
      <div class="album_thumnail">
        <a href="#" class="link_thumbnail">
        <img src="../z00_imgs/main_Img02.PNG" width="175" height="175">        
        </a>
       </div>
      </div>
    </li>
    
     <li class>
     <div class="thumbnail_item area">
      <div class="album_thumnail">
        <a href="#" class="link_thumbnail">
        <img src="../z00_imgs/main_Img03.PNG" width="175" height="175">        
        </a>
       </div>
      </div>
    </li>
    
     <li class>
     <div class="thumbnail_item area">
      <div class="album_thumnail">
        <a href="#" class="link_thumbnail">
        <img src="../z00_imgs/main_Img04.PNG" width="175" height="175">        
        </a>
       </div>
      </div>
    </li>
    
     <li class>
     <div class="thumbnail_item area">
      <div class="album_thumnail">
        <a href="#" class="link_thumbnail">
        <img src="../z00_imgs/main_Img05.PNG" width="175" height="175">        
        </a>
       </div>
      </div>
    </li>
    
     <li class>
     <div class="thumbnail_item area">
      <div class="album_thumnail">
        <a href="#" class="link_thumbnail">
        <img src="../z00_imgs/main_Img06.PNG" width="175" height="175">        
        </a>
       </div>
      </div>
    </li>
    
     <li class>
     <div class="thumbnail_item area">
      <div class="album_thumnail">
        <a href="#" class="link_thumbnail">
        <img src="../z00_imgs/main_Img07.PNG" width="175" height="175">        
        </a>
       </div>
      </div>
    </li>
    
     <li class>
     <div class="thumbnail_item area">
      <div class="album_thumnail">
        <a href="#" class="link_thumbnail">
        <img src="../z00_imgs/main_Img08.PNG" width="175" height="175">        
        </a>
       </div>
      </div>
    </li>
    
     <li class>
     <div class="thumbnail_item area">
      <div class="album_thumnail">
        <a href="#" class="link_thumbnail">
        <img src="../z00_imgs/main_Img09.PNG" width="175" height="175">        
        </a>
       </div>
      </div>
    </li>
    
     <li class>
     <div class="thumbnail_item area">
      <div class="album_thumnail">
        <a href="#" class="link_thumbnail">
        <img src="../z00_imgs/main_Img10.PNG" width="175" height="175">        
        </a>
       </div>
      </div>
    </li> 
  </ul>
 </div>
</section>

<!-- 장르 콜렉션 -->

<section class="section_content_wrap">
 <div class="section_content_head">
  <h3>
   <span>장르 콜렉션</span>
  </h3>
 </div>
 <div class="swiper-wrapper">
  <ul class="thumbnail_list">
   <li class>
     <div class="thumbnail_item area">
      <div class="album_thumnail">
        <a href="#" class="link_thumbnail">
        <img src="../z00_imgs/main_Img11.PNG" width="175" height="75">        
        </a>
       </div>
      </div>
    </li>
   
   
      <li class>
     <div class="thumbnail_item area">
      <div class="album_thumnail">
        <a href="#" class="link_thumbnail">
        <img src="../z00_imgs/main_Img12.PNG" width="175" height="75">        
        </a>
       </div>
      </div>
    </li>
    
     <li class>
     <div class="thumbnail_item area">
      <div class="album_thumnail">
        <a href="#" class="link_thumbnail">
        <img src="../z00_imgs/main_Img13.PNG" width="175" height=75">        
        </a>
       </div>
      </div>
    </li>
    
     <li class>
     <div class="thumbnail_item area">
      <div class="album_thumnail">
        <a href="#" class="link_thumbnail">
        <img src="../z00_imgs/main_Img14.PNG" width="175" height="75">        
        </a>
       </div>
      </div>
    </li>
    
     <li class>
     <div class="thumbnail_item area">
      <div class="album_thumnail">
        <a href="#" class="link_thumbnail">
        <img src="../z00_imgs/main_Img15.PNG" width="175" height="75">        
        </a>
       </div>
      </div>
    </li>
    
     <li class>
     <div class="thumbnail_item area">
      <div class="album_thumnail">
        <a href="#" class="link_thumbnail">
        <img src="../z00_imgs/main_Img16.PNG" width="175" height="75">        
        </a>
       </div>
      </div>
    </li>
    
     <li class>
     <div class="thumbnail_item area">
      <div class="album_thumnail">
        <a href="#" class="link_thumbnail">
        <img src="../z00_imgs/main_Img17.PNG" width="175" height="75">        
        </a>
       </div>
      </div>
    </li>
    
     <li class>
     <div class="thumbnail_item area">
      <div class="album_thumnail">
        <a href="#" class="link_thumbnail">
        <img src="../z00_imgs/main_Img18.PNG" width="175" height="75">        
        </a>
       </div>
      </div>
    </li>
    
     <li class>
     <div class="thumbnail_item area">
      <div class="album_thumnail">
        <a href="#" class="link_thumbnail">
        <img src="../z00_imgs/main_Img19.PNG" width="175" height="75">        
        </a>
       </div>
      </div>
    </li>
    
     <li class>
     <div class="thumbnail_item area">
      <div class="album_thumnail">
        <a href="#" class="link_thumbnail">
        <img src="../z00_imgs/main_Img20.PNG" width="175" height="75">        
        </a>
       </div>
      </div>
          
    </li> 
     
     <li class>
        <a href="#">
        <img src="../z00_imgs/main_Img21.PNG" width="175" height="75">        
        </a>
       </li>     
       </div>
      </div>
      </div> 
      </div>    
  </ul>
 
</section>
</div>

</body>
<%@ include file="footer.jsp"%>
</html>