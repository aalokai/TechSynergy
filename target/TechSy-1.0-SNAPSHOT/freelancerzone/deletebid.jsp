<%-- 
    Document   : deletebid
    Created on : Apr 7, 2024, 3:41:16 PM
    Author     : aalok
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="dbpack.DbManager"%>
<%
String id=request.getParameter("id");
DbManager dm=new DbManager();
String query="delete from bids where id='"+id+"'";
if(dm.insertUpdateDelete(query)==true){
    out.print("<script>alert('Bid is deleted');window.location.href='mybids.jsp';</script>");

    }
    else{
        out.print("<script>alert('Bid is not deleted');window.location.href='mybids.jsp';</script>");
    
    }

%>