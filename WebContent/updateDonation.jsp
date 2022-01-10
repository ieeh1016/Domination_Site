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

<title>후원프로그램 수정</title>
</head>
<body>
	<jsp:include page="header.jsp" />
	<%@ include file = "menufooter.jsp" %>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3"><br>후원프로그램 수정</h1>
		</div>
	</div>
	<%@ include file="dbconn.jsp"%>
	<%
		String donationId = request.getParameter("id");

		String sql = "select * from donation where d_donationId = ?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, donationId);
		rs = pstmt.executeQuery();
		if (rs.next()) {
	%>
	<div class="container">
		<div class="row">
			<div class="col-md-5">
				<img src="${pageContext.request.contextPath}/resources/images/<%=rs.getString("d_fileName")%>" alt="image"
					style="width: 100%" />
			</div>
			<div class="col-md-7">
				<form name="newProduct" action="./processUpdateDonation.jsp"
					class="form-horizontal" method="post" enctype="multipart/form-data">
					<div class="form-group row">
						<label class="col-sm-2">후원프로그램 등록 아이디</label>
						<div class="col-sm-3">
							<input type="text" id="donationId" name="donationId"
								class="form-control" value='<%=rs.getString("d_donationId")%>'>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2">후원프로그램 제목</label>
						<div class="col-sm-3">
							<input type="text" id="donationName" name="donationName" class="form-control"
								value="<%=rs.getString("d_donationName")%>">
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2">후원가격</label>
						<div class="col-sm-3">
							<input type="text" id="donationPrice" name="donationPrice"
								class="form-control" value="<%=rs.getInt("d_donationPrice")%>">
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2">목표금액</label>
						<div class="col-sm-3">
							<input type="text" id="goalPrice" name="goalPrice"
								class="form-control" value="<%=rs.getString("d_goalPrice")%>">
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2">후원단체</label>
						<div class="col-sm-3">
							<input type="text" id="donationPlace" name="donationPlace" class="form-control"
								value="<%=rs.getString("d_donationPlace")%>">
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2">후원기간</label>
						<div class="col-sm-3">
							<input type="text" id="donationPeriod" name="donationPeriod" class="form-control"
								value="<%=rs.getString("d_donationPeriod")%>">
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2">후원프로그램 설명</label>
						<div class="col-sm-5">
							<textarea name="donationDescription" cols="50" rows="2"
								class="form-control"><%=rs.getString("d_donationDescription")%></textarea>
						</div>
					</div>

					<div class="form-group row">
						<label class="col-sm-2">이미지</label>
						<div class="col-sm-5">
							<input type="file" name="donationImage" class="form-control">
						</div>
					</div>
					<div class="form-group row">
						<div class="col-sm-offset-2 col-sm-10 ">
							<input type="submit" class="btn btn-primary" value="등록">
						</div>
					</div>
				</form>

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

</body>
</html>
