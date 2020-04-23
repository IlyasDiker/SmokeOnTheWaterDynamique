<%-- 
    Document   : login
    Created on : 22 avr. 2020, 15:01:20
    Author     : Ilyas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String dsp = "none";
    String error = request.getParameter("error");
    
    if(error != null){
        dsp = "block";
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Login</title>
        <meta name="description" content="the login portal for SmokeOntheWater">
        <meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet/less" type="text/css" href="../style.less" />
	<link rel="shortcut icon" href="imgs/canalogo.png" />
        <script src="../libs/less.min.js" ></script>
        <script src="../libs/jquery-3.5.0.js" ></script>
        <link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">
        <script>document.getElementById("pass").required = true;</script>
    </head>
    <body>
        <div class="banner-top">
            <div class="banner-container">
                <a href="index.jsp"><img src="../imgs/logo.webp"></a>
                <div class="banner-listbtn">
                    You Don't have an account, 
                    <a href="register.jsp"><button>Sign Up</button></a>
                </div>
            </div>
        </div>
        <div class='content'>
            <center>
                <form action='script-login.jsp' class="loginform" method="POST">
                    <h2>Login</h2>
                    <input type="text" class="loginput" name='username' placeholder='Username' required>
                    <input type="password" id="pass" class="loginput" name='password' placeholder='Password' requied>
                    <input type='submit' class="logbtn" value='Login'>
                    <div id="error" style="display: <%=dsp%>;">
                        <p>Wrong Username or Password</p>
                    </div>
                </form>
            </center>
        </div>
    </body>
</html>
