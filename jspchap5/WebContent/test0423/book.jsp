<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%-- /WebContent/test0423/book.jsp --%>      
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
    request.setCharacterEncoding("euc-kr");
    SimpleDateFormat date = 
                   new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    String regdate = date.format(new Date());
%>
<table border="1">
<caption>방명록</caption>
<tr><td>방문자</td><td><%=request.getParameter("writer") %></td></tr>
<tr><td>제목</td><td><%=request.getParameter("title") %></td></tr>
<tr><td>내용</td><td><%=request.getParameter("content") %></td></tr>
<tr><td>등록일</td><td><%=regdate %></td></tr>
</table>
</body>
</html>