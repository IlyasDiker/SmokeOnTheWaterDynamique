<%-- 
    Document   : script-promote
    Created on : 23 avr. 2020, 15:46:45
    Author     : Ilyas
--%>

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

    String num =request.getParameter("number");
    String rank =request.getParameter("rank");
    String dateemb =request.getParameter("dateemb");
    
            
    DCM.Select_request("UPDATE JARDINIER SET RANK='"+rank+"', DATE_EMBAUCHE= to_date('"+dateemb+"','YYYY-MM-DD') WHERE NUM="+num+"");
    
    response.sendRedirect("../AdminArea/AdminDashboard.jsp");
       
%>
