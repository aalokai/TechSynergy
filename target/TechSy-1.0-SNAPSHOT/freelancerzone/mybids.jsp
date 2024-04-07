<%-- 
    Document   : mybids
    Created on : Apr 7, 2024, 2:56:29 PM
    Author     : aalok
--%>

<%@page import="dbpack.DbManager"%>
<%@page import="java.sql.ResultSet"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
if(session.getAttribute("fusername")==null)
{
response.sendRedirect("../login.jsp");
}
else{

  
    
%>




<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My Bids - Freelancer</title>


        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
              integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
              crossorigin="anonymous" referrerpolicy="no-referrer" />

        <link rel="stylesheet" type="text/css" href="../css/bootstrap.css" />

        <link href="https://fonts.googleapis.com/css?family=Poppins:400,700&display=swap" rel="stylesheet">
        <link href="../css/style.css" rel="stylesheet" type="text/css" />
        <link href="../css/responsive.css" rel="stylesheet" type="text/css"/>
        <link href="../css/client.css" rel="stylesheet" type="text/css"/>

    </head>

    <body>
        <jsp:include page="header.jsp"/>


        <!--My Bids  Section start-->
        
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-12 my-5" style="min-height: 500px;">
                    <h2 class="mb-4" style="text-align: center;">My Bids</h2>
                    <table class="table table-bordered table-striped " style="margin: auto;width: 90%">
                        <tr class="text-center table-dark">
                            <th>Id.No</th>
                            <th>Project Title</th>
                            <th>Project Client</th>
                            <th>Project Category</th>
                            <th>Project Description</th>
                            <th>Skills Required</th>
                            <th>Project Budget</th>
                            <th>Project Deadline</th>
                            <th>Posting Date</th>
                            <th>Bid Amount</th>
                            <th>Bid Duration</th>
                            <th>Bid Message</th>
                            <th>Bid Date</th>
                            <th>Delete</th>
                        </tr>
                        <%
                        DbManager dm=new DbManager();    
                        String username=session.getAttribute("fusername").toString();
                        // Execute the SQL query to retrieve the id
                        String query = "SELECT id FROM bids WHERE freelancerUsername='" + username + "'";
                        ResultSet rs = dm.select(query);

                        int id = 0; // Default value in case the query does not return any results
                        if (rs.next()) {
                        // Retrieve the id from the ResultSet
                        id = rs.getInt("id");
                        }

                        String query1="select * from projects where id='"+id+"';";
                        String query2="select * from bids where freelancerUsername = '"+username+"'" ;
                            
                            
                            ResultSet rs1=dm.select(query1);
                            ResultSet rs2=dm.select(query2);
                        while(rs1.next()){
                        
                        %>
                        <tr>
                            <td><%= rs1.getString("id") %></td>
                            <td><%= rs1.getString("projectTitle") %></td>
                            <td><%= rs1.getString("username") %></td>
                            <td><%= rs1.getString("projectCategory") %></td>
                            <td><%= rs1.getString("projectDescription") %></td>
                            <td><%= rs1.getString("skillsRequired") %></td>
                            <td><%= rs1.getString("projectBudget") %></td>
                            <td><%= rs1.getString("projectDeadline") %></td>
                            <td><%= rs1.getString("postingDate") %></td>\
                            
                            <%}%>
                            
                            <% while(rs2.next()){
                            
                                %>
                            <td><%= rs2.getString("bidAmount") %></td>
                            <td><%= rs2.getString("bidDuration") %></td>
                            <td><%= rs2.getString("bidMessage") %></td>
                            <td><%= rs2.getString("bidDate") %></td>
                            
                            <td>
                                <a href="deletebid.jsp?id=<%=id%>">
                                    <button class="btn btn-danger">
                                        Delete
                                    </button>
                                </a>
                            </td>
                            
                        </tr>
                        
                        <%}%>
                        
                        
                        
                    </table>
                    
                    
                    
                    
                </div>
            </div>
            
        </div>


        <jsp:include page="footer.jsp"/>

    </body>

</html>


<% } %>

