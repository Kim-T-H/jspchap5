<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%-- /WebContent/forwardex1.jsp --%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>forward �ϴ� ������</title>
</head>
<body>
<% request.setCharacterEncoding("euc-kr"); %>
<h1>forward �ϴ� ������ �Դϴ�. �̳����� ȭ�鿡 ��µ��� �ʽ��ϴ�.</h1>
<% pageContext.forward("forwardex2.jsp"); %>
</body>
</html>