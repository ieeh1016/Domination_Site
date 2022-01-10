<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>
<html>
<head>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
	<title>Main</title>
	<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
	<link rel="stylesheet" href="./resources/css/pogo-slider.min.css">
	<link rel="stylesheet" href="./resources/css/style.css">
	<link rel="stylesheet" href="./resources/css/responsive.css">
	<link rel="stylesheet" href="./resources/css/custom.css">
	<link rel="stylesheet" href="./resources/css/timeline.css">
	<link rel="stylesheet" href="./resources/css/responsiveslides.css">
	<link rel="stylesheet" href="./resources/css/magnific-popup.css">
	<link rel="stylesheet" href="./resources/css/font-awesome.min.css">
	<link rel="stylesheet" href="./resources/css/flaticon.css">
	<link rel="stylesheet" href="./resources/css/animate.css">
	<link rel="stylesheet" href="./resources/css/flashy.min.css">
	<link rel="shortcut icon" href="#" type="image/x-icon" />
	<link rel="apple-touch-icon" href="#" />
<title>후원프로그램 편집</title>
<script type="text/javascript">
	function deleteConfirm(id) {
		if (confirm("해당 상품을 삭제합니다!!") == true)
			location.href = "./deleteDonation.jsp?id=" + id;
		else
			return;
	}
</script>
</head>
<%
	String edit = request.getParameter("edit");
%>
</head>
<body>
	<jsp:include page="header.jsp" />
	<%@ include file = "menufooter.jsp" %>
	<%@ include file="dbconn.jsp"%>
         <div class="section about_section layout_padding dash_bg">
            <div class="container">
               <div class="row">
                  <div class="col-md-12">
                     <div class="full">
                        <div class="heading_main text_align_center">
                           <h2>등록된 후원프로그램 수정하기</h2>
                        </div>
                     </div>
                  </div>
               </div>

			<div class="row">
			
			<%
				String sql = "select * from donation";
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				while (rs.next()) {
			%>
 			<div class="col-xs-6 col-sm-6 col-md-6 col-lg-3">
                     <div class="full feature_box" style ="width:100%; height:500px; ">
                         <div class="full icon">
                            <img class="default-block" src="${pageContext.request.contextPath}/resources/images/<%=rs.getString("d_fileName")%>" style ="width: 100%; height:175px;">
                            <img class="default-none" src="${pageContext.request.contextPath}/resources/images/<%=rs.getString("d_fileName")%>" style ="width: 100%; height:175px;" >
                         </div>
                         <div class="full">
                            <h4><%=rs.getString("d_donationName")%></h4>
                         </div>
                         <div class="full">
                           <p><a href="./donation.jsp?id=<%=rs.getString("d_donationId")%>"><%=rs.getString("d_donationDescription")%></a>
                         </div>

                     </div>
                     					<%
						if (edit.equals("update")) {
					%>
					<a href="./updateDonation.jsp?id=<%=rs.getString("d_donationId")%>" role="button">수정</a>
					<%
						} else if (edit.equals("delete")) {
					%>
					<a href="#" onclick="deleteConfirm('<%=rs.getString("d_donationId")%>')" role="button">삭제</a>
					<%
						}
					%>
                 </div>

                            <%
				}
						if (rs != null)
							rs.close();
			 			if (pstmt != null)
			 				pstmt.close();
			 			if (conn != null)
							conn.close();
						%>
                </div>
            </div>
         </div>
</body>
</html>

