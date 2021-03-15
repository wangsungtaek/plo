<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<% request.setCharacterEncoding("UTF-8");
   String path = request.getContextPath();
%>
<jsp:useBean id="service" class="plo.web.admin.service.MusicManagerService"/>
<c:set var="music" value="${service.musicDetail(param.no)}"/>
{
	"m_no":"${music.m_no}",
	"m_name":"${fn:trim(music.m_name)}",
	"m_playnum":"${fn:trim(music.m_playnum)}",
	"m_path":"${music.m_path}",
	"m_lyrics":"${fn:trim(music.m_lyrics)}",
	"alb_no":"${fn:trim(music.alb_no)}"
}