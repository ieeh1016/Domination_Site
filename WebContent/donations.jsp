<%@ page contentType="text/html; charset=utf-8"%>
<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
	<title>후원목록</title>
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
	
	
	<link rel="shortcut icon" href="#" type="image/x-icon" />
	<link rel="apple-touch-icon" href="#" />
</head>
<body>
<%@include file="header.jsp"  %>
<%@ include file = "menufooter.jsp" %>
 <%@ include file="dbconn.jsp"%>
         <div class="section about_section layout_padding dash_bg">
            <div class="container">
               <div class="row">
                  <div class="col-md-12">
                     <div class="full">
                        <div class="heading_main text_align_center">
                           <h2>아이들을 위한 손길</h2>
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
         			<table width="100%">
				<tr>
            		<td align="right"> <a href="./donationsDetail.jsp" align="right" >프로그램 자세히 보기</a>
           		 </tr>
            </div>

			
			</table>

         </div>

		
		
</body>
</html>