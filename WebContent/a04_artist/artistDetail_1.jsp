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
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
<link rel="stylesheet" href="default.css">
<link rel="stylesheet" href="table.css">
<style>
 body{
    margin:0px; padding:0px; }
  /*페이지*/
 .page{
    display: flex;  flex-direction: column; }
  /*전체 페이지*/
 .wrapper{
    width:1080px; display: flex; height:1200px; background-color:white;  margin:0 auto; }    
  /*헤더*/
 .main_header {
   position: absolute;  display: block; height:100px; width:1080px; }
 /*메인 로고*/  
 #main_logo{
   position:absolute; }
 /*메인 로고 이미지*/
 #main_logo img{
   width:90px; height:40px; margin-top:30px;  }       
  /*메뉴바*/ 
 #menubar{
   position:absolute;  margin-top:30px; margin-left:100px; width:750px; height:30px;  }
 /*메뉴바 검색 카테고리*/
 #menubar ul{
  display:inline-block; margin:0px; padding:0px; width:300px;  }
 /*메뉴바 검색 카테고리 상세*/
 #menubar ul li{
  display:inline-block; padding:10px 30px; }
 /*메뉴바 검색 카테고리 상세*/ 
 #menubar ul li a{
  text-decoration:none; font-size:15px;  font-weight:bold; color:black; }
 /*검색창*/
 #menubar #menu_search{
  display:inline-block; padding-left:0px; }
 /*검색창*/
 #menu_search input[type=text]{
  border:1px solid #FF8533;  border-radius:5px; }
  /*검색 버튼*/ 
 #menu_search input[type=button]{
  border: 1px solid gray; border-radius:5px; background-color:#FF8533; color:white; border-color:#FF8533; }
  /*로그인 버튼*/
 #top_logjoin{
 position:absolute; display:inline-block; 
 right:0px; top:18px; width:180px; margin-right : 25px;}
  /*로그인*/ 
 #top_logjoin li{
  display:inline-block; list-style-type:none; /* padding:10px 10px; */ margin-top : 20px;}
  /*회원가입*/
 #top_logjoin a{
   color:black; text-decoration:none;  font-size:15px; font-weight: bold;  }
 /*관리자*/
 .adminBtn{
   color:black; text-decoration:none; font-size:15px;  font-weight: bold;  }


.main_info{
	position : absolute; width : 600px; height : 100px; 
	margin-top : 170px; margin-left : 70px; }
.profile_box{
	width : 250px; height : 250px; border-radius: 70%;  overflow: hidden; border : 1px solid lightgray;
	position : absolute;  }
.profile_img{
	width: 100%;  height: 100%;  object-fit: cover;}
.playBtn_box{
	width : 58px; height : 58px; border-radius: 70%;  border: 1px solid lightgray;
	position : relative;  top : 190%; left : 30%; background-color : #fff;}
.playBtn{
	width: 0px; height: 0px; border-top: 13px solid transparent; border-bottom: 13px solid transparent; border-left: 21px solid #000; border-right: none; 
	position : relative;  top : 25%; left : 35%; }
.playBtn:hover{
	color : #FF8533;}	
.info_box{
	position : relative; top : 18%;	left : 50%;	
	width : 300px; margin-bottom : 80px;}
.artist_name{
	font-size : 28px; font-weight : bold; letter-spacing : -2px;  font-stretch : semi-condensed}
.artist_name:hover{
	color : #FF8533;}
.etc_info{
	margin-top : 20px;  }
#like_img1{
	width : 25px; height : 20px; position : relative; }
#like_img2{
	width : 25px; height : 20px; position : relative; }
.famous_song{	
	position : absolute; top : 105px; left : 60px; width : 100px;
	font-size : 13px; font-weight : thin; letter-spacing : -1px;  font-stretch : semi-condensed}
.famous_song:hover{
	color : #FF8533;}
.famous_song a{
	color:black; text-decoration:none; }			
	
.btn_nav{
	position : absolute;   margin-top:130px; margin-left : -35px;  top : 330px; }
.btn_list{
    display:flex;}
.btn_list li{
    list-style-type:none;  padding:10px 20px; }   
.btn_list a{
    color:black; text-decoration:none;}
#li_select{
    background:#FF8533;  border-radius:20px}
#select{
    color:white;    font-weight:600;}
#select:hover{
    cursor:pointer;}   
.unselect:hover{
    cursor:pointer;    color:#FF8533;} 	
.up_tab{
	position : absolute;  top :  530px; width : 1080px}
.all_song{	
	position : absolute; width : 100px; 
	font-size : 13px; font-weight : thin; letter-spacing : -1px;  font-stretch : semi-condensed }
.all_song:hover{
	color : #FF8533;}
.all_song a{
	color:black; text-decoration:none; }	
.ordering{
	position : absolute; right : 0px; width : 200px; }
.ordering li{
	display:inline-block; float : right; list-style-type:none; padding:3px 3px; 
	font-size : 13px; font-weight : thin; letter-spacing : -1px;  font-stretch : semi-condensed }
	
.song-table{
	width : 1080px; top : 570px; position : absolute; margin : 0 auto;}	
.tableAlbum{
	margin-top : 5px;}	
.title_album span{
	text-align : left; margin-left : 20px;}
.album_name{
	font-size : 11px; color : gray; margin-top : -20px;}
	
.footer{
	margin:0 auto; padding:0 auto; position : relative; height:310px; width:1080px; background:  #FFDAB9; 
    margin-top : 30px; font-size:15px;}
.footer a{
 	text-decoration : none; color : #000;} 
 /*하단 사이트 정보 상세*/
.footer_site{   
    width:1080px; padding:40px; margin: 0 auto;  font-weight: bold;  }
/*하단 사이트 정보글 */
.content{
    width: 1080px; padding:10px; margin:10 auto;   margin-left : 30px;  line-height : 100%;  }
   


</style>
<script type="text/javascript" src="${path}/z02_js/jquery-3.5.1.js"></script>
<script type="text/javascript">
   $(document).ready(function(){
      $("#like_img1").show();
      $("#like_img2").hide();
      
      $("#like_img1").click(function(){
    	  $("#like_img1").hide();
    	  $("#like_img2").show();
      })
       $("#like_img2").click(function(){
    	  $("#like_img2").hide();
    	  $("#like_img1").show();
      })
   });
</script>
</head>
<body>
	<div class="page">
	  <div class="wrapper">
	    <div class="main_header">
	      <div id="main_logo">
	       <a href="#"><img src="../z00_imgs/logo.png"></a>
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
	      
	     <ul id="top_logjoin">
	      	 <li><c:if test="${m.u_name == 'admin'}">
				 <div id="adminBtn">
					<a href="#">관리자</a>
				</div>
				</c:if>
			</li>
	       <li><a href="../a03_login/login.jsp">로그인</a></li>&nbsp;&nbsp;
	        <li><a href="../a03_login/signin_1.jsp">회원가입</a></li>
      	</ul>
	  </div> 
	    

	    <div class="main_info">
		   <div class="profile_box">
			   <img class="profile_img" src="../z00_imgs/artist01.jpg">
			</div>
		   	<div class="playBtn_box">
		   		<div class="playBtn"></div>
		   	</div>
		   	<div class="info_box">
		   		<p class="artist_name">심규선 (Lucia)</p>
		   		<p class="etc_info">
		   			<span class="actForm">솔로</span>&nbsp;&nbsp;|&nbsp;
		   			<span class="gender">여성</span>&nbsp;&nbsp;|&nbsp;
		   			<span class="genre">발라드</span>
		   		</p>		   	
			   	<img id="like_img1" src="../z00_imgs/like1.png">
				<img id="like_img2" src="../z00_imgs/like2.png">		
				<p class="famous_song"><a href="#">인기곡듣기</a></p>
			</div>
		</div>
		
		
			
			
		<div class="btn_nav">
	       <ul class="btn_list">
	           <li id="li_select"><a href="artistDetail_1.jsp" id="select">곡</a></li>
	           <li><a href="artistDetail_2.jsp" class="unselect">앨범</a></li>
	       </ul>
      	</div>
      	<div class="up_tab">
	      	<div class="all_song"><a href="#">전체듣기</a></div>
	      	<div class="ordering">
	      		<ul>
	      			<li class="order_famous">인기순</li>
	      			<li class="order_recent">최신순</li>
	      			<li class="order_abc">가나다순</li>
	      		</ul>
	      	</div>
      	</div>

			
	<div class="song-table">
        <table style="width: 100%;">
            <thead>
                <tr>
                    <td width="2%">
                        <input type="checkbox"/>
                    </td>
                    <td width="1%" class="tableheader"></td>
                    <td width="51%" class="tableheader">곡/앨범</td>
                    <td width="16%" class="tableheader">아티스트</td>
                    <td width="6%">듣기</td>
                    <td width="9%">재생목록</td>
                    <td width="9%">내 리스트</td>
                    <td width="6%">더보기</td>
                </tr>
            </thead>
            <tbody>
                <div class="songinfo">
                    <tr>
                        <td width="2%">
                            <input type="checkbox"/>
                        </td>
                        <td width="1%" class="tableheaderchild"></td>
                        <td width="51%" class="tableheaderchild">
                            <figure class="tableAlbum" style="background-image: url('../z00_imgs/albumArt1.jpg');"></figure>
                            <div class="title_album">
                                <span>섬광 閃光</span>
                                <span class="album_name"><a href="albumDetail_1.jsp">월령: 下</a></span>
                            </div>
                        </td>
                        <td width="16%" class="tableheaderchild"><a href="artistDetail_1.jsp">심규선 (Lucia)</a></td>
                        <td width="6%">
                            <button type="button">
                                <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-play-fill" viewBox="0 0 16 16">
                                    <path d="M11.596 8.697l-6.363 3.692c-.54.313-1.233-.066-1.233-.697V4.308c0-.63.692-1.01 1.233-.696l6.363 3.692a.802.802 0 0 1 0 1.393z"/>
                                </svg>
                            </button>
                        </td>
                        <td width="9%">
                            <button type="button">
                                <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-music-note-list" viewBox="0 0 16 16">
                                    <path d="M12 13c0 1.105-1.12 2-2.5 2S7 14.105 7 13s1.12-2 2.5-2 2.5.895 2.5 2z"/>
                                    <path fill-rule="evenodd" d="M12 3v10h-1V3h1z"/>
                                    <path d="M11 2.82a1 1 0 0 1 .804-.98l3-.6A1 1 0 0 1 16 2.22V4l-5 1V2.82z"/>
                                    <path fill-rule="evenodd" d="M0 11.5a.5.5 0 0 1 .5-.5H4a.5.5 0 0 1 0 1H.5a.5.5 0 0 1-.5-.5zm0-4A.5.5 0 0 1 .5 7H8a.5.5 0 0 1 0 1H.5a.5.5 0 0 1-.5-.5zm0-4A.5.5 0 0 1 .5 3H8a.5.5 0 0 1 0 1H.5a.5.5 0 0 1-.5-.5z"/>
                                </svg>
                            </button>
                        </td>
                        <td width="9%">
                            <button type="button">
                                <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-folder-plus" viewBox="0 0 16 16">
                                    <path d="M.5 3l.04.87a1.99 1.99 0 0 0-.342 1.311l.637 7A2 2 0 0 0 2.826 14H9v-1H2.826a1 1 0 0 1-.995-.91l-.637-7A1 1 0 0 1 2.19 4h11.62a1 1 0 0 1 .996 1.09L14.54 8h1.005l.256-2.819A2 2 0 0 0 13.81 3H9.828a2 2 0 0 1-1.414-.586l-.828-.828A2 2 0 0 0 6.172 1H2.5a2 2 0 0 0-2 2zm5.672-1a1 1 0 0 1 .707.293L7.586 3H2.19c-.24 0-.47.042-.684.12L1.5 2.98a1 1 0 0 1 1-.98h3.672z"/>
                                    <path d="M13.5 10a.5.5 0 0 1 .5.5V12h1.5a.5.5 0 0 1 0 1H14v1.5a.5.5 0 0 1-1 0V13h-1.5a.5.5 0 0 1 0-1H13v-1.5a.5.5 0 0 1 .5-.5z"/>
                                </svg>
                            </button>
                        </td>
                        <td width="6%">
                            <button type="button">
                                <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-three-dots-vertical" viewBox="0 0 16 16">
                                    <path d="M9.5 13a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0zm0-5a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0zm0-5a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0z"/>
                                </svg>
                            </button>
                        </td>
                    </tr>
                </div>
                <div class="songinfo">
                    <tr>
                        <td width="2%">
                            <input type="checkbox"/>
                        </td>
                        <td width="1%" class="tableheaderchild"></td>
                        <td width="51%" class="tableheaderchild">
                            <figure class="tableAlbum" style="background-image: url('../z00_imgs/albumArt2.jpg');"></figure>
                            <div class="title_album">
                                <span>창백한 푸른 점 (Pale blue dot)</span>
                                <span class="album_name"><a href="albumDetail_1.jsp">월령: 上</a></span>
                            </div>
                        </td>
                        <td width="16%" class="tableheaderchild"><a href="artistDetail_1.jsp">심규선 (Lucia)</a></td>
                        <td width="6%">
                            <button type="button">
                                <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-play-fill" viewBox="0 0 16 16">
                                    <path d="M11.596 8.697l-6.363 3.692c-.54.313-1.233-.066-1.233-.697V4.308c0-.63.692-1.01 1.233-.696l6.363 3.692a.802.802 0 0 1 0 1.393z"/>
                                </svg>
                            </button>
                        </td>
                        <td width="9%">
                            <button type="button">
                                <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-music-note-list" viewBox="0 0 16 16">
                                    <path d="M12 13c0 1.105-1.12 2-2.5 2S7 14.105 7 13s1.12-2 2.5-2 2.5.895 2.5 2z"/>
                                    <path fill-rule="evenodd" d="M12 3v10h-1V3h1z"/>
                                    <path d="M11 2.82a1 1 0 0 1 .804-.98l3-.6A1 1 0 0 1 16 2.22V4l-5 1V2.82z"/>
                                    <path fill-rule="evenodd" d="M0 11.5a.5.5 0 0 1 .5-.5H4a.5.5 0 0 1 0 1H.5a.5.5 0 0 1-.5-.5zm0-4A.5.5 0 0 1 .5 7H8a.5.5 0 0 1 0 1H.5a.5.5 0 0 1-.5-.5zm0-4A.5.5 0 0 1 .5 3H8a.5.5 0 0 1 0 1H.5a.5.5 0 0 1-.5-.5z"/>
                                </svg>
                            </button>
                        </td>
                        <td width="9%">
                            <button type="button">
                                <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-folder-plus" viewBox="0 0 16 16">
                                    <path d="M.5 3l.04.87a1.99 1.99 0 0 0-.342 1.311l.637 7A2 2 0 0 0 2.826 14H9v-1H2.826a1 1 0 0 1-.995-.91l-.637-7A1 1 0 0 1 2.19 4h11.62a1 1 0 0 1 .996 1.09L14.54 8h1.005l.256-2.819A2 2 0 0 0 13.81 3H9.828a2 2 0 0 1-1.414-.586l-.828-.828A2 2 0 0 0 6.172 1H2.5a2 2 0 0 0-2 2zm5.672-1a1 1 0 0 1 .707.293L7.586 3H2.19c-.24 0-.47.042-.684.12L1.5 2.98a1 1 0 0 1 1-.98h3.672z"/>
                                    <path d="M13.5 10a.5.5 0 0 1 .5.5V12h1.5a.5.5 0 0 1 0 1H14v1.5a.5.5 0 0 1-1 0V13h-1.5a.5.5 0 0 1 0-1H13v-1.5a.5.5 0 0 1 .5-.5z"/>
                                </svg>
                            </button>
                        </td>
                        <td width="6%">
                            <button type="button">
                                <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-three-dots-vertical" viewBox="0 0 16 16">
                                    <path d="M9.5 13a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0zm0-5a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0zm0-5a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0z"/>
                                </svg>
                            </button>
                        </td>
                    </tr>
                </div>
                <div class="songinfo">
                    <tr>
                        <td width="2%">
                            <input type="checkbox"/>
                        </td>
                        <td width="1%" class="tableheaderchild"></td>
                        <td width="51%" class="tableheaderchild">
                            <figure class="tableAlbum" style="background-image: url('../z00_imgs/albumArt3.jpg');"></figure>
                            <div class="title_album">
                                <span>새겨진 나날들이</span>
                                <span class="album_name"><a href="albumDetail_1.jsp">내가 가장 예뻤을 때</a></span>
                            </div>
                        </td>
                        <td width="16%" class="tableheaderchild"><a href="artistDetail_1.jsp">심규선 (Lucia)</a></td>
                        <td width="6%">
                            <button type="button">
                                <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-play-fill" viewBox="0 0 16 16">
                                    <path d="M11.596 8.697l-6.363 3.692c-.54.313-1.233-.066-1.233-.697V4.308c0-.63.692-1.01 1.233-.696l6.363 3.692a.802.802 0 0 1 0 1.393z"/>
                                </svg>
                            </button>
                        </td>
                        <td width="9%">
                            <button type="button">
                                <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-music-note-list" viewBox="0 0 16 16">
                                    <path d="M12 13c0 1.105-1.12 2-2.5 2S7 14.105 7 13s1.12-2 2.5-2 2.5.895 2.5 2z"/>
                                    <path fill-rule="evenodd" d="M12 3v10h-1V3h1z"/>
                                    <path d="M11 2.82a1 1 0 0 1 .804-.98l3-.6A1 1 0 0 1 16 2.22V4l-5 1V2.82z"/>
                                    <path fill-rule="evenodd" d="M0 11.5a.5.5 0 0 1 .5-.5H4a.5.5 0 0 1 0 1H.5a.5.5 0 0 1-.5-.5zm0-4A.5.5 0 0 1 .5 7H8a.5.5 0 0 1 0 1H.5a.5.5 0 0 1-.5-.5zm0-4A.5.5 0 0 1 .5 3H8a.5.5 0 0 1 0 1H.5a.5.5 0 0 1-.5-.5z"/>
                                </svg>
                            </button>
                        </td>
                        <td width="9%">
                            <button type="button">
                                <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-folder-plus" viewBox="0 0 16 16">
                                    <path d="M.5 3l.04.87a1.99 1.99 0 0 0-.342 1.311l.637 7A2 2 0 0 0 2.826 14H9v-1H2.826a1 1 0 0 1-.995-.91l-.637-7A1 1 0 0 1 2.19 4h11.62a1 1 0 0 1 .996 1.09L14.54 8h1.005l.256-2.819A2 2 0 0 0 13.81 3H9.828a2 2 0 0 1-1.414-.586l-.828-.828A2 2 0 0 0 6.172 1H2.5a2 2 0 0 0-2 2zm5.672-1a1 1 0 0 1 .707.293L7.586 3H2.19c-.24 0-.47.042-.684.12L1.5 2.98a1 1 0 0 1 1-.98h3.672z"/>
                                    <path d="M13.5 10a.5.5 0 0 1 .5.5V12h1.5a.5.5 0 0 1 0 1H14v1.5a.5.5 0 0 1-1 0V13h-1.5a.5.5 0 0 1 0-1H13v-1.5a.5.5 0 0 1 .5-.5z"/>
                                </svg>
                            </button>
                        </td>
                        <td width="6%">
                            <button type="button">
                                <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-three-dots-vertical" viewBox="0 0 16 16">
                                    <path d="M9.5 13a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0zm0-5a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0zm0-5a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0z"/>
                                </svg>
                            </button>
                        </td>
                    </tr>
                </div>
            </tbody>
            <tfoot>
                <tr><td colspan="8">
                    <input type="button" class="chart-more" value="더보기 ∨"></input>
                </td></tr>
            </tfoot>
        </table>
      </div>	     
	 </div>
	   		
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
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.js" 
integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous">
</script>
</html>