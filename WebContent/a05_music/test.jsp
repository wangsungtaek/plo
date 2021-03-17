<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<c:set var="path" value="${pageContext.request.contextPath}"/> 
<fmt:requestEncoding value="UTF-8"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${path}/a00_com/bootstrap.min.css" >
<link rel="stylesheet" href="${path}/a00_com/jquery-ui.css" >
<script src="${path}/a00_com/jquery.min.js"></script>
<script src="${path}/a00_com/popper.min.js"></script>
<script src="${path}/a00_com/bootstrap.min.js"></script>
<script src="${path}/a00_com/jquery-ui.js"></script>

<script type="text/javascript">
<%--
 
 
--%>
//
	$(document).ready(function(){
		$('.genre-icons').on('click', function(){
			alert("asdf");
			$('form').submit();
		})
	});
</script>
</head>
<body>
	<div class="jumbotron text-center">
		<h2>부트스트랩 form</h2>
	</div>
	<form method="get">
	<div class="row">
                    <div class="col" id="main-header">
                        <input type="button" class="genre-icons" value="PLO차트" name="chartId"></input>
                        <input type="submit" class="genre-icons" value="지금 급상승 중"name="chartId"></input>
                        <input type="submit" class="genre-icons" value="팝"name="chartId"></input>
                        <input type="submit" class="genre-icons" value="일렉"></input>
                        <input type="submit" class="genre-icons" value="댄스"></input>
                        <input type="submit" class="genre-icons" value="힙합"></input>
                        <input type="submit" class="genre-icons" value="트로트"></input>
                        <input type="submit" class="genre-icons" value="R&B"></input>
                        <input type="submit" class="genre-icons" value="OST"></input>
                        <input type="submit" class="genre-icons" value="인디"></input>
                        <input type="submit" class="genre-icons" value="클래식"></input>
                        <input type="submit" class="genre-icons" value="뉴에이지"></input>
                        <input type="submit" class="genre-icons" value="어쿠스틱"></input>
                    </div>
                </div>
                </form>
</body>
</html>