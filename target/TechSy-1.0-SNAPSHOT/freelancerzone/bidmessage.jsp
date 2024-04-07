<%-- 
    Document   : bidMessage
    Created on : Apr 7, 2024, 2:52:56 PM
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
        <title>Bid Message - Freelancer</title>


        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
              integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
              crossorigin="anonymous" referrerpolicy="no-referrer" />

        <link rel="stylesheet" type="text/css" href="../css/bootstrap.css" />

        <link href="https://fonts.googleapis.com/css?family=Poppins:400,700&display=swap" rel="stylesheet">
        <link href="../css/style.css" rel="stylesheet" type="text/css" />
        <link href="../css/responsive.css" rel="stylesheet" type="text/css"/>
        <link href="../css/freelancer.css" rel="stylesheet" type="text/css"/>

        <script>
            function validateBid() {
                var bidAmount = document.getElementById("bidAmount");
                var bidDuration = document.getElementById("bidDuration");
                var bidMessage = document.getElementById("bidMessage");

                if (bidAmount.value.trim() === "" || bidAmount.value === null) {
                    alert('Please enter bid amount');
                    bidAmount.focus();
                    return false;
                }

                if (bidDuration.value.trim() === "" || bidDuration.value === null) {
                    alert('Please enter bid duration');
                    bidDuration.focus();
                    return false;
                }

                if (bidMessage.value.trim() === "" || bidMessage.value === null) {
                    alert('Please enter a bidMessage');
                    bidMessage.focus();
                    return false;
                }

                // Additional validation can be added here if needed

                // If all validations pass, submit the form
                document.getElementById("frmBid").submit();
            }

        </script>

    </head>

    <body>
        <jsp:include page="header.jsp"/>


        <!--Bid Section start-->


        <div class="container-fluid" style="background-image: linear-gradient(-225deg, #FFFEFF 0%, #D7FFFE 100%);">
            <div class="row">
                <div class="my-5 col-lg-6 col-md-6 col-sm-12 text-center d-none d-md-block d-lg-block">
                    <img src="../images/bid.png" class="img-fluid" alt="login image">
                </div>
                <div class="my-5 col-lg-6 col-md-6 col-sm-12 px-5 pt-lg-4 pt-md-3">
                    <div class="container-fluid rounded bg-light shadow bid-container">

                        <div class="bid-text  p-5">


                            <%
                           String id=request.getParameter("id");
                           String freelancerUsername = session.getAttribute("fusername").toString();
                           String query="select * from projects where id='"+id+"'";
                           DbManager dm=new DbManager();
                           ResultSet rs=dm.select(query);
                          
                           while(rs.next())
                           {
                            %>

                            <h4>Project Title: <%=rs.getString("projectTitle")%></h4>
                            <hr>
                            <table class="table table-striped">
                                <tbody>
                                    <tr>
                                        <td>Project Client:</td>
                                        <td><%= rs.getString("username") %></td>
                                    </tr>

                                    <tr>
                                        <td>Project Category:</td>
                                        <td><%= rs.getString("projectCategory") %></td>
                                    </tr>
                                    <tr>
                                        <td>Project Description:</td>
                                        <td><%= rs.getString("projectDescription") %></td>
                                    </tr>
                                    <tr>
                                        <td>Skills Required:</td>
                                        <td><%= rs.getString("skillsRequired") %></td>
                                    </tr>
                                    <tr>
                                        <td>Project Budget:</td>
                                        <td><%= rs.getString("projectBudget") %></td>
                                    </tr>
                                    <tr>
                                        <td>Project Deadline:</td>
                                        <td><%= rs.getString("projectDeadline") %></td>
                                    </tr>
                                    <tr>
                                        <td>Posting Date:</td>
                                        <td><%= rs.getString("postingDate") %></td>
                                    </tr>
                                </tbody>
                            </table>


                            <%}
                            %>

                            <form id="frmBid" class="form-group" method="post" onsubmit="event.preventDefault();
                                    validateBid();" action="freelancercontroller.jsp">
                                <input type="hidden" name="page" value="submit_bid" />
                                <input type="hidden" name="cid" value="<%=request.getParameter("id")%>" />

                                <div class="mb-4">
                                    <label for="bidAmount" class="form-label">Bid Amount</label>
                                    <input type="text" name="bidAmount" id="bidAmount" placeholder="$500" class="form-control" required />
                                </div>

                                <div class="mb-4">
                                    <label for="bidDuration" class="form-label">Bid Duration</label>
                                    <input type="text" name="bidDuration" id="bidDuration" placeholder="2 months or By YYYY-MM-DD" class="form-control" required />
                                </div>

                                <div class="mb-4">
                                    <label for="bidMessage" class="form-label">Message</label>
                                    <textarea name="bidMessage" id="bidMessage" class="form-control" rows="4" required></textarea>
                                </div>

                                <div class="mb-4">
                                    <button type="submit" class="btn btn-success">Submit Bid</button>
                                </div>
                            </form>
                            <div class="mb-4">
                                <a href="bidprojects.jsp" class="btn btn-link">Back</a>
                            </div>



                        </div>

                    </div>

                </div>
            </div>
        </div>

        <!--bid section ends-->






        <jsp:include page="footer.jsp"/>

    </body>

</html>


<% } %>