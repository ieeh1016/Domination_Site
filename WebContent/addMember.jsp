<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
	<link rel="stylesheet" href="./resources/css/addmemberstyle.css">
<title>Login</title>
<script type="text/javascript">
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
</head>
<body>

	<div class="wrap">
			
            <div class="form-wrap">
            <button><a href="Main.jsp">Main</a></button>
                <div class="button-wrap">
                    <div id="btn"></div>
                    <button type="button" class="togglebtn" onclick="login()">LOG IN</button>
                    <button type="button" class="togglebtn" onclick="register()">REGISTER</button>
                </div>
		<%
			String error = request.getParameter("error");
			if(error != null){
				out.println("<div class='alert alert-danger'>");
				out.println("아이디와 비밀번호를 확인해주세요.");
				out.println("</div>");
			}
		%>
                <form id="login" class="input-group" action="processLoginMember.jsp" method="post">
                    <input type="text" class="input-field" placeholder="Id" name="id" required>
                    <input type="password" class="input-field" placeholder="Password" name="password" required>
                    <input type="checkbox" class="checkbox"><span>Remember Password</span>
                    <button class="submit" type="submit" value='Login'>Login</button>
                </form>
                <form id="register" name="newMember" action="processAddMember.jsp" method="post" onsubmit="return checkForm()" class="input-group">
                    <input type="text" name="id" class="input-field" placeholder="Id" required>
                    <input type="text" name="password" class="input-field" placeholder="Password" required>
                    <input type="text" name="pass_confirm" class="input-field" placeholder="Enter Password" required>
                    <input type="text" name="name" class="input-field" placeholder="name" required>
                    <input type="radio" name="gender"  value="남" >남자
                    <input type="radio" name="gender"  value="여" >여자
                    <input type="text" name="birthyy" maxlength="4" placeholder="year(4)" size=6 class="input-field">
                    <select name="birthmm">						
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
					<input type="text" name="birthdd" maxlength="2" placeholder="day" size="4">
					<input type="text" name="mail1" class="input-field" placeholder="email" required>@
					<select name="mail2">						
						<option>naver.com</option>
						<option>daum.net</option>
						<option>gmail.com</option>
						<option>nate.com</option></select>
                    <input type="text" name="phone" class="input-field" placeholder="phone" required>
                    <input type="text" name="address" class="input-field" placeholder="address" required>
                    <input type='submit' class="submit" value='Register'>
                    <input type='reset' class="submit" value='reset' onclick="reset()">
                </form>
            </div>
        </div>
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