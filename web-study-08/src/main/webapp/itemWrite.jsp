<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<%
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String uid = "scott";
	String pass = "tiger";
	String sql = "select * from item";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
	<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<title>items</title>
</head>
<body>
	<h3 style="text-align: center">입력 완료된 정보</h3>
	<table class="table" border="1" style="width: 800px; margin:0 auto;">
			<tr>
				<th>상품명</th>
				<th>가격</th>
				<th>설명</th>
			</tr>
		<%
		try {
			//1. 드라이브 로드
			Class.forName("oracle.jdbc.driver.OracleDriver");
			//2. 연결
			conn = DriverManager.getConnection(url, uid, pass);
			//3. sql문장 작성
			pstmt = conn.prepareStatement(sql);
			//4. sql문 실행
			rs = pstmt.executeQuery(sql);
			//5. 실행된 결과뭉르 rs를 통해서 출력
			while (rs.next()) {
		%>
			<tr class="table-primary">
				<td><%=rs.getString(1)%></td>
				<td><%=rs.getInt(2)%></td>
				<td><%=rs.getString(3)%></td>
			</tr>
		<%
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
			if (rs != null)
				rs.close();
			if (pstmt != null)
				pstmt.close();
			if (conn != null)
				conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		%>
	</table>
</body>
</html>