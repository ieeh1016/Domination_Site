<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>
<%@ include file="dbconn.jsp"%>
<%
	String donationId = request.getParameter("id");	

	String sql = "select * from donation";
	pstmt = conn.prepareStatement(sql);
	rs = pstmt.executeQuery();

	if (rs.next()) {
		sql = "delete from donation where d_donationId = ?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, donationId);
		pstmt.executeUpdate();
	} else
		out.println("일치하는 상품이 없습니다");
	
	if (rs != null)
		rs.close();
 	if (pstmt != null)
 		pstmt.close();
 	if (conn != null)
		conn.close();
	
 	response.sendRedirect("donations.jsp");
%>
