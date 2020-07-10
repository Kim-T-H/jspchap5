<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%-- /WebContent/requestex1.jsp
  String request.getParameter(파라미터이름) : 파라미터이름으로 값을 한개 리턴 
  String[] request.getParameterValues(파라미터이름) 
                                          : 파라미터이름으로 값을 여러개 리턴
  Enumeration request.getParameterNames(): 요청객체내부의 파라미터들의 이름들만 리턴
  //인코딩 방식 설정
  request.setCharacterEncoding(인코딩명) : 파라미터값 조회전에 처리해야 함.
                                         POST 방식에서 처리됨.
  GET 방식인 경우 server.xml 에서 8080 포트 란에 URIEncoding="인코딩명" 추가하고
  server restart 필요.                                         
--%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>전송된 파라미터 정보</title>
</head>
<body>
<%
//파라미터에 사용된 한글 인코딩 방식 설정. 한글 파라미터 처리.
   request.setCharacterEncoding("euc-kr");
   String name =request.getParameter("name");
   String age =request.getParameter("age");
   String gender =request.getParameter("gender");
   String hobby =request.getParameter("hobby");
   String year =request.getParameter("year");
%>
이름 : <%=name %><br>
나이 : <%=age %><br>
성별 : <%=gender.equals("1")?"남":"여" %><br>
취미 : <%=hobby %><br>
출생년도 : <%=year%><br>
<h3>취미 정보 모두 조회하기</h3>
취미 :
<%
   String[] hobbies = request.getParameterValues("hobby");
   for(String h : hobbies) {%>
   <%=h %>&nbsp;&nbsp;
<% } %>
<h3>모든 파라미터 정보 조회하기</h3>
<table><tr><th>파라미터이름</th><th>파라미터값</th></tr>
<%
   //Iterator의 구버전
   Enumeration e = request.getParameterNames();
   while(e.hasMoreElements()) {
	   String pname = (String)e.nextElement();
	   String[] pvalue = request.getParameterValues(pname);
%>
<tr><td><%=pname %></td>
    <td><% for(String v : pvalue) {%>
       <%=v %>&nbsp;&nbsp;
    <%} %>
    </td></tr><% } %></table>
</body>
</html>