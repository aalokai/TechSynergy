<%-- 
    Document   : messages
    Created on : Apr 7, 2024, 2:55:00 PM
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
        <title>Messages - Client</title>


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


        <!--Inbox Section start-->

        <div class="container-fluid" style="background-image: linear-gradient(-225deg, #FFFEFF 0%, #D7FFFE 100%);">


                <div class="row">
                    <div class="col-lg-8 offset-lg-2">
                        <div class="bg-light rounded shadow p-3 my-5" >
                            <h5 class="mb-3 text-center">Chat History</h5>
                            <div id="chatHistoryContainer" class="p-2 chathistory border border-body-tertiary rounded " style="height: 300px; overflow-y: scroll; background-color: white;">
                                <% 
                                    DbManager dm=new DbManager();
                                    String query = "SELECT * FROM messages";
                                    String username=request.getParameter("username");
                                    ResultSet rs = dm.select(query);

                                    while(rs.next()) {
                                        String senderUsername = rs.getString("senderUsername");
                                        String recipientUsername = rs.getString("recipientUsername");
                                        String message = rs.getString("message");
                                        String sentAt = rs.getString("sentAt");
                                %>
                                    <div class="message">
                                        <p><strong><%= senderUsername %> &#8608; <%= recipientUsername %>:</strong> <%= message %></p>
                                        <p><small><%= sentAt %></small></p>
                                    </div>
                                <% } %>
                            </div>
                            <script>
                                // Scroll chat history container to bottom
                                var chatHistoryContainer = document.getElementById("chatHistoryContainer");
                                chatHistoryContainer.scrollTop = chatHistoryContainer.scrollHeight;
                                </script>
                            
                            <br/>
                            <h5 class="mt-4 mb-3 text-center">Send Message</h5>
                            <form id="sendMessageForm" class="form-group" method="post" action="freelancercontroller.jsp">
                                <input type="hidden" name="page" value="send_message" />
                                <div class="mb-3">
                                    <label for="recipientUsername" class="form-label">Send To</label>
                                    <input type="text" name="recipientUsername" id="recipientUsername" class="form-control" value="<%= request.getParameter("id") != null ? request.getParameter("id") : "" %>" placeholder="Username" required />
                                </div>
                                <div class="mb-3">
                                    <label for="message" class="form-label">Message</label>
                                    <textarea name="message" id="message" class="form-control" rows="6" required></textarea>
                                </div>
                                <div class="mb-3">
                                    <button type="submit" class="btn btn-primary">Send</button>
                                </div>
                                
                            </form>
                        </div>
                    </div>
                </div>
           



        </div>

        <!--Inbox section end-->




        <jsp:include page="footer.jsp"/>

    </body>

</html>


<% } %>