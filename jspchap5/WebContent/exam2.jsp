<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%-- /WebContent/exam2.jsp --%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�հ� ���ϱ�</title>
</head>
<body>
<%
   int num = Integer.parseInt(request.getParameter("num"));
   String kbn = request.getParameter("kbn");
   int sum = 0;
   for(int i=1;i<=num;i++) {
	   switch (kbn) {
	   //��ü�հ�
	   case "0" : sum += i; break;
	   //¦���հ�
	   case "1" : if(i%2==0) sum += i;break;
  	   //Ȧ���հ�
	   case "2" : if(i%2==1) sum += i;break;
	   }
   }
%>
<%=num %> ������ 
<%= (kbn.equals("0"))?"��ü�հ�":kbn.equals("1")?"¦���հ�":"Ȧ���հ�" %>
:<%=sum %></body></html>