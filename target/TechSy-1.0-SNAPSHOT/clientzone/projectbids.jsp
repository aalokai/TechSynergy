<%-- 
    Document   : projectbids
    Created on : Apr 7, 2024, 2:56:11 PM
    Author     : aalok
--%>

<%@page import="dbpack.DbManager"%>
<%@page import="java.sql.ResultSet"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
if(session.getAttribute("cusername")==null)
{
response.sendRedirect("../login.jsp");
}
else{

  
    
%>




<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Project Bids - Client</title>


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


        <!--My Projects Table Section start-->

        <div class="container-fluid " style="background-image: linear-gradient(-225deg, #FFFEFF 0%, #D7FFFE 100%);" >
            <div class="row p-5">
                <h2 class="mb-4" style="text-align: center;">Project Details</h2>

                <% 
                String username=session.getAttribute("cusername").toString();
                String query="select * from bids where clientUsername='"+username+"' ORDER BY bidDate DESC;";
                DbManager dm=new DbManager();
                ResultSet rs=dm.select(query);
                while(rs.next()) {
                %>
                <div >
                    <div class="bid-item mb-4 bg-light rounded shadow ">
                        <div class=" row  p-4 bid-item-details ">
                            <h4><strong>Project Id:</strong> <%= rs.getString("projectId") %><br></h4>
                            <hr >

                            <div class="div-text col-sm-12 col-md-4 col-lg-4">
                                <p>
                                    <strong>Project Title:</strong> <%= rs.getString("projectTitle") %><br>
                                    <strong>Project Category:</strong> <%= rs.getString("projectCategory") %><br>
                                    <strong>Project Description:</strong> <%= rs.getString("projectDescription") %><br>
                                    <strong>Skills Required:</strong> <%= rs.getString("skillsRequired") %><br>
                                    <strong>Project Budget:</strong> <%= rs.getString("projectBudget") %><br>
                                    <strong>Project Deadline:</strong> <%= rs.getString("projectDeadline") %><br>
                                    <strong>Project Posting Date:</strong> <%= rs.getString("projectPostingDate") %>
                                </p>
                            </div>
                            <div class="div-text col-sm-12 col-md-4 col-lg-4">
                                <p>
                                    <strong>Freelancer Name:</strong> <%= rs.getString("freelancerFullName") %><br>
                                    <strong>Freelancer Username:</strong> <%= rs.getString("freelancerUsername") %><br>
                                    <strong>Freelancer Email:</strong> <%= rs.getString("freelancerEmail") %><br>
                                    <strong>Freelancer Contact No.:</strong> <%= rs.getString("freelancerContactNumber") %><br>
                                    <strong>Freelancer Skills:</strong> <%= rs.getString("freelancerSkills") %><br>
                                    <strong>Freelancer Language:</strong> <%= rs.getString("freelancerLanguage") %><br>
                                    <strong>Freelancer Bio:</strong> <%= rs.getString("freelancerBio") %><br>
                                    <strong>Freelancer Portfolio:</strong> <%= rs.getString("freelancerPortfolio") %>

                                </p>

                            </div>
                            <div class="div-text col-sm-12 col-md-4 col-lg-4">
                                <p>
                                    <strong>Bid Amount:</strong> <%= rs.getString("bidAmount") %><br>
                                    <strong>Bid Duration:</strong> <%= rs.getString("bidDuration") %><br>
                                    <strong>Bid Message:</strong> <%= rs.getString("bidMessage") %><br>
                                    <strong>Bid Date:</strong> <%= rs.getString("bidDate") %>
                                </p>
                                <div>
                                <a href="messages.jsp?id=<%= rs.getString("freelancerUsername") %>" class="me-1">
                                    <button class="btn btn-success">Reward Project</button>
                                </a>
                                    
                                <!-- Delete Bid Button -->
                                <a href="deletebid.jsp?id=<%= rs.getString("projectId") %>" class="ms-1">
                                    <button class="btn btn-danger  ">Delete Bid</button>
                                </a>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
                <%}%>
            </div>
        </div>




        <!--My Projects Table Section start-->


        <jsp:include page="footer.jsp"/>

    </body>

</html>


<% } %>
