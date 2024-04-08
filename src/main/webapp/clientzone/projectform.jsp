<%-- 
    Document   : projectform
    Created on : Apr 6, 2024, 6:12:06 PM
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
        <title>Post Project - TechSynergy</title>


        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
              integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==="
              crossorigin="anonymous" referrerpolicy="no-referrer" />

        <link rel="stylesheet" type="text/css" href="../css/bootstrap.css" />

        <link href="https://fonts.googleapis.com/css?family=Poppins:400,700&display=swap" rel="stylesheet">
        <link href="../css/style.css" rel="stylesheet" type="text/css" />
        <link href="../css/responsive.css" rel="stylesheet" type="text/css"/>
        <link href="../css/client.css" rel="stylesheet" type="text/css"/>
        <script>
            
            
            function validate() {
                var projectTitle = document.getElementById("projectTitle");
                var projectCategory = document.getElementById("projectCategory");
                var projectDescription = document.getElementById("projectDescription");
                var skillsRequired = document.getElementById("skillsRequired");
                var projectBudget = document.getElementById("projectBudget");
                var projectDeadline = document.getElementById("projectDeadline");

                if (projectTitle.value === "" || projectTitle.value === null) {
                    alert('Please enter project title');
                    projectTitle.focus();

                }
                else if (projectCategory.value === "" || projectCategory.value === null) {

                    alert('Please enter project category');

                    projectCategory.focus();

                }
                else if (projectDescription.value === "" || projectDescription.value === null) {
                    alert('Please enter project description');
                    projectDescription.focus();

                }
                else if (skillsRequired.value === "" || skillsRequired.value === null) {
                    alert('Please enter required skills');
                    skillsRequired.focus();

                }
                else if (projectBudget.value === "" || projectBudget.value === null) {
                    alert('Please enter project budget');
                    projectBudget.focus();

                }
                else if (projectDeadline.value === "" || projectDeadline.value === null) {
                    alert('Please select project deadline');
                    projectDeadline.focus();

                }


                // Additional validation can be added here if needed

                // If all validations pass, submit the form
                else
                document.getElementById("frmPostProject").submit();
            }

            


        </script>
    </head>

    <body>
        <jsp:include page="header.jsp"/>


        <!--Project form start -->

        <div class="container-fluid" style="background-image: linear-gradient(-225deg, #FFFEFF 0%, #D7FFFE 100%);">
            <div class="row">
                <div class="my-5 col-lg-6 col-md-6 col-sm-12 text-center d-none d-md-block d-lg-block">
                    <img src="../images/postproject.png" class="img-fluid" alt="post project image">
                </div>
                <div class="my-5 col-lg-6 col-md-6 col-sm-12 px-5 pt-lg-4 pt-md-3">
                    <h3 class="mb-4" style=" text-align: center;">Project Form</h3>
                    <form id="frmPostProject" class="form-group"  method="post" onsubmit="event.preventDefault();validate();" action="clientcontroller.jsp">
                        <input type="hidden" name="page" value="post_project" />

                        <div class="mb-4">
                            <label for="projectTitle" class="form-label">Project Title</label>
                            <input type="text" name="projectTitle" id="projectTitle" class="form-control" required />
                        </div>

                        <div class="mb-4">
                            <label for="projectCategory" class="form-label">Project Category</label>
                            <input type="text" name="projectCategory" placeholder="Web Development, Graphic Design, ..." id="projectCategory" class="form-control" required/>
                        </div>

                        <div class="mb-4">
                            <label for="projectDescription" class="form-label">Project Description</label>
                            <textarea name="projectDescription" id="projectDescription" class="form-control" rows="4" required></textarea>
                        </div>

                        <div class="mb-4">
                            <label for="skillsRequired" class="form-label">Skills Required</label>
                            <input type="text" name="skillsRequired" id="skillsRequired" class="form-control" required />
                        </div>

                        <div class="mb-4">
                            <label for="projectBudget" class="form-label">Project Budget</label>
                            <input type="text" name="projectBudget" id="projectBudget" class="form-control" required />
                        </div>

                        <div class="mb-5">
                            <label for="projectDeadline" class="form-label">Project Deadline</label>
                            <input type="text" placeholder="YYYY/MM/DD" name="projectDeadline" id="projectDeadline" class="form-control" required />
                        </div>


                        <div class="mb-4">
                            <button type="submit" class="btn btn-success">Submit Project</button>
                        </div>
                    </form>
                    <div class="mb-4">
                                <a href="clienthome.jsp" class="btn btn-link">Back</a>
                            </div>



                </div>
            </div>
        </div>




        <!--project form end-->







        <jsp:include page="footer.jsp"/>

    </body>

</html>

<% } %>