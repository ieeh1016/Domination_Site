<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
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
	<script type ="text/javascript" src ="./resources/js/validation.js"></script>
<title>후원프로그램 등록</title>
</head>
<body>

	<%@include file="header.jsp"  %>
	<%@ include file = "menufooter.jsp" %>
	
	<fmt:setLocale value='<%= request.getParameter("language") %>'/>
	<fmt:bundle basename="bundle.message" > 

	<div class="jumbotron">
		<div class="container">
			<br><br><h1 class="display-3"><fmt:message key="title" /></h1>
		</div>
	</div>
	<div class="container">
		<div class="text-right"> 
			<a href="?language=ko" >Korean</a>|<a href="?language=en" >English</a>
		</div>	
		<form name="newDonation" action="./processAdddonation.jsp" class="form-horizontal" method="post" enctype ="multipart/form-data">
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="donationId" /></label>
				<div class="col-sm-3">
					<input type="text" id ="donationId" name="donationId" class="form-control" >
				</div>
			</div>		
			
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="donationName" /></label>
				<div class="col-sm-3">
					<input type="text" id ="donationName" name="donationName" class="form-control" >
				</div>
			</div>
			
			
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="donationPrice"/></label>
				<div class="col-sm-3">
					<input type="text" id ="donationPrice" name="donationPrice" class="form-control" >
				</div>
			</div>
			
						<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="goalPrice"/></label>
				<div class="col-sm-3">
					<input type="text" id ="goalPrice" name="goalPrice" class="form-control" >
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="donationPlace" /></label>
				<div class="col-sm-3">
					<input type="text" id="donationPlace" name="donationPlace" class="form-control" >
				</div>
			</div>
			
						<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="donationPeriod" /></label>
				<div class="col-sm-3">
					<input type="text" id="donationPeriod" name="donationPeriod" class="form-control" >
				</div>
			</div>
			
			
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="donationDescription" /></label>
				<div class="col-sm-5">
					<textarea name="donationDescription" cols="50" rows="2"
						class="form-control"></textarea>
				</div>
			</div>
		

			<div class ="form-group row">
			<label class ="col-sm-2"><fmt:message key="donationImage" /></label>
				<div class ="col-sm-5">
 					<input type="file" name="donationImage" class="form-control">
 				</div>
 			</div>
 			
 			
 			
			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10 ">
					<input type ="button" class="btn btn-primary" value="<fmt:message key="button" />" onclick ="CheckAddDonation()">
				</div>
			</div>
			
			
		</form>
	</div>
	</fmt:bundle>
</body>
</html>
