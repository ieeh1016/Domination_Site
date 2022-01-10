<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>로그인 / 회원가입 폼 템플릿</title>

	<link rel="stylesheet" href="./resources/css/loginstyle.css">
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
                <form id="login" class="input-group" action="j_security_check" method="post">
                    <input type="text" class="input-field" placeholder="Id" name="j_username" required>
                    <input type="password" class="input-field" placeholder="Password" name="j_password" required>
                    <input type="checkbox" class="checkbox"><span>Remember Password</span>
                    <button class="submit" type="submit" value='Login'>Login</button>
                    
                </form>
                <form id="register" class="input-group">
                    <input type="text" class="input-field" placeholder="User name or Email" required>
                    <input type="email" class="input-field" placeholder="Your Email" required>
                    <input type="password" class="input-field" placeholder="Enter Password" required>
                    <input type="checkbox" class="checkbox"><span>Terms and conditions</span>
                    <input type='submit' class="submit" value='Register'>
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

