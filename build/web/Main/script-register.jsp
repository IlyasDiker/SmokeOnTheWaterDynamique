<%-- 
    Document   : script-register
    Created on : 22 avr. 2020, 22:51:29
    Author     : Ilyas
--%>

<%@page import="java.sql.Statement"%>
<%@page import="com.smokeonthewater.DCM"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
    String prenom = request.getParameter("prenom");
    String nom = request.getParameter("name");
    String login = request.getParameter("login");
    String password = request.getParameter("password");
    String password2 = request.getParameter("password2");

    if(!password.equals(password2)){
        response.sendRedirect("register.jsp?error=2");
    }
    
    String sql = ("INSERT INTO JARDINIER VALUES((SELECT max(NUM)+1 from JARDINIER),'"+nom+"','"+prenom+"',null,'"+login+"','"+password+"','client')");
    System.out.println(sql);
    //try {
    //        stm.executeQuery(sql);
    //        response.sendRedirect("login.jsp");
    //    } catch (Exception e) {
    //        response.sendRedirect("register.jsp?error=1");
    //    }
    
    boolean rs = DCM.AMS_request(sql);
    if(rs==true){
        response.sendRedirect("login.jsp");
    }else{
        RequestDispatcher dispatcher = request.getRequestDispatcher("register.jsp?error=1");
        dispatcher.include(request, response);
    }
%>
