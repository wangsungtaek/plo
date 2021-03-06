<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<c:set var="path" value="${pageContext.request.contextPath}"/> 
<fmt:requestEncoding value="UTF-8" /> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${path}/a00_com/jquery-ui.css" >
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
<link rel="stylesheet" href="${path}/z01_css\chart.css">
<script src="${path}/a00_com/jquery.min.js"></script>
<script src="${path}/a00_com/popper.min.js"></script>
<script src="${path}/a00_com/jquery-ui.js"></script>
<script type="text/javascript">
<%--
 
 
--%>
//
   $(document).ready(function(){
	   var cnt = 1;
      $("#mylist-modal").on("click",function(){
    	 $(".modal").css("display", "flex");
      });
      $("#mylist-cancel").on("click",function(){
    	  $(".modal").css("display", "none");
      })
      $("#mylist-more").on("click",function(){
     	 if(cnt == 1){
     		 $(".more-content").css("display", "block");
     		 cnt++;
     	 }else{
     		$(".more-content").css("display", "none");
     		cnt = 1;
     	 }
      });
   });
</script>
</head>
<body>
	  <div class="container-fluid" style="background: white;">
        <div class="row" style="height: 100px;">header</div>
        <div class="row" >
            <div class="col-1"></div>
            <!-- 둘러보기 메인 -->
            <div class="col" id="tour">
                <!--장르 아이콘-->
                <div class="row">
                    <div class="col" id="main-header">
                        <input type="button" class="genre-icons" value="PLO차트"></input>
                        <input type="button" class="genre-icons" value="지금 급상승 중"></input>
                        <input type="button" class="genre-icons" value="팝"></input>
                        <input type="button" class="genre-icons" value="일렉"></input>
                        <input type="button" class="genre-icons" value="댄스"></input>
                        <input type="button" class="genre-icons" value="힙합"></input>
                        <input type="button" class="genre-icons" value="트로트"></input>
                        <input type="button" class="genre-icons" value="R&B"></input>
                        <input type="button" class="genre-icons" value="OST"></input>
                        <input type="button" class="genre-icons" value="인디"></input>
                        <input type="button" class="genre-icons" value="클래식"></input>
                        <input type="button" class="genre-icons" value="뉴에이지"></input>
                        <input type="button" class="genre-icons" value="어쿠스틱"></input>
                    </div>
                </div>
                <!--메인 차트-->
                <div class="row">
                    <div class="col" style="width:100px">
                        <!--차트 최상단-->
                        <div class="chart-title" style="padding:0px 15px">
                            <span style="font-size: 18pt; font-weight: bold;">PLO차트</span>
                            <span style="font-size: 10pt; padding-left: 5px;">업데이트 시간</span>
                            <input type="button" value="♪전체듣기" id="all_listen"/>
                        </div>
                        <div class="chart-table">
                            <table style="width: 100%;">
                                <thead>
                                    <tr>
                                        <td width="2%">
                                            <input type="checkbox"/>
                                        </td>
                                        <td width="7%" class="tableheader">순위</td>
                                        <td width="51%" class="tableheader">곡/앨범</td>
                                        <td width="16%" class="tableheader">아티스트</td>
                                        <td width="6%">듣기</td>
                                        <td width="6%">재생목록</td>
                                        <td width="6%">내 리스트</td>
                                        <td width="6%">더보기</td>
                                    </tr>
                                </thead>
                                <tbody>
                                    <div class="songinfo">
                                        <tr>
                                            <td width="2%">
                                                <input type="checkbox"/>
                                            </td>
                                            <td width="7%" class="tableheaderchild">1</td>
                                            <td width="51%" class="tableheaderchild">
                                                <figure class="tableAlbum" style="background-image: url(ilbuni.png);"></figure>
                                                <div class="title_album">
                                                    <span>Celebrity</span>
                                                    <span>Celebrity</span>
                                                </div>
                                            </td>
                                            <td width="16%" class="tableheaderchild">아이유(IU)</td>
                                            <td width="6%">
                                                <button type="button">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-play-fill" viewBox="0 0 16 16">
                                                        <path d="M11.596 8.697l-6.363 3.692c-.54.313-1.233-.066-1.233-.697V4.308c0-.63.692-1.01 1.233-.696l6.363 3.692a.802.802 0 0 1 0 1.393z"/>
                                                    </svg>
                                                </button>
                                            </td>
                                            <td width="6%">
                                                <button type="button">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-music-note-list" viewBox="0 0 16 16">
                                                        <path d="M12 13c0 1.105-1.12 2-2.5 2S7 14.105 7 13s1.12-2 2.5-2 2.5.895 2.5 2z"/>
                                                        <path fill-rule="evenodd" d="M12 3v10h-1V3h1z"/>
                                                        <path d="M11 2.82a1 1 0 0 1 .804-.98l3-.6A1 1 0 0 1 16 2.22V4l-5 1V2.82z"/>
                                                        <path fill-rule="evenodd" d="M0 11.5a.5.5 0 0 1 .5-.5H4a.5.5 0 0 1 0 1H.5a.5.5 0 0 1-.5-.5zm0-4A.5.5 0 0 1 .5 7H8a.5.5 0 0 1 0 1H.5a.5.5 0 0 1-.5-.5zm0-4A.5.5 0 0 1 .5 3H8a.5.5 0 0 1 0 1H.5a.5.5 0 0 1-.5-.5z"/>
                                                    </svg>
                                                </button>
                                            </td>
                                            <td width="6%">
                                                <button type="button" id="mylist-modal">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-folder-plus" viewBox="0 0 16 16">
                                                        <path d="M.5 3l.04.87a1.99 1.99 0 0 0-.342 1.311l.637 7A2 2 0 0 0 2.826 14H9v-1H2.826a1 1 0 0 1-.995-.91l-.637-7A1 1 0 0 1 2.19 4h11.62a1 1 0 0 1 .996 1.09L14.54 8h1.005l.256-2.819A2 2 0 0 0 13.81 3H9.828a2 2 0 0 1-1.414-.586l-.828-.828A2 2 0 0 0 6.172 1H2.5a2 2 0 0 0-2 2zm5.672-1a1 1 0 0 1 .707.293L7.586 3H2.19c-.24 0-.47.042-.684.12L1.5 2.98a1 1 0 0 1 1-.98h3.672z"/>
                                                        <path d="M13.5 10a.5.5 0 0 1 .5.5V12h1.5a.5.5 0 0 1 0 1H14v1.5a.5.5 0 0 1-1 0V13h-1.5a.5.5 0 0 1 0-1H13v-1.5a.5.5 0 0 1 .5-.5z"/>
                                                    </svg>
                                                </button>
                                                <div class="more-content">
                                                	<a href="#">곡정보</a>
                                                	<a href="#">앨범정보</a>
                                                	<a href="#">아티스트정보</a>
                                                	<a href="#">좋아요</a>
                                                </div>
                                            </td>
                                            <td width="6%">
                                                <button type="button" id="mylist-more">
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
                </div>
                <!--장르들-->
                <div class="row">
                    <div class="col">
                        <!--장르 header-->
                        <h4 style="font-weight: bold; margin: 0px 15px 0px 15px;">장르</h4>
                        <!--장르 목록-->
                        <div class="genre-list">
                            <div class="genre-list-items" style="background-image: url(https://cdn.music-flo.com/poc/p/image/display/genre_rc/20200911/cf603facfcbe45b5acf3421b0843f49a.jpg);">
                                <span>팝</span>
                            </div>
                            <div class="genre-list-items" style="background-image: url(https://cdn.music-flo.com/poc/p/image/display/genre_rc/20200911/5ecae7e786734835a7e396cb657fb597.jpg);">
                                <span>일렉</span>
                            </div>
                            <div class="genre-list-items" style="background-image: url(https://cdn.music-flo.com/poc/p/image/display/genre_rc/20200623/b2c7e8931da2470ab19f48ba82710024.jpg);">
                                <span>댄스</span>
                            </div>
                            <div class="genre-list-items" style="background-image: url(https://cdn.music-flo.com/poc/p/image/display/genre_rc/20200911/8eccffe057a1428598f2611592b048c4.jpg);">
                                <span>힙합</span>
                            </div>
                            <div class="genre-list-items" style="background-image: url(https://cdn.music-flo.com/display/genre_rc/20210115/PR/bdd8baec04cc4807a839d894a12cc121.jpg);">
                                <span>트로트</span>
                            </div>
                            <div class="genre-list-items" style="background-image: url(https://cdn.music-flo.com/poc/p/image/display/genre_rc/20200911/0358f7914fd14a15ac7b82dcf79bf998.jpg);">
                                <span>R&B</span>
                            </div>
                            <div class="genre-list-items" style="background-image: url(https://cdn.music-flo.com/poc/p/image/display/genre_rc/20200911/98254cf67f3c4cb79baf686749c8b30b.jpg);">
                                <span>OST</span>
                            </div>
                            <div class="genre-list-items" style="background-image: url(https://cdn.music-flo.com/poc/p/image/display/genre_rc/20200911/1f4133f1ca7a41aa86513819d0d50348.jpg);">
                                <span>인디</span>
                            </div>
                            <div class="genre-list-items" style="background-image: url(https://cdn.music-flo.com/poc/p/image/display/genre_rc/20200911/7645502e6c684ac198fb67b8d2e2e5ea.jpg);">
                                <span>클래식</span>
                            </div>
                            <div class="genre-list-items" style="background-image: url(https://cdn.music-flo.com/poc/p/image/display/genre_rc/20200623/3b775e29f3f3460abdd4617b5f33f41a.jpg);">
                                <span>뉴에이지</span>
                            </div>
                            <div class="genre-list-items" style="background-image: url(https://cdn.music-flo.com/poc/p/image/display/genre_rc/20200911/02fdfe32c89842e284b6b3c0f017d487.jpg);">
                                <span>어쿠스틱</span>
                            </div>
                        </div>
                    </div>
                </div>
                <!--기업소개-->
                <div class="row">
                    <div class="col"></div>
                </div>
            </div>
            <div class="col-1"></div>
        </div>
        <div class="row">footer</div>
        <div class="modal">
            <div class="dialog">
                <div clss="dialog-text">
                    <span>로그인이 필요한 서비스 입니다. 로그인 하시겠습니까??</span>
                </div>
                <div>
                    <button type="button" id="mylist-cancel">취소</button>
                    <button type="button">로그인</button>
                </div>
            </div>
        </div>
    </div>
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
</html>