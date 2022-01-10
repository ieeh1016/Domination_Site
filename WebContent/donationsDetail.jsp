<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="dto.Donation"%>
<%@ page import="dao.DonationRepository"%>
<%@ page errorPage="exceptionNoProductId.jsp" %>
<html>
<head>
	<title>후원프로그램 세부사항</title>
	
	<script type="text/javascript">
	function addToCart() {
		if (confirm("이 게시물을 관심항목에 넣을까요??")) {
			document.addForm.submit();
		} else {		
			document.addForm.reset();
		}
	}
</script>

	<script type="text/javascript">
	function insertAddress() {
		if (confirm("후원하였습니다. 감사합니다. 후원하신분께는 후원증이 발급됩니다. 배송지를 입력해주세요")) {
			document.addForm.submit();
		} else {		
			document.addForm.reset();
		}
	}
</script>
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
</head>
<body>
<%@include file="header.jsp"  %>
<%@ include file = "menufooter.jsp" %>
<%@ include file="dbconn.jsp"%>
         <div class="section about_section layout_padding padding_top_0">
            <div class="container">
               <div class="row">
                  <div class="col-md-12">
                     <div class="full">
                        <div class="heading_main text_align_center">
                           <h2 class="margin-bottom_30"><strong class="small theme_color"><br><br><br><br><br>나눔이란?</strong><br>비용이 아니라 모두가 <br>행복해지기 위한 가장 확실한 '투자'입니다 </h2>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="row">
		<%
			String sql = "select * from donation";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()){
		%>
		
	 <!-- section -->

                <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
                     <div class="full">
                        <div class="heading_small">
                          <h4><%=rs.getString("d_donationName")%></h4>
                        </div>
                        <p>후원단체 : <%=rs.getString("d_donationPlace")%> <br> 후원기간 : <%=rs.getString("d_donationPeriod")%> <br> 후원금액 : <%=rs.getString("d_donationPrice")%> <br> 후원 목표금액 : <%=rs.getString("d_goalPrice")%><br><br> <%=rs.getString("d_donationDescription")%> </p>
                      </div>
                      <div class="full margin-top_30">
                      <a class="readmore_bt" href="./shippingInfo.jsp?id=<%=rs.getString("d_donationId")%>" onclick="insertAddress()">후원하기</a>
                      </div>
                  </div>
                  <div class="col-xs-6 col-sm-6 col-md-6 col-lg-5">
                     <div class="full text_align_center">
                        <br><br>

                        <img src ="${pageContext.request.contextPath}/resources/images/<%=rs.getString("d_filename")%>" style ="width: 100%; height:500px;" >
                        
                        <br><br><br>
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
            </div>
         	</div>
         	

         
</body>
</html>