<%-- 
    Document   : promote.jsp
    Created on : 23 avr. 2020, 14:49:19
    Author     : Ilyas
--%>

<%@page import="java.sql.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String sessa = "";
    String ranka = "";
if (!session.getAttribute("rank").toString().equals("admin")){
        response.sendRedirect("../Main/login.jsp");
    } else {
        sessa = session.getAttribute("login").toString();
        ranka = session.getAttribute("rank").toString();
    }

            String num =request.getParameter("num");
            String name =request.getParameter("name");
            
            
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Promote User</title>
        <script>
            function setmax(){
                let today = new Date();
                var todaydate = today.getFullYear()+"-"+today.getMonth()+"-"+today.getDate();

                var input = document.getElementById("mydate");
                input.setAttribute("max", todaydate);
            }
            function verify(){

               var d1 = new Date();
               var d2 = new Date(document.getElementById("mydate").value);

                if (d1<d2){alert("Please enter a date before "+d1);
                    return false;}
                else {return true;}
            }
            window.onload="setmax()";
        </script>
    </head>
    <body>
        <%@include file="../ClientArea/client_banner.jsp"%>
        <div class="content">
            <center>
                <form class="loginform" method="POST" action="script-promote.jsp">
                    <h2>Promote User</h2>
                    <input type="text" class="loginput" name="number" id="password" value="<%=num%>" placeholder="Number" readonly>
                    <input type="text" class="loginput" name="username" id="password2" value="<%=name%>" placeholder="Username" readonly>
                    <input type="date" class="loginput" name="dateemb" id="mydate">
                    <select name="rank">
                        <option value="admin">Admin</option>
                        <option value="jardinier">Jardinier</option>
                        <option value="client">Client</option>
                    </select>
                    <input type="submit" class="logbtn" onclick="return verify();" value="Promote User">
                </form>
            </center>
        </div>
    </body>
</html>
