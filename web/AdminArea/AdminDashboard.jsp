<%-- 
    Document   : AdminDashboard
    Created on : 23 avr. 2020, 13:32:12
    Author     : Ilyas
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.smokeonthewater.DCM"%>
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
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Dashbaord</title>
        
    </head>
    <body>
        <%@include file="../ClientArea/client_banner.jsp"%>
        <div class="content">
            <table class="">
                <thead>
                    <tr>
                        <th>Numero</th>
                        <th>Nom</th>
                        <th>Prenom</th>
                        <th>Date</th>
                        <th>Username</th>
                        <th style="display: none;">Password</th>
                        <th>Rank</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <%  
                        ResultSet rs = DCM.Select_request("Select * from Jardinier order by num");
                    while(rs.next()){%>
                    <tr>
                        <td><%=rs.getString(1)%></td>
                        <td><%=rs.getString(2)%></td>
                        <td><%=rs.getString(3)%></td>
                        <td><%=rs.getString(4)%></td>
                        <td><%=rs.getString(5)%></td>
                        <td style="display: none;"><input type="password" value="<%=rs.getString(6)%>" readonly></td>
                        <td><%=rs.getString(7)%></td>
                        <td><a href="promote.jsp?num=<%=rs.getString(1)%>&name=<%=rs.getString(5)%>" class="badge">⬆️ Promote</a>
                            <a class="badge">🖊</a>
                            <a class="badge">🗑</a></td>
                    </tr>
                      <%}%>
                </tbody>
            </table>
        </div>
        
    </body>
</html>
