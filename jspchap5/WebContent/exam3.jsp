<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
   double num1 = Double.parseDouble(request.getParameter("num1"));
   double num2 = Double.parseDouble(request.getParameter("num2"));
   String kbn = request.getParameter("kbn");
  String sum = null;
  switch(kbn) {
  case "+" : sum = String.format("%.2f",num1 + num2);break;
  case "-" : sum = String.format("%.2f",num1 - num2); break;
  case "*" : sum = String.format("%.2f",num1 * num2); break;
  case "/" : sum = String.format("%.2f",num1/num2);
  }
%>
 <%=num1+kbn+num2+"="+sum%>
 </body>
</html>