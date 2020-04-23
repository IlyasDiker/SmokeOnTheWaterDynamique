<%-- 
    Document   : script_disconnect
    Created on : 23 avr. 2020, 12:08:13
    Author     : Ilyas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    session.invalidate();
    response.sendRedirect("../Main/index.jsp");

%>
