<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%-- /WebContent/examForm1.jsp : ȭ�鿡�� ���ڸ� �Է¹޾� ���ڱ��� �� ���ϱ�--%>    
<!DOCTYPE html><html><head><meta charset="EUC-KR">
<title>�Էµ� ���ڱ����� �� ���ϱ�</title>
<script type="text/javascript">
   function inputcheck(f) {
  //���ڰ��� �Է¾ȵǸ� ���ڸ� �Է��ϼ��� �޼��� ����ϰ�, �Է� focus�� �Է�ĭ���� �����ϱ�
       if(f.num.value == '') {
		   alert("���ڸ� �Է��ϼ���");
		   f.num.focus();
		   return false;
       }
	   if(isNaN(f.num.value)) {
		   alert("���ڸ� �Է��ϼ���");
		   f.num.focus();
		   f.num.value ="";
		   return false;
	   }
	   return true;
	}
</script></head><body>
<form action="exam1.jsp"  method="post" 
      onsubmit="return inputcheck(this)">
<input type="text" name="num">������ �� ���ϱ�
<input type="submit" value="�հ�">
</form></body></html>