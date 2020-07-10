<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%-- /WebContent/exam2.jsp --%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>합계 구하기</title>
</head>
<body>
<%
   int num = Integer.parseInt(request.getParameter("num"));
   String kbn = request.getParameter("kbn");
   int sum = 0;
   for(int i=1;i<=num;i++) {
	   switch (kbn) {
	   //전체합계
	   case "0" : sum += i; break;
	   //짝수합계
	   case "1" : if(i%2==0) sum += i;break;
  	   //홀수합계
	   case "2" : if(i%2==1) sum += i;break;
	   }
   }
%>
<%=num %> 까지의 
<%= (kbn.equals("0"))?"전체합계":kbn.equals("1")?"짝수합계":"홀수합계" %>
:<%=sum %></body></html>