<%-- 
    Document   : register
    Created on : 22 avr. 2020, 15:31:06
    Author     : Ilyas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String dsp = "none";
    String error = request.getParameter("error");
    String errmsg = "";
    
    if(error != null){
        dsp = "block";
        if (error.equals("1")) {
            errmsg = "The username you selected already existe";
        } else if (error.equals("2")){
            errmsg = "The Passwords don't matche";
        } else {
            errmsg = "An error occurred while sending your request";
        }
    }
    String prenom = request.getParameter("prenom");
    String nom = request.getParameter("name");
    String username = request.getParameter("login");

%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Register</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet/less" type="text/css" href="../style.less" />
	<link rel="shortcut icon" href="imgs/canalogo.png" />
        <script src="../libs/less.min.js" ></script>
        <script src="../libs/jquery-3.5.0.js" ></script>
        <link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">
    </head>
    <body>
        <div class="banner-top">
            <div class="banner-container">
                <a href="index.jsp"><img src="../imgs/logo.webp"></a>
                <div class="banner-listbtn">
                    You already have an account, 
                    <a href="login.jsp"><button>Login</button></a>
                </div>
            </div>
        </div>
        <div class='content'>
            <center>
                <form action='script-register.jsp' class="loginform" method="POST">
                    <h2>Register</h2>
                    <input type="text" class="loginput" name='name' placeholder='Nom' value="<%=nom%>" required>
                    <input type="text" class="loginput" name='prenom' placeholder='Prenom' value="<%=prenom%>" required>
                    <input type="text" class="loginput" name='login' placeholder='Username' value="<%=username%>" required>
                    <input type='password' class="loginput" name='password' placeholder='Password' minleght="6" requied>
                    <input type='password' class="loginput" name='password2' placeholder='Confirm Password' requied>
                    <input type='submit' class="logbtn" value='Create new account'>
                    <div id="error" style="display: <%=dsp%>;">
                        <p><%=errmsg%></p>
                    </div>
                </form>
            </center>
            
        </div>
    </body>
</html>
