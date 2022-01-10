<%@ page contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import="com.oreilly.servlet.multipart.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ include file="dbconn.jsp" %>


<%
	request.setCharacterEncoding("UTF-8");

	String filename = "";
	String realFolder = "C:\\Users\\YW\\eclipse-workspace\\MyProject\\WebContent\\resources\\images"; //웹 어플리케이션상의 절대 경로
	String encType = "utf-8"; //인코딩 타입
	int maxSize = 5 * 1024 * 1024; //최대 업로드될 파일의 크기5Mb

	MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());

	String donationId = multi.getParameter("donationId");
	String donationName = multi.getParameter("donationName");
	String donationPrice = multi.getParameter("donationPrice");
	String goalPrice = multi.getParameter("goalPrice");
	String donationPlace = multi.getParameter("donationPlace");
	String donationPeriod = multi.getParameter("donationPeriod");
	String donationDescription = multi.getParameter("donationDescription");

	Integer price;

	if (donationPrice.isEmpty())
		price = 0;
	else
		price = Integer.valueOf(donationPrice);


	
	Enumeration files = multi.getFileNames();
	String fname = (String) files.nextElement();
	String fileName = multi.getFilesystemName(fname);
	
	PreparedStatement psmt = null;
	
	String sql = "insert into donation values(?,?,?,?,?,?,?,?)";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, donationId);
	pstmt.setString(2, donationName);
	pstmt.setInt(3, price);
	pstmt.setString(4, goalPrice);
	pstmt.setString(5, donationPlace);
	pstmt.setString(6, donationPeriod);
	pstmt.setString(7, donationDescription);
	pstmt.setString(8, fileName);
	pstmt.executeUpdate();
	
	
	if (pstmt != null)
 		pstmt.close();
 	if (conn != null)
		conn.close();

	response.sendRedirect("donations.jsp");
%>
