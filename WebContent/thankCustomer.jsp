<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.net.URLDecoder"%>
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
<title>주문 완료</title>
</head>
<body>
	<%
		String shipping_cartId = "";
		String shipping_name = "";
		String shipping_shippingDate = "";
		String shipping_country = "";
		String shipping_zipCode = "";
		String shipping_addressName = "";		

		Cookie[] cookies = request.getCookies();

		if (cookies != null) {
			for (int i = 0; i < cookies.length; i++) {
				Cookie thisCookie = cookies[i];
				String n = thisCookie.getName();
				if (n.equals("Shipping_cartId"))
					shipping_cartId = URLDecoder.decode((thisCookie.getValue()), "utf-8");
				if (n.equals("Shipping_shippingDate"))
					shipping_shippingDate = URLDecoder.decode((thisCookie.getValue()), "utf-8");
			}
		}
	%>
	<jsp:include page="header.jsp" />
	<%@ include file = "menufooter.jsp" %>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3"><br>후원증 발급완료</h1>
		</div>
	</div>
	<div class="container">
		<h2 class="alert alert-danger">후원해주셔서 감사합니다.</h2>
	</div>
	<div class="container">
		<p>	<a href="./Main.jsp" class="btn btn-secondary"> &laquo; 메인화면</a>		
	</div>
</body>
</html>
<%


	for (int i = 0; i < cookies.length; i++) {
		Cookie thisCookie = cookies[i];
		String n = thisCookie.getName();
		if (n.equals("Shipping_cartId"))
			thisCookie.setMaxAge(0);
		if (n.equals("Shipping_name"))
			thisCookie.setMaxAge(0);
		if (n.equals("Shipping_shippingDate"))
			thisCookie.setMaxAge(0);
		if (n.equals("Shipping_country"))
			thisCookie.setMaxAge(0);
		if (n.equals("Shipping_zipCode"))
			thisCookie.setMaxAge(0);
		if (n.equals("Shipping_addressName"))
			thisCookie.setMaxAge(0);
		
		response.addCookie(thisCookie);
	}
%>
