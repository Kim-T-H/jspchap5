<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%-- /WebContent/examForm3.jsp : 
        ���ڸ� �Է¹޵��� ����. exam3.jsp���� ����� ����ϱ� 
        ������ ����� �Ҽ��� ���� 2�ڸ������� ����ϱ�
--%>    
<!DOCTYPE html><html><head><meta charset="EUC-KR">
<title>������ ���� </title>
<script type="text/javascript">
   function inputcheck(f,kbn) {
	   if(f.num1.value == '') {
		   alert("ù��° ���ڸ� �Է��ϼ���");
		   f.num1.focus();
		   return false;
	   }
	   if(f.num2.value == '') {
		   alert("�ι�° ���ڸ� �Է��ϼ���");
		   f.num1.focus();
		   return false;
	   }
	   if(isNaN(f.num1.value)) {
		   alert("ù��° ĭ�� ���ڸ�  �Է��ϼ���");
		   f.num1.focus();
		   f.num1.value ="";
		   return false;
	   }
	   if(isNaN(f.num2.value)) {
		   alert("�ι�° ĭ�� ���ڸ�  �Է��ϼ���");
		   f.num2.focus();
		   f.num2.value ="";
		   return false;
	   }
	   f.kbn.value = kbn;
	   f.submit();
   }
</script>
</head><body>
<form action="exam3.jsp" method="post">
<input type="hidden" name="kbn" value="0">
  ����1 : <input type="text" name="num1"><br>
  ����2 : <input type="text" name="num2"><br>
<input type="button" value="+" onclick="inputcheck(this.form,this.value)">
<input type="button" value="-" onclick="inputcheck(this.form,this.value)">
<input type="button" value="*" onclick="inputcheck(this.form,this.value)">
<input type="button" value="/" onclick="inputcheck(this.form,this.value)"> 
</form></body></html>