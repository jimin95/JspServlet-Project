<!-- JSP �� ���� ������ �⺻ ����, DB ���� PreparedStatement��� ���� -->
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"
    import="java.sql.Connection,java.sql.PreparedStatement"%>
<!-- DB ����� ���� Ŭ���� �ε� -->
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.SQLException" %>
<%@page import="java.sql.ResultSet" %>

<!-- JSP�� ����: ����̹� �ε� �ݹ�޼ҵ��� init�� 1ȸ ����, setConnection �޼ҵ� ��� -->
<%!
	Connection conn; //DB ���� ����
	PreparedStatement pstmt; //���� �ڵ� ����
	ResultSet rs;  //����� �޾ƿ� ����
	
	public void init(){ //Call Back �޼ҵ�, ����̹� �ε�
		try{Class.forName("com.mysql.jdbc.Driver");}
		catch(ClassNotFoundException e) {e.printStackTrace();}
	}
	public void setConnection(){ //DB ������� ���� �޼ҵ�
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
		<title>ID �ߺ�Ȯ��</title>
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
		���� <%=id %>�� ��� ���Դϴ�.
		���̵�: <input type=text name=id>
		<input type=submit value="�ߺ�üũ">
		<%
				}
				else {
		%>
		���� <%=id %>�� ��� �����մϴ�.
		<a href="checkId.jsp">�ٸ� ���̵� ����</a><br>
		<input type=button value="���� ���̵� ����" onClick="javaScript:checkIdClose('<%=id%>')">
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