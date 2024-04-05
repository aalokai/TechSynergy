<%-- 
    Document   : clienthome
    Created on : Apr 5, 2024, 6:47:26 PM
    Author     : aalok
--%>

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
        <link href="../css/style.css" rel="stylesheet" />
        <link href="../css/responsive.css" rel="stylesheet" />
        <link href="../css/client.css" rel="stylesheet" />

    </head>

    <body>
        <jsp:include page="header.jsp"/>


        <!--Profile Section start-->

        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-8 col-md-12 col-sm-12">
                    
                    <div class="profile">
                        <div class="profile-img bg-warning text-center">
                            <img src="../images/client.png" alt="client image" style="max-width: 150px;"/>

                        </div>
                        <div class="profile-text bg-info">
                            xfghsedrtrset
                        </div>

                    </div>



                </div>
                <div class="col-lg-4 col-md-12 col-sm-12">



                </div>
            </div>
        </div>

        <!--Profile section end-->







        <jsp:include page="footer.jsp"/>

    </body>

</html>


<% } %>