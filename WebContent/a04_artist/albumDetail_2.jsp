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
<link rel="stylesheet" href="table.css">
<style>
 body{
    margin:0px; padding:0px; }
  /*페이지*/
 .page{
    display: flex;  flex-direction: column; }
  /*전체 페이지*/
 .wrapper{
    width:1080px; display: flex; height:2500px; background-color:white;  margin:0 auto; }    
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
	margin-top : 170px; margin-left : 30px; }
.profile_box{
	width : 250px; height : 250px; border-radius: 5%;  overflow: hidden; border : 1px solid lightgray;
	position : absolute;  }
.profile_img{
	width: 100%;  height: 100%;  object-fit: cover;}
.playBtn_box{
	width : 58px; height : 58px;
	position : relative;  top : 190%; left : 30%; background-color : none;}
.playBtn{
	width: 0px; height: 0px; border-top: 13px solid transparent; border-bottom: 13px solid transparent; border-left: 21px solid #fff; border-right: none; 
	position : relative;  top : 25%; left : 50%;  }
.playBtn:hover{
	color : #FF8533;}	
.info_box{
	position : relative; left : 50%;	
	width : 300px; margin-bottom : 80px;}
.album_title{
	font-size : 25px; font-weight : bold; letter-spacing : -2px;  font-stretch : semi-condensed}
.album_title:hover{
	color : #FF8533;}
.artist_name{
	font-size : 17px; }	
.artist_name a{
	color: inherit;   text-decoration: none;}
.etc_info{
	margin-top : 20px;  }
.etc_info span{
	font-size : 15px; color : gray;}
.album_detail_btn button{
	background : #fff; border : none;}
#like_img1{
	width : 25px; height : 20px; position : relative; }
#like_img2{
	width : 25px; height : 20px; position : relative; }		
	
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

.album_info_intro{
	position : absolute; top : 500px;  margin-top : 50px; }
.album_info_intro dl{
	display: block; } 
.album_info_intro dt{
	display: block; float : left;   margin-left: 20px;  width : 80px; height : 40px;  font-weight : 700;}
.album_info_intro dd{
	margin-left : 15px; display: block; width : 700px; height : 40px; }  
.album_info{
	position : absolute; margin-left: 20px; top : 800px;  } 
.album_info_title{
	font-weight : 700; margin-bottom : 30px;}
.footer{
	margin:0 auto; padding:0 auto; position : relative;  height:310px; width:1080px; background:  #FFDAB9; 
    margin-top : 1200px; font-size:15px;}
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
			   <img class="profile_img" src="../z00_imgs/albumArt1.jpg">
			</div>
		   	<div class="playBtn_box">
		   		<div class="playBtn"></div>
		   	</div>
		   	<div class="info_box">
		   		<p class="album_title">월령: 下</p>
		   		<span class="artist_name"><a href="artistDetail_1.jsp">심규선 (Lucia) ></a></span>
		   		<p class="etc_info">		   			
		   			<span class="form">싱글</span>&nbsp;&nbsp;|&nbsp;
		   			<span class="genre">인디 락,인디 포크/컨트리</span>
		   		</p>
		   		<div class="album_detail_btn">
			   		 <button type="button">
	                     <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-music-note-list" viewBox="0 0 16 16">
	                       <path d="M12 13c0 1.105-1.12 2-2.5 2S7 14.105 7 13s1.12-2 2.5-2 2.5.895 2.5 2z"/>
	                       <path fill-rule="evenodd" d="M12 3v10h-1V3h1z"/>
	                       <path d="M11 2.82a1 1 0 0 1 .804-.98l3-.6A1 1 0 0 1 16 2.22V4l-5 1V2.82z"/>
	                       <path fill-rule="evenodd" d="M0 11.5a.5.5 0 0 1 .5-.5H4a.5.5 0 0 1 0 1H.5a.5.5 0 0 1-.5-.5zm0-4A.5.5 0 0 1 .5 7H8a.5.5 0 0 1 0 1H.5a.5.5 0 0 1-.5-.5zm0-4A.5.5 0 0 1 .5 3H8a.5.5 0 0 1 0 1H.5a.5.5 0 0 1-.5-.5z"/>
	                    </svg>
	                 </button>
	                  <button type="button">
	                     <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-folder-plus" viewBox="0 0 16 16">
	                       <path d="M.5 3l.04.87a1.99 1.99 0 0 0-.342 1.311l.637 7A2 2 0 0 0 2.826 14H9v-1H2.826a1 1 0 0 1-.995-.91l-.637-7A1 1 0 0 1 2.19 4h11.62a1 1 0 0 1 .996 1.09L14.54 8h1.005l.256-2.819A2 2 0 0 0 13.81 3H9.828a2 2 0 0 1-1.414-.586l-.828-.828A2 2 0 0 0 6.172 1H2.5a2 2 0 0 0-2 2zm5.672-1a1 1 0 0 1 .707.293L7.586 3H2.19c-.24 0-.47.042-.684.12L1.5 2.98a1 1 0 0 1 1-.98h3.672z"/>
	                       <path d="M13.5 10a.5.5 0 0 1 .5.5V12h1.5a.5.5 0 0 1 0 1H14v1.5a.5.5 0 0 1-1 0V13h-1.5a.5.5 0 0 1 0-1H13v-1.5a.5.5 0 0 1 .5-.5z"/>
	                     </svg>	                     
	                 </button>
	                 <img id="like_img1" src="../z00_imgs/like1.png">
					 <img id="like_img2" src="../z00_imgs/like2.png">		
                 </div>		   				   				   	
			</div>
		</div>
							
			
		<div class="btn_nav">
	       <ul class="btn_list">
	           <li id="li_select"><a href="albumDetail_2.jsp" id="select">상세정보</a></li>
	           <li><a href="albumDetail_1.jsp" id="unselect">수록곡</a></li>
	       </ul>
      	</div>

	     <div class="album_info_intro">
	     	<dl>
	     		<dt>앨범명</dt>
	     		<dd><span class="intro_album">월령: 下</span></dd>
	     		<dt>아티스트</dt>
	     		<dd><span class="intro_artist">심규선 (Lucia)</span></dd>
	     		<dt>발매사</dt>
	     		<dd><span class="intro_release">카카오엔터테인먼트</span></dd>
	     		<dt>기획사</dt>
	     		<dd><span class="intro_agency">헤아릴 규</span></dd>
	     	</dl>
	     </div>
	     <div class="album_info">
	     	<span class="album_info_title">앨범 소개</span>
	     	<div class="album_info_content">
	     		노래는 부드럽게 소리치며<br>스러져 가는 이를 깨운다.<br>그가 굳어갈 때 쉼 없이 이름을 부르고<br>그에게 절실히 필요했던 한 마디를 건넨다.<br>
				불현듯 그는 어둠 속에서 눈을 뜨고<br>	이내 이유 모를 눈물을 쏟는다.<br>사방으로 가로막힌 벽 틈에서<br>작은 균열을 발견했기 때문이다.<br>
				그렇게 노래는 그에게 머물고 그의 안에 번지고<br>	그의 삶 속에 혼재하며 마침내<br>그를 살린다.<br><br>				
				나는 기다리며, 지금 여기 서 있다.<br>무엇과 어디 사이의 모호한 경계 위에.<br>그러나 발을 깊게 디디고<br>나무처럼 스스로 서 있다.<br>
				나는 이름 없는 Awakener가 되고자 한다.<br><br>		
				나는 당신이 이 노래들에<br>아주 찬란하게 충돌해 주길 원한다.<br>그러면 시와 일체인 음악의 혼연이<br>부지불식간에 당신을<br>다른 시공간으로 데려갈 것이다.<br>
				현실의 우리는 갇혀 있어도<br>그 안에서는 무한히 자유로울 것이다.<br>어둠이 오면 죽음처럼 깊이 잠들고<br>다시 태어나는 것처럼 눈 뜨기를 간구한다.<br>
				마치 저 형형한 달의 주기처럼,<br>그렇게 진정한 의미로 깨어나<br>매일 다시 살아가 주기를 간청한다.<br><br>				
				그렇지 않고서야 어떻게 우리가<br>스스로 자신을 구원할 수 있겠는가.<br>어떻게 각자의 진창에서 걸어 나와<br>감히 서로의 편에 서 줄 수 있겠는가.<br><br>
				이러한 이유들로 나는 기꺼이 고독하며,<br>이제 어떤 노래가 내게 깃들어 올지 기다린다.<br>당신이 명멸하는 작은 별처럼 아직 거기에 홀로 서 있고,<br>
				대단할 것 없는 내 쓰고 부르는 일들에<br>그럴 가치가 있음을 알기 때문이다.<br><br>				
				10th Anniversary,<br>2020.12. 심규선.<br><br>
				야래향 夜來香<br><br>	Composed & Lyric by 심규선<br>Arranged by 양시온<br>Guitar 이현승<br>	Bass 양시온<br>Piano 최지훈<br>
				Drums 양시온<br>가야금 류혜민<br>	MIDI Programming 양시온<br>String 필스트링 Philstring<br>String Arranged by 양시온<br>Chorus 김효수, 심규선<br><br>
				섬광 閃光<br><br>	Composed & Lyric by 심규선<br>Arranged by 양시온<br>Guitar 이현승<br>Bass 양시온<br>Piano 최지훈<br>Drums 양시온<br>MIDI Programming 양시온<br>
				Chorus 심규선<br><br>			
				혜성충돌 彗星衝突<br><br>
				Composed & Lyric by 심규선<br>Arranged by 양시온<br>Guitar 이현승<br>	Bass 양시온<br>Piano 최지훈<br>Drums 양시온<br>
				Trumpet 김성민<br>Trombone 우성민<br>Saxophone 주현우<br>MIDI Programming 양시온<br>tring 필스트링 Philstring<br>String Arranged by 양시온<br>
				Chorus 김효수, 심규선<br><br>Recording studio Studio AMPIA<br>Recording engineer 최우재, 김태용<br><br>
				String recording studio CS MUSIC& <br>Recording engineer 김희재<br><br>Mixed by 조준성 @W SOUND<br>Protools editing 허은숙 @W SOUND<br>
				Assist engineer 최자연 @W SOUND<br><br>Mastered by 권남우 @821Sound<br><br>	Executive Producer 심규선<br>Management / A&R 이승남<br><br>
				Executive design director 이승남<br>Designer 옥기헌, 김지혜<br>Photographer 이건돈, 이명선 @studio amabile231<br>	MV 10bit<br>
				MV Artwork 이승남<br>Hair & Make-up artist 한지혜<br><br>instagram.com/luciatune<br>youtube.com/c/심규선LUCIAofficial<br>
				blog.naver.com/luciatune<br>twitter.com/ROXIEEEEEEEE<br><br>www.simgyuseon.com<br>
	     	</div>
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