<%-- 
    Document   : deleteproject
    Created on : Apr 6, 2024, 10:48:18 PM
    Author     : aalok
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="dbpack.DbManager"%>
<%
String id=request.getParameter("id");
DbManager dm=new DbManager();
String query="delete from projects where id='"+id+"'";
if(dm.insertUpdateDelete(query)==true){
    out.print("<script>alert('Project is deleted');window.location.href='myprojects.jsp';</script>");

    }
    else{
        out.print("<script>alert('Project is not deleted');window.location.href='myprojects.jsp';</script>");
    
    }

%>
