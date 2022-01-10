<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String sessionId = (String) session.getAttribute("sessionId");
%>

      <nav id="sidebar">
         <div class="menu_section">
            <ul>
            <c:choose>
            	<c:when test="${empty sessionId}">
	               <li><a href="Main.jsp">Home</a></li>
	               <li><a href="<c:url value="loginMember.jsp"/>">로그인 </a></li>
	               <li><a href="<c:url value="addMember.jsp"/>">회원가입 </a></li>
				   <li><a href="<c:url value="/BoardListAction.do?pageNum=1"/>">게시판</a></li>
	               <li><a href="donations.jsp">후원프로그램</a></li>
	               <li><a href="cart.jsp">관심등록한 프로그램</a></li>
	               <li><a href="adddonation.jsp">(Ad)후원프로그램 등록</a></li>
	               <li><a href="editDonation.jsp?edit=update">(Ad)후원프로그램 수정</a></li>
	               <li><a href="editDonation.jsp?edit=delete">(Ad)후원프로그램 삭제</a></li>

	            </c:when>
	            <c:otherwise>
	          	   <li><a href="Main.jsp">Home</a></li>
	          	   <li style="padding-top: 7px; color: black">[<%=sessionId%>님]</li>
                   <li><a href="<c:url value="logoutMember.jsp"/>">로그아웃 </a></li>
				   <li><a href='<c:url value="updateMember.jsp"/>'>회원 수정</a></li> 
			
				   <li><a href="<c:url value="/BoardListAction.do?pageNum=1"/>">게시판</a></li>
 	               <li><a href="donations.jsp">후원프로그램</a></li>
	               <li><a href="cart.jsp">관심등록한 프로그램</a></li>
	               <li><a href="adddonation.jsp">(Ad)후원프로그램 등록</a></li>
	               <li><a href="editDonation.jsp?edit=update">(Ad)후원프로그램 수정</a></li>
	               <li><a href="editDonation.jsp?edit=delete">(Ad)후원프로그램 삭제</a></li>
				</c:otherwise>
              </c:choose>
            </ul>
         </div>
      </nav>
      <div id="content">

		<header class="top-header">
            <div class="container">
               <div class="row">
                  <div class="col-sm-6">
                     <div class="logo_main">
                        <a href="Main.jsp"><img src="./resources/images/logo.png" /></a>
                     </div>
                  </div>
                  <div class="col-sm-6">
                     <button type="button" id="sidebarCollapse" class="btn btn-info navbar-btn"><img src="./resources/images/menu_icon.png"></button>
                  </div>
               </div>
            </div>

         </header>
