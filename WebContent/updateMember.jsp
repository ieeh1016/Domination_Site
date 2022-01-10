<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

<html>
<head>
	<link rel="stylesheet" href="./resources/css/addmemberstyle.css">
<%
	String sessionId = (String) session.getAttribute("sessionId");
%>
<sql:setDataSource var="dataSource"
	url="jdbc:mysql://localhost:3306/MyProjectDB"
	driver="com.mysql.jdbc.Driver" user="root" password="1234" />

<sql:query dataSource="${dataSource}" var="resultSet">
   SELECT * FROM MEMBER WHERE ID=?
   <sql:param value="<%=sessionId%>" />
</sql:query>


	
	<title>회원 수정</title>
</head>
<body>
	<div class="wrap">
            <div class="form-wrap">
            <button><a href="Main.jsp">Main</a></button>
                <div class="button-wrap">
                    <div id="btn"></div>
                    <button type="button" class="togglebtn" onclick="login()">REGISTER UP</button>

                </div>

	<c:forEach var="row" items="${resultSet.rows}">
	<c:set var="mail" value="${row.mail}" />
	<c:set var="mail1" value="${mail.split('@')[0]}" />
	<c:set var="mail2" value="${mail.split('@')[1]}" />

	<c:set var="birth" value="${row.birth }" />
	<c:set var="year" value="${birth.split('/')[0]}" />
	<c:set var="month" value="${birth.split('/')[1]}" />
	<c:set var="day" value="${birth.split('/')[2]}" />
	

                <form id="login" name="newMember" action="processAddMember.jsp" method="post" onsubmit="return checkForm()" class="input-group">
                    <input type="text" name="id" class="input-field" placeholder="Id" required value="<c:out value='${row.id }'/>" />
                    <input type="text" name="password" class="input-field" placeholder="Password" required value="<c:out value='${row.password }'/>" >
                    <input type="text" name="pass_confirm" class="input-field" placeholder="Enter Password" required>
                    <input type="text" name="name" class="input-field" placeholder="name" required value="<c:out value='${row.name }'/>" >
                    <input type="radio" name="gender"  value="남" <c:if test="${gender.equals('남')}"> <c:out value="checked" /> </c:if>>남자
                    <input type="radio" name="gender"  value="여" <c:if test="${gender.equals('여')}"> <c:out value="checked" /> </c:if> >여자
                    <input type="text" name="birthyy" maxlength="4" placeholder="year(4)" size=6 value="${year}" class="input-field">
                    <select name="birthmm" id="birthmm">						
                    	<option value="">월</option>
						<option value="01">1</option>
						<option value="02">2</option>
						<option value="03">3</option>
						<option value="04">4</option>
						<option value="05">5</option>
						<option value="06">6</option>
						<option value="07">7</option>
						<option value="08">8</option>
						<option value="09">9</option>
						<option value="10">10</option>
						<option value="11">11</option>
						<option value="12">12</option></select>
					<input type="text" name="birthdd" maxlength="2" placeholder="day" size="4" value="${day}">
					<input type="text" name="mail1" class="input-field" placeholder="email"value="${mail1}">@
					<select name="mail2" id="mail2">						
						<option>naver.com</option>
						<option>daum.net</option>
						<option>gmail.com</option>
						<option>nate.com</option></select>
                    <input type="text" name="phone" class="input-field" placeholder="phone" required value="<c:out value='${row.phone}'/>">
                    <input type="text" name="address" class="input-field" placeholder="address" required value="<c:out value='${row.address}'/>">
                    <input type='submit' class="submit" value='Register UPdate'>
                    <button><a href="deleteMember.jsp">회원탈퇴</a></button>
                </form>
            </div>
        </div>
        </c:forEach>
        <script>
        
            var x = document.getElementById("login");
            var y = document.getElementById("register");
            var z = document.getElementById("btn");
            
            
            function login(){
                x.style.left = "50px";
                y.style.left = "450px";
                z.style.left = "0";
            }

            function register(){
                x.style.left = "-400px";
                y.style.left = "50px";
                z.style.left = "110px";
            }
        </script>
</body>
</html>
<script type="text/javascript">
	function init() {
		setComboMailValue("${mail2}");
		setComboBirthValue("${month}");
	}

	function setComboMailValue(val) {
		var selectMail = document.getElementById('mail2');
		for (i = 0, j = selectMail.length; i < j; i++) {
			if (selectMail.options[i].value == val) {
				selectMail.options[i].selected = true; 
				break;
			}
		}
	}
	function setComboBirthValue(val) {
		var selectBirth = document.getElementById('birthmm'); 
		for (i = 0, j = selectBirth.length; i < j; i++){
			if (selectBirth.options[i].value == val){
				selectBirth.options[i].selected = true; 
				break;
			}
		}
	}
	function checkForm() {
		if (!document.newMember.id.value) {
			alert("아이디를 입력하세요.");
			return false;
		}
		if (!document.newMember.password.value) {
			alert("비밀번호를 입력하세요.");
			return false;
		}
		if (document.newMember.password.value != document.newMember.password_confirm.value) {
			alert("비밀번호를 동일하게 입력하세요.");
			return false;
		}
	}
</script>