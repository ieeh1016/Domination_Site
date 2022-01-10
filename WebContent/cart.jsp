<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Donation"%>
<%@ page import="dao.DonationRepository"%>
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
<%
	String cartId = session.getId();
%>
<title>후원프로그램 관심목록</title>
</head>
<body>
	<jsp:include page="header.jsp" />
	<%@ include file = "menufooter.jsp" %>
         <div class="section about_section layout_padding dash_bg">
            <div class="container">
               <div class="row">
                  <div class="col-md-12">
                     <div class="full">
                        <div class="heading_main text_align_center">
                           <h2>관심등록한 후원프로그램 목록</h2>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="row">
			<table width="100%">
					<tr>
						<td align="left"><a href="./Main.jsp" class="btn btn-secondary">돌아가기</a></td>
					</tr>
		</table>
		
				<%				
					ArrayList<Donation> cartList = (ArrayList<Donation>) session.getAttribute("cartlist");
					if (cartList == null)
						cartList = new ArrayList<Donation>();

					for (int i = 0; i < cartList.size(); i++) { // 상품리스트 하나씩 출력하기
						Donation donation = cartList.get(i);
					
				%>
                <div class="col-xs-6 col-sm-6 col-md-6 col-lg-3">
                     <div class="full feature_box" style ="width:100%; height:500px; ">
                         <div class="full icon">
                            <img class="default-block" src="${pageContext.request.contextPath}/resources/images/<%=donation.getFilename()%>" style ="width: 100%; height:175px;">
                            <img class="default-none" src="${pageContext.request.contextPath}/resources/images/<%=donation.getFilename()%>" style ="width: 100%; height:175px;" >
                         </div>
                         <div class="full">
                            <h4><%=donation.getDonationName()%></h4>
                         </div>
                         <div class="full">
                           <p><a href="./donationsDetail.jsp"><%=donation.getDonationDescription()%></a>
                         </div>
                         
                         
                        
                     </div>
                     <button><a href="./removeCart.jsp?id=<%=donation.getDonationId()%>">삭제</a></button>
                 </div>
             <%
				}
			%>

			</div>
		</div>
		<hr>
	</div>

</body>
</html>
