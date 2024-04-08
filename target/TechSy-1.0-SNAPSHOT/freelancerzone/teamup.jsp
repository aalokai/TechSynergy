<%-- 
    Document   : teamup
    Created on : Apr 7, 2024, 2:51:51 PM
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
        <title>TeamUp - Freelancer</title>


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

        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-12 my-5" style="min-height: 500px;">
                    <h2 class="mb-4" style="text-align: center;">Freelancers</h2>
                    <table class="table table-bordered table-striped" style="margin: auto; width: 90%">
                        <tr class="text-center table-dark">
                            <th>Id.No</th>
                            <th>Full Name</th>
                            <th>Username</th>
                            <th>Email</th>
                            <th>Contact Number</th>
                            <th>Skills</th>
                            
                            <th>Gender</th>
                            <th>Address</th>
                            <th>Country</th>
                            <th>Languages</th>
                            <th>Bio</th>
                            <th>Portfolio</th>
                            <th>Message</th>
                            
                            
                        </tr>
                        <% 
                        String username=session.getAttribute("fusername").toString();
                        String query = "SELECT * FROM user_registration WHERE usertype = 'Freelancer'";

                        DbManager dm = new DbManager();
                        ResultSet rs = dm.select(query);
                        while (rs.next()) {
                        %>
                        <tr>
                            <td><%= rs.getString("id") %></td>
                            <td><%= rs.getString("fullname") %></td>
                            <td><%= rs.getString("username") %></td>
                            <td><%= rs.getString("email") %></td>
                            <td><%= rs.getString("contact_number") %></td>
                            <td><%= rs.getString("skills") %></td>
                            
                            <td><%= rs.getString("gender") %></td>
                            <td><%= rs.getString("address") %></td>
                            <td><%= rs.getString("country") %></td>
                            <td><%= rs.getString("languages") %></td>
                            <td><%= rs.getString("bio") %></td>
                            <td><%= rs.getString("portfolio") %></td>
                            <td>
                                <a href="messages.jsp?id=<%=rs.getString("username")%>">
                                    <button class="btn btn-success" ">
                                        Message
                                    </button>
                                </a>
                            </td>
                        </tr>
                        <% } %>
                    </table>
                </div>
            </div>
        </div>




        <jsp:include page="footer.jsp"/>

    </body>

</html>


<% } %>

