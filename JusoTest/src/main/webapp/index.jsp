<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script language="javascript">
	function goPopup(){
		var pop = window.open("jusoPopup.jsp","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
	}
	
	
	function jusoCallBack(roadFullAddr){
			document.frm.address.value = roadFullAddr;
	}
</script>
</head>
<body>
	<form method="post" action="join" name="frm">
	아이디:<input type="text" name="id" required="required"><br>
	비밀번호:<input type="password" name="password" required="required"><br>
	주소:<input type="text" id="address" name="address" size="70"
	required="required" readonly><br>
		<input type="button" value="주소검색" onclick="goPopup();"><br>
		<input type="submit" value="전송">
	</form>
</body>
</html>