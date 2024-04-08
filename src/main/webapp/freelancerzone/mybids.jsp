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
        
        <div class="container-fluid" style="background-image: linear-gradient(-225deg, #FFFEFF 0%, #D7FFFE 100%);">
            <div class="row">
                <div class="col-sm-12 my-5" style="min-height: 500px;">
                    <h2 class="mb-4" style="text-align: center;">My Bids</h2>
                    <table class="table table-bordered table-striped " style="margin: auto;width: 90%">
                        <tr class="text-center table-dark">
                            <th>Id.No</th>
                            <th>Client Name</th>
                            <th>Client Username</th>
                            <th>Project Title</th>
                            <th>Project Category</th>
                            <th>Project Description</th>
                            <th>Skills Required</th>
                            <th>Project Budget</th>
                            <th>Project Deadline</th>
                            <th>Project Posting Date</th>
                            <th>Bid Amount</th>
                            <th>Bid Duration</th>
                            <th>Bid Message</th>
                            <th>Bid Date</th>
                            <th>Delete</th>
                        </tr>
                
                <%
                    String username=session.getAttribute("fusername").toString();
                    String query="select * from bids where freelancerUsername='"+username+"'";
                    DbManager dm=new DbManager();
                    ResultSet rs=dm.select(query);
                    while(rs.next())
                    {
                
                    
                %>
                
                
                <tr>
                
                <td><%= rs.getString("projectId") %></td>
            
                <td><%= rs.getString("clientFullName") %></td>
            
                <td><%= rs.getString("clientUsername") %></td>
            
                <td><%= rs.getString("projectTitle") %></td>
            
                <td><%= rs.getString("projectCategory") %></td>
            
                <td><%= rs.getString("projectDescription") %></td>
            
                <td><%= rs.getString("skillsRequired") %></td>
            
                <td><%= rs.getString("projectBudget") %></td>
            
                <td><%= rs.getString("projectDeadline") %></td>
            
                <td><%= rs.getString("projectPostingDate") %></td>
            
                <td><%= rs.getString("bidAmount") %></td>
            
                <td><%= rs.getString("bidDuration") %></td>
            
                <td><%= rs.getString("bidMessage") %></td>
            
                <td><%= rs.getString("bidDate") %></td>
                
                <td>
                    <a href="deletebid.jsp?id=<%=rs.getString("projectId")%>">
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
        </div>

        <!--bid section ends-->


        <jsp:include page="footer.jsp"/>

    </body>

</html>


<% } %>

