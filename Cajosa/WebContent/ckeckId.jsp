<!-- JSP 새 파일 생성시 기본 생성, DB 사용시 PreparedStatement사용 선언 -->
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"
    import="java.sql.Connection,java.sql.PreparedStatement"%>
<!-- DB 사용을 위한 클래스 로드 -->
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.SQLException" %>
<%@page import="java.sql.ResultSet" %>

<!-- JSP의 선언문: 드라이버 로딩 콜백메소드인 init를 1회 실행, setConnection 메소드 등록 -->
<%!
	Connection conn; //DB 연결 변수
	PreparedStatement pstmt; //쿼리 핸들 변수
	ResultSet rs;  //결과를 받아올 변수
	
	public void init(){ //Call Back 메소드, 드라이버 로딩
		try{Class.forName("com.mysql.jdbc.Driver");}
		catch(ClassNotFoundException e) {e.printStackTrace();}
	}
	public void setConnection(){ //DB 입출력전 연결 메소드
		try{conn=DriverManager.getConnection("jdbc:mysql://localhost:3308/webdb", "root", "jimin123!!");}
		catch(SQLException e) {e.printStackTrace();}
	}
	%>
	<%
		String id=request.getParameter("id");
		
		try{
			this.setConnection();
			String sql="select*from member where id=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1,id);
			rs=pstmt.executeQuery();
			}
		catch(SQLException e){e.printStackTrace();}
	%>
	
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
		<title>ID 중복확인</title>
		<script>
			function checkIdClose(id) {
				opnener.writeForm.id.value=id;
				window.close();
			}
		</script>
	</head>
	<body>
		<form method="post" action="checkId.jsp">
		<%
			try{
				if(rs.next() || (id==null)){
		%>		
		현재 <%=id %>는 사용 중입니다.
		아이디: <input type=text name=id>
		<input type=submit value="중복체크">
		<%
				}
				else {
		%>
		현재 <%=id %>는 사용 가능합니다.
		<a href="checkId.jsp">다른 아이디 고르기</a><br>
		<input type=button value="현재 아이디 선택" onClick="javaScript:checkIdClose('<%=id%>')">
		<%
				}
			}
		catch(SQLException e){e.printStackTrace();}
		finally{
			try{
				if(pstmt!=null)
					pstmt.close();
				if(conn!=null)
					pstmt.close();
			}
			catch(SQLException e2){e2.printStackTrace();}
		}
		%>
		</form>
	</body>
</html>