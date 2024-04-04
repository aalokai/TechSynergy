<%-- 
    Document   : registration
    Created on : Apr 4, 2024, 5:45:44 PM
    Author     : aalok
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration - TechSynergy</title>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
        integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />




    <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />

    <link href="https://fonts.googleapis.com/css?family=Poppins:400,700&display=swap" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet" />
    <link href="css/responsive.css" rel="stylesheet" />
    <script>
        function validate() {
    var username = document.getElementById("username");
    var email = document.getElementById("email");
    var password = document.getElementById("password");
    var confirm_password = document.getElementById("confirm_password");
    var fullname = document.getElementById("fullname");
    var usertype = document.getElementById("usertype");
    var gender = document.getElementById("gender");
    var contact_number = document.getElementById("contact_number");
    var skills = document.getElementById("skills");
    var address = document.getElementById("address");
    var country = document.getElementById("country");
    var languages = document.getElementById("languages");
    var education = document.getElementById("education");
    var portfolio = document.getElementById("portfolio");
    var terms_of_service = document.getElementById("terms_of_service");
    var privacy_policy = document.getElementById("privacy_policy");

    if (username.value.trim() == "") {
        alert('Please enter username');
        username.focus();
        return false;
    }
    if (email.value.trim() == "") {
        alert('Please enter email');
        email.focus();
        return false;
    }
    if (password.value.trim() == "") {
        alert('Please enter password');
        password.focus();
        return false;
    }
    if (confirm_password.value.trim() == "") {
        alert('Please confirm password');
        confirm_password.focus();
        return false;
    }
    if (password.value.trim() != confirm_password.value.trim()) {
        alert('Passwords do not match');
        confirm_password.focus();
        return false;
    }
    if (fullname.value.trim() == "") {
        alert('Please enter full name');
        fullname.focus();
        return false;
    }
    if (usertype.value.trim() == "") {
        alert('Please select user type');
        usertype.focus();
        return false;
    }
    if (gender.value.trim() == "") {
        alert('Please select gender');
        gender.focus();
        return false;
    }
    if (contact_number.value.trim() == "") {
        alert('Please enter contact number');
        contact_number.focus();
        return false;
    }
    if (skills.value.trim() == "") {
        alert('Please enter skills/expertise');
        skills.focus();
        return false;
    }
    if (address.value.trim() == "") {
        alert('Please enter address');
        address.focus();
        return false;
    }
    if (country.value.trim() == "") {
        alert('Please enter country/region');
        country.focus();
        return false;
    }
    if (languages.value.trim() == "") {
        alert('Please enter languages');
        languages.focus();
        return false;
    }
    if (education.value.trim() == "") {
        alert('Please enter education/qualifications');
        education.focus();
        return false;
    }
    if (portfolio.value.trim() == "") {
        alert('Please enter portfolio/projects');
        portfolio.focus();
        return false;
    }
    if (!terms_of_service.checked) {
        alert('Please agree to the Terms of Service by checking the box');
        return false;
    }
    if (!privacy_policy.checked) {
        alert('Please agree to the Privacy Policy by checking the box');
        return false;
    }

    // If all validations pass, submit the form
    document.getElementById("frmregister").submit();
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

    <!-- Registration Section -->

    <div class="container-fluid" style="background-image: linear-gradient(-225deg, #2CD8D5 0%, #C5C1FF 56%, #FFBAC3 100%);">
        <div class="row justify-content-center" >

            <div class="col-md-8 col-lg-6 my-5 px-5 pt-lg-5 pt-md-4 ">
                <h3 class="mb-3" style=" text-align: center;">Registration Form</h3>
                <form id="frmregister" class="form-group " method="post"
                    onsubmit="event.preventDefault();validate();" action="controller.jsp">
                    <input type="hidden" name="page" value="register" />

                    <div class="mb-3">
                        <label for="fullname" class="form-label">Full Name</label>
                        <input type="text" name="fullname" id="fullname" class="form-control" required />
                    </div>

                    <div class="mb-3">
                        <label for="username" class="form-label">Username</label>
                        <input type="text" name="username" id="username" class="form-control" required />
                    </div>

                    <div class="mb-3">
                        <label for="email" class="form-label">Email Address</label>
                        <input type="email" name="email" id="email" class="form-control" required />
                    </div>

                    <div class="mb-3">
                        <label for="contact_number" class="form-label">Contact Number</label>
                        <input type="number" name="contact_number" id="contact_number" class="form-control" required />
                    </div>

                    <div class="mb-3">
                        <label for="password" class="form-label">Password</label>
                        <input type="password" name="password" id="password" class="form-control" required />
                    </div>

                    <div class="mb-3">
                        <label for="confirm_password" class="form-label">Confirm Password</label>
                        <input type="password" name="confirm_password" id="confirm_password" class="form-control"
                            required />
                    </div>

                    <div class="mb-3">
                        <label for="skills" class="form-label">Skills/Expertise</label>
                        <input type="text" name="skills" id="skills" class="form-control" required />
                    </div>

                    <div class="mb-3">
                        <label for="usertype" class="form-label">User Type</label>
                        <select name="usertype" id="usertype" class="form-control" required>
                            <option value="">Select User Type</option>
                            <option value="client">Client</option>
                            <option value="freelancer">Freelancer</option>
                        </select>
                    </div>

                    <div class="mb-3">
                        <label for="gender" class="form-label">Gender</label>
                        <select name="gender" id="gender" class="form-control" required>
                            <option value="">Select Gender</option>
                            <option value="male">Male</option>
                            <option value="female">Female</option>
                            <option value="other">Other</option>
                        </select>
                    </div>

<!--                    <div class="mb-3">
                        <label for="profile_picture" class="form-label">Profile Picture</label>
                        <input type="file" name="profile_picture" id="profile_picture" class="form-control"
                            accept="image/*" />
                    </div>-->

                    <div class="mb-3">
                        <label for="address" class="form-label">Address</label>
                        <input type="text" name="address" id="address" class="form-control" required />
                    </div>

                    <div class="mb-3">
                        <label for="country" class="form-label">Country/Region</label>
                        <input type="text" name="country" id="country" class="form-control" required />
                    </div>

                    <div class="mb-3">
                        <label for="languages" class="form-label">Languages</label>
                        <input type="text" name="languages" id="languages" class="form-control" required/>
                    </div>

                    <div class="mb-3">
                        <label for="education" class="form-label">Education/Qualifications</label>
                        <textarea name="education" id="education" class="form-control" rows="3" required></textarea>
                    </div>

                    <div class="mb-3">
                        <label for="portfolio" class="form-label">Portfolio/Projects</label>
                        <input type="text" name="portfolio" id="portfolio" class="form-control" required />
                    </div>

                    <div class="mb-3 form-check">
                        <input type="checkbox" name="terms_of_service" id="terms_of_service" class="form-check-input"
                            required />
                        <label for="terms_of_service" class="form-check-label">I agree to the Terms of Service</label>
                    </div>

                    <div class="mb-3 form-check">
                        <input type="checkbox" name="privacy_policy" id="privacy_policy" class="form-check-input"
                            required />
                        <label for="privacy_policy" class="form-check-label">I agree to the Privacy Policy</label>
                    </div>

                    <div class="mb-3">
                        <button type="submit" class="btn btn-primary">Register</button>
                    </div>

                    <div class="mb-5">
                        <a href="login.jsp" class="btn btn-link">Already have an account? Login</a>
                    </div>
                </form>




            </div>

            


        </div>
    </div>



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


    <script src="js/bootstrap.bundle.js"></script>

</body>

</html>
