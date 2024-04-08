<%-- 
    Document   : clientcontroller
    Created on : Apr 6, 2024, 6:56:03 PM
    Author     : aalok
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.text.SimpleDateFormat" %>
<%@page import="java.util.Date" %>
<%@page import="dbpack.DbManager"%>
<%@page import="java.sql.ResultSet"%>

<%
DbManager dm=new DbManager();
if(request.getParameter("page").equals("post_project")){
    String username = session.getAttribute("cusername").toString();
    String projectTitle = request.getParameter("projectTitle");
    String projectCategory = request.getParameter("projectCategory");
    String projectDescription = request.getParameter("projectDescription");
    String skillsRequired = request.getParameter("skillsRequired");
    String projectBudget = request.getParameter("projectBudget");
    String projectDeadline = request.getParameter("projectDeadline");
    String nquery = "SELECT fullname FROM user_registration WHERE username='" + username + "'";
                        ResultSet rs = dm.select(nquery);

                        String fullname=""; // Default value in case the query does not return any results
                        if (rs.next()) {
                        // Retrieve the fullname from the ResultSet
                        fullname =   rs.getString("fullname");
                        }
    

   
    // Constructing the query to insert project details
    String query = "INSERT INTO projects (fullname,username, projectTitle, projectCategory, projectDescription, skillsRequired, projectBudget, projectDeadline, postingDate) VALUES ('" 
                    + fullname + "','" 
                    + username + "','" + projectTitle + "','" + projectCategory + "','" + projectDescription + "','" + skillsRequired + "','" + projectBudget + "','" + projectDeadline + "',NOW())";

    if(dm.insertUpdateDelete(query)){
        out.print("<script>alert('Project posted successfully!');window.location.href='clienthome.jsp';</script>");
    } else {
        out.print("<script>alert('Failed to post project!');window.location.href='projectform.jsp';</script>");
    }
}




if (request.getParameter("page").equals("send_message")) {
    String senderUsername = session.getAttribute("cusername").toString();
    String recipientUsername = request.getParameter("recipientUsername");
    String message = request.getParameter("message");
    
    // Get current timestamp
    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    String sentAt = sdf.format(new Date());

    // Constructing the query to insert message details
    String query = "INSERT INTO messages (senderUsername, recipientUsername, message, sentAt) VALUES ('" 
                    + senderUsername + "','" + recipientUsername + "','" + message + "','" + sentAt + "')";

    if (dm.insertUpdateDelete(query)) {
        out.print("<script>window.location.href='messages.jsp';</script>");
    } else {
        out.print("<script>alert('Failed to send message! Check Recipient Username');window.location.href='messages.jsp';</script>");
    }
}






%>
