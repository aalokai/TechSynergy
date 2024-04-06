<%-- 
    Document   : login
    Created on : Apr 4, 2024, 5:45:54 PM
    Author     : aalok
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - TechSynergy</title>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
        integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==="
        crossorigin="anonymous" referrerpolicy="no-referrer" />




    <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />

    <link href="https://fonts.googleapis.com/css?family=Poppins:400,700&display=swap" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet" />
    <link href="css/responsive.css" rel="stylesheet" />
    <script>
        function validate() {
            
            var userid = document.getElementById("userid");
            var password = document.getElementById("password");
            if (username.value === "" || username.value === null) {
                alert('Please enter userid');
                userid.focus();
            }
            else if (password.value === null || password.value === "") {
                alert('Please enter password');
                password.focus();
            }
            else
                document.getElementById("frmlogin").submit();
        }


    </script>

</head>

<body>
    <header>
        <nav class="navbar navbar-expand-lg" style="background-color: #1a2e35; ">
            <div class="container-fluid">
                <a class="navbar-brand" style="color: white;" href="index.jsp">
                    <img src="images/logo.png" style="min-width: 35px;
                            height: 35px;
                            margin-right: 5px;" alt="TechSynergy logo" />
                    <span>
                        TechSynergy
                    </span>
                </a>
            </div>
        </nav>
    </header>

    <!-- Login Section -->
    
    <div class="container-fluid" style="background-image: linear-gradient(-225deg, #FFFEFF 0%, #D7FFFE 100%);">
        <div class="row">
            <div class="my-5 col-lg-6 col-md-6 col-sm-12 text-center d-none d-md-block d-lg-block">
                <img src="images/login.png" class="img-fluid" alt="login image">
            </div>
            <div class="my-5 col-lg-6 col-md-6 col-sm-12 px-5 pt-lg-4 pt-md-3">
                <h3 class="mb-3" style=" text-align: center;">Login Form</h3>
                <form id="frmlogin" class="form-group" method="post" onsubmit="event.preventDefault();validate();" action="controller.jsp">
                    <input type="hidden" name="page" value="login" />
                
                    <div class="mb-3">
                        <label for="username" class="form-label">Enter Username</label>
                        <input type="text" name="username" id="username" class="form-control" />
                    </div>
                
                    <div class="mb-3">
                        <label for="password" class="form-label">Enter Password</label>
                        <input type="password" name="password" id="password" class="form-control" />
                    </div>
                
                    <div class="mb-3">
                        <button type="submit" class="btn btn-success">Login</button>
                    </div>
                
                    <div class="mb-3">
                        <a href="registration.jsp" class="btn btn-link">Signup</a>
                        <a href="#" class="btn btn-link">Forgot Password?</a>
                    </div>
                </form>
                
                
            </div>
        </div>
    </div>

 <!--login section ends-->

    <!-- info section -->

    <section class="info_section ">
        <div class="info_container layout_padding-top">
            <div class="container">
                <div class="info_top">
                    <div class="info_logo">
                        <img src="images/logo.png" alt="" />
                        <span>
                            TechSynergy
                        </span>
                    </div>
                    <div class="social_box">
                        <a href="#">
                            <img src="images/fb.png" alt="">
                        </a>
                        <a href="#">
                            <img src="images/twitter.png" alt="">
                        </a>
                        <a href="#">
                            <img src="images/linkedin.png" alt="">
                        </a>
                        <a href="#">
                            <img src="images/instagram.png" alt="">
                        </a>
                        <a href="#">
                            <img src="images/youtube.png" alt="">
                        </a>
                    </div>
                </div>

                <div class="info_main">
                    <div class="row">
                        <div class="col-md-3 col-lg-2">
                            <div class="info_link-box">
                                <h5>
                                    Useful Link
                                </h5>
                                <ul>
                                    <li class=" active">
                                        <a class="" href="#">Home <span class="sr-only">(current)</span></a>
                                    </li>
                                    <li class="">
                                        <a class="" href="#hire"> Hire</a>
                                    </li>

                                    <li class="">
                                        <a class="" href="#services"> Services </a>
                                    </li>

                                    <li class="">
                                        <a class="" href="#about">About </a>
                                    </li>

                                    <li class="">
                                        <a class="" href="#stats">Stats </a>
                                    </li>

                                    <li class="">
                                        <a class="" href="#testimonials">Testimonials </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-md-3 ">
                            <h5>
                                Offices
                            </h5>
                            <p>
                                Kautilya Hall, New Campus, University of Lucknow, Jankipuram Ext., Lucknow - 226021,
                                Uttar Pradesh
                            </p>
                        </div>

                        <div class="col-md-3 col-lg-2 offset-lg-1">
                            <h5>
                                Information
                            </h5>
                            <p>
                                Readable content of a page when looking at its layoutreadable content of a page when
                                looking at its
                                layout
                            </p>
                        </div>

                        <div class="col-md-3  offset-lg-1">
                            <div class="info_form ">
                                <h5>
                                    Newsletter
                                </h5>
                                <form action="">
                                    <input type="email" placeholder="Email">
                                    <button>
                                        Subscribe
                                    </button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-9 col-md-10 mx-auto">
                        <div class="info_contact layout_padding2">
                            <div class="row">
                                <div class="col-md-3">
                                    <a href="#" class="link-box">
                                        <div class="img-box">
                                            <img src="images/location.png" alt="">
                                        </div>
                                        <div class="detail-box">
                                            <h6>
                                                Location
                                            </h6>
                                        </div>
                                    </a>
                                </div>
                                <div class="col-md-4">
                                    <a href="#" class="link-box">
                                        <div class="img-box">
                                            <img src="images/mail.png" alt="">
                                        </div>
                                        <div class="detail-box">
                                            <h6>
                                                contact@techsynergy.com
                                            </h6>
                                        </div>
                                    </a>
                                </div>
                                <div class="col-md-5">
                                    <a href="#" class="link-box">
                                        <div class="img-box">
                                            <img src="images/call.png" alt="">
                                        </div>
                                        <div class="detail-box">
                                            <h6>
                                                Call +91 1234567890
                                            </h6>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </section>

    <!-- end info section -->

    <!-- footer section -->
    <footer class="container-fluid footer_section ">
        <div class="container">
            <p>
                &copy; <span id="displayDate"></span> All Rights Reserved By
                TechSynergy. Made with &hearts; by Aalok Tiwari
            </p>

        </div>
    </footer>
    <!-- end  footer section -->


    <script src="js/jquery-3.4.1.min.js"></script>
    <script src="js/custom.js"></script>

    <script src="js/bootstrap.bundle.js"></script>

</body>

</html>
