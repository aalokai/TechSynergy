<%-- 
    Document   : clientcontroller
    Created on : Apr 6, 2024, 6:56:03 PM
    Author     : aalok
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="dbpack.DbManager"%>
<%@page import="java.sql.ResultSet"%>

<%
if(request.getParameter("page").equals("post_project")){
    String username = session.getAttribute("cusername").toString();
    String projectTitle = request.getParameter("projectTitle");
    String projectCategory = request.getParameter("projectCategory");
    String projectDescription = request.getParameter("projectDescription");
    String skillsRequired = request.getParameter("skillsRequired");
    String projectBudget = request.getParameter("projectBudget");
    String projectDeadline = request.getParameter("projectDeadline");

    DbManager dm=new DbManager();
    // Constructing the query to insert project details
    String query = "INSERT INTO projects (username, projectTitle, projectCategory, projectDescription, skillsRequired, projectBudget, projectDeadline, postingDate) VALUES ('" 
                    + username + "','" + projectTitle + "','" + projectCategory + "','" + projectDescription + "','" + skillsRequired + "','" + projectBudget + "','" + projectDeadline + "',curdate())";

    if(dm.insertUpdateDelete(query)){
        out.print("<script>alert('Project posted successfully!');window.location.href='clienthome.jsp';</script>");
    } else {
        out.print("<script>alert('Failed to post project!');window.location.href='projectform.jsp';</script>");
    }
}
%>
