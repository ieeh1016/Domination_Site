<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page import="mvc.model.BoardDTO"%>

<%
	BoardDTO notice = (BoardDTO) request.getAttribute("board");
	int num = ((Integer) request.getAttribute("num")).intValue();
	int nowpage = ((Integer) request.getAttribute("page")).intValue();
%>
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
<title>Board</title>
</head>
<body>
	<%@include file="../header.jsp"  %>
	<%@include file = "../menufooter.jsp" %>
	<div class="jumbotron">
		<div class="container">
			<h2 class="display-3"><br>게시판</h2>
		</div>
	</div>

	<div class="container">
		<form name="newUpdate"
			action="BoardUpdateAction.do?num=<%=notice.getNum()%>&pageNum=<%=nowpage%>"
			class="form-horizontal" method="post">
			<div class="form-group row">
				<label class="col-sm-2 control-label" >성명</label>
				<div class="col-sm-3">
					<input name="name" class="form-control"	value=" <%=notice.getName()%>">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2 control-label" >제목</label>
				<div class="col-sm-5">
					<input name="subject" class="form-control"	value=" <%=notice.getSubject()%>" >
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2 control-label" >내용</label>
				<div class="col-sm-8" style="word-break: break-all;">
					<textarea name="content" class="form-control" cols="50" rows="5"> <%=notice.getContent()%></textarea>
				</div>
			</div>
			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10 ">
					<c:set var="userId" value="<%=notice.getId()%>" />
					<c:if test="${sessionId==userId}">
						<p>
							<a	href="./BoardDeleteAction.do?num=<%=notice.getNum()%>&pageNum=<%=nowpage%>"	class="btn btn-danger"> 삭제</a> 
							<input type="submit" class="btn btn-success" value="수정 ">
					</c:if>
					<a href="./BoardListAction.do?pageNum=<%=nowpage%>"		class="btn btn-primary"> 목록</a>
				</div>
			</div>
		</form>
		<hr>
	</div>
</body>
</html>


