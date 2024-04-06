<%-- 
    Document   : myprojects
    Created on : Apr 6, 2024, 10:45:47 PM
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
        <title>My Projects - Client</title>


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
        
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-12 my-5" style="min-height: 500px;">
                    <h2 class="mb-4" style="text-align: center;">My Projects</h2>
                    <table class="table table-bordered table-striped " style="margin: auto;width: 90%">
                        <tr class="text-center table-dark">
                            <th>Id.No</th>
                            <th>Project Title</th>
                            <th>Project Category</th>
                            <th>Project Description</th>
                            <th>Skills Required</th>
                            <th>Project Budget</th>
                            <th>Project Deadline</th>
                            <th>Posting Date</th>
                            <th>Delete</th>
                        </tr>
                        <%
                        String username=session.getAttribute("cusername").toString();
                            String query="select * from projects where username='"+username+"'";
                            DbManager dm=new DbManager();
                            ResultSet rs=dm.select(query);
                        while(rs.next()){
                        
                        %>
                        <tr>
                            <td><%=rs.getString("id")%></td>
                            <td><%=rs.getString("projectTitle")%></td>
                            <td><%=rs.getString("projectCategory")%></td>
                            <td><%=rs.getString("projectDescription")%></td>
                            <td><%=rs.getString("skillsRequired")%></td>
                            <td><%=rs.getString("projectBudget")%></td>
                            <td><%=rs.getString("projectDeadline")%></td>
                            <td><%=rs.getString("postingDate")%></td>
                            <td>
                                <a href="deleteproject.jsp?id=<%=rs.getString("id")%>">
                                    <button class="btn btn-danger">
                                        Delete
                                    </button>
                                </a>
                            </td>
                            
                        </tr>
                        
                        
                        
                        
                        <% } %>
                    </table>
                    
                    
                    
                    
                </div>
            </div>
            
        </div>
        
        
        
        <!--My Projects Table Section start-->


        <jsp:include page="footer.jsp"/>

    </body>

</html>


<% } %>
