<%-- 
    Document   : freelancercontroller
    Created on : Apr 7, 2024, 3:43:09 PM
    Author     : aalok
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="dbpack.DbManager"%>
<%@page import="java.sql.ResultSet"%>

<%
if(request.getParameter("page").equals("submit_bid")) {
    String cid=request.getParameter("cid");
    String freelancerUsername = session.getAttribute("fusername").toString();
    String bidAmount = request.getParameter("bidAmount");
    String bidDuration = request.getParameter("bidDuration");
    String bidMessage = request.getParameter("bidMessage");
    
    
    
    

    DbManager dm = new DbManager();
    
    String query = "INSERT INTO bids (id, freelancerUsername, bidAmount, bidDuration, bidMessage, bidDate) VALUES ('" + cid + "','" 
                    + freelancerUsername + "','" + bidAmount + "','" + bidDuration + "','" + bidMessage + "', NOW())";

    if(dm.insertUpdateDelete(query)){
        out.print("<script>alert('Bid submitted successfully!');window.location.href='bidprojects.jsp';</script>");
    } else {
        out.print("<script>alert('Failed to submit bid!');window.location.href='bidprojects.jsp';</script>");
    }
}
%>
