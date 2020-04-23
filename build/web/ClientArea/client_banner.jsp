<%-- 
    Document   : client_banner
    Created on : 23 avr. 2020, 11:43:06
    Author     : Ilyas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String sess = "";
    String rank = "";
    String isAdmin = "none";
    String isJardinier = "none";
    
    if (session.getAttribute("login") == null){
        response.sendRedirect("../Main/login.jsp");
    } else {
        sess = session.getAttribute("login").toString();
        rank = session.getAttribute("rank").toString();
    }
    
    if (rank.equals("admin")){
        isAdmin = "inline-block";
    } else if (rank.equals("jardinier")) { 
        isJardinier = "inline-block";
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
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
                <a href="../ClientArea/Home.jsp"><img src="../imgs/logo.webp"></a>
                <div class="banner-listbtn">
                    <%=sess%>
                    <a style="display:<%=isJardinier%>;" href="../JardinierArea/Dashboard.jsp"><button>jardinier Dashboard</button></a>
                    <a style="display:<%=isAdmin%>;" href="../AdminArea/AdminDashboard.jsp"><button>Admin Dashboard</button></a>
                    <a href="../ClientArea/script_disconnect.jsp"><button>Disconnect</button></a>
                </div>
            </div>
        </div>
    </body>
</html>
