<%-- 
    Document   : freelancercontroller
    Created on : Apr 7, 2024, 3:43:09 PM
    Author     : aalok
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.text.SimpleDateFormat" %>
<%@page import="java.util.Date" %>
<%@page import="dbpack.DbManager"%>
<%@page import="java.sql.ResultSet"%>

<%
DbManager dm = new DbManager();
if(request.getParameter("page").equals("submit_bid")) {
    String cid=request.getParameter("cid");
    String freelancerUsername = session.getAttribute("fusername").toString();
    String bidAmount = request.getParameter("bidAmount");
    String bidDuration = request.getParameter("bidDuration");
    String bidMessage = request.getParameter("bidMessage");

    
    
    String query1 = "SELECT * FROM projects WHERE id='" + cid + "'";
    ResultSet rs1 = dm.select(query1);

    int projectId = 0; 
    String clientFullName = "";
    String clientUsername = "";
    String projectTitle = "";
    String projectCategory = "";
    String projectDescription = "";
    String skillsRequired = "";
    String projectBudget = "";
    String projectDeadline = "";
    String projectPostingDate = "";
    String freelancerFullName = "";
    String freelancerEmail = "";
    String freelancerContactNumber = "";
    String freelancerSkills = "";
    String freelancerLanguage = "";
    String freelancerBio = "";
    String freelancerPortfolio = "";
    
    

    if (rs1.next()) {
        projectId = rs1.getInt("id");
        clientFullName = rs1.getString("fullname");
        clientUsername = rs1.getString("username");
        projectTitle = rs1.getString("projectTitle");
        projectCategory = rs1.getString("projectCategory");
        projectDescription = rs1.getString("projectDescription");
        skillsRequired = rs1.getString("skillsRequired");
        projectBudget = rs1.getString("projectBudget");
        projectDeadline = rs1.getString("projectDeadline");
        projectPostingDate = rs1.getString("postingDate");
        
    }

    
    String query2 = "SELECT * FROM user_registration WHERE username='" + freelancerUsername + "'";
    ResultSet rs2 = dm.select(query2);
    if (rs2.next()) {
        freelancerFullName = rs2.getString("fullname");
        freelancerEmail = rs2.getString("email");
        freelancerContactNumber = rs2.getString("contact_number");
        freelancerSkills = rs2.getString("skills");
        freelancerLanguage = rs2.getString("languages");
        freelancerBio = rs2.getString("bio");
        freelancerPortfolio = rs2.getString("portfolio");
    }
    
    
    
    
    
    
    String query = "INSERT INTO bids (projectId, clientFullName, clientUsername, projectTitle, projectCategory, projectDescription, skillsRequired, projectBudget, projectDeadline, projectPostingDate, freelancerFullName, freelancerUsername, freelancerEmail, freelancerContactNumber, freelancerSkills, freelancerLanguage, freelancerBio, freelancerPortfolio, bidAmount, bidDuration, bidMessage, bidDate) VALUES ('" 
                    + projectId + "','" + clientFullName + "','" + clientUsername + "','" + projectTitle + "','" + projectCategory + "','" + projectDescription + "','" + skillsRequired + "','" + projectBudget + "','" + projectDeadline + "','" + projectPostingDate + "','" + freelancerFullName + "','" + freelancerUsername + "','" + freelancerEmail + "','" + freelancerContactNumber + "','" + freelancerSkills + "','" + freelancerLanguage + "','" + freelancerBio + "','" + freelancerPortfolio + "','" + bidAmount + "','" + bidDuration + "','" + bidMessage + "',NOW())";


    if(dm.insertUpdateDelete(query)){
        out.print("<script>alert('Bid submitted successfully!');window.location.href='bidprojects.jsp';</script>");
    } else {
        out.print("<script>alert('Failed to submit bid!');window.location.href='bidprojects.jsp';</script>");
    }
}


if (request.getParameter("page").equals("send_message")) {
    String senderUsername = session.getAttribute("fusername").toString();
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
