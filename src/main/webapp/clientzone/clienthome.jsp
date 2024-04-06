<%-- 
    Document   : clienthome
    Created on : Apr 5, 2024, 6:47:26 PM
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
        <title>Home - Client</title>


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


        <!--Profile Section start-->

        <div class="container-fluid" style="min-height: 500px;">
            <div class="row" >
                <div class="col-lg-8 col-md-12 col-sm-12" >

                    <div class="profile m-4 rounded shadow">
                        <div class="profile-img  p-5 text-center d-none d-md-block d-lg-block">
                            <img src="../images/client.png" alt="client image" style="max-width: 150px;"/>

                        </div>
                        <div class="profile-text bg-light p-5">
                            <%
                           String username=session.getAttribute("cusername").toString();
                           String query="select * from user_registration where username='"+username+"'";
                           DbManager dm=new DbManager();
                           ResultSet rs=dm.select(query);
                           while(rs.next())
                           {
                            %>

                            <h3>Name: <%=rs.getString("fullname")%></h3>
                            <h4>Username: @<%=rs.getString("username")%></h4>
                            <p>

                                Gender: <%=rs.getString("gender")%>
                                <br/>
                                Bio: <%=rs.getString("bio")%>
                                <br/>
                                Portfolio: <%=rs.getString("portfolio")%>
                            </p> 


                        </div>

                    </div>



                </div>
                <div class="col-lg-4 col-md-12 col-sm-12">

                    <div class="address m-4 rounded shadow">

                        <div class="address-text bg-light p-5">

                            <h4>Personal Details &darr;</h4>

                            <p>

                                Languages: <%=rs.getString("languages")%>

                                <br/>

                                Email: <%=rs.getString("email")%>
                                <br/>
                                Phone: <%=rs.getString("contact_number")%>
                                <br/>
                                Address: <%=rs.getString("address")%>
                                <br/>
                                Country: <%=rs.getString("country")%>

                            </p> 

                            <%
                            }
                            %>
                        </div>

                    </div>



                </div>
            </div>
        

        <!--Profile section end-->
        
        <!--Post a project button-->
        
        <div class="my-3 text-center">
            <a class="btn btn-danger" href="projectform.jsp" role="button">Post a Project</a>
            
        </div>




        </div>
        <jsp:include page="footer.jsp"/>

    </body>

</html>


<% } %>