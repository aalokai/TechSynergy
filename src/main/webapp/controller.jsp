<%-- 
    Document   : controller
    Created on : Apr 4, 2024, 6:35:29 PM
    Author     : aalok
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="dbpack.DbManager"%>
<%@page import="java.sql.ResultSet"%>
<%
if(request.getParameter("page").equals("register")){
    String fullname = request.getParameter("fullname");
    String username = request.getParameter("username");
    String email = request.getParameter("email");
    String contact_number = request.getParameter("contact_number");
    String password = request.getParameter("password");
    String skills = request.getParameter("skills");
    String usertype = request.getParameter("usertype");
    String gender = request.getParameter("gender");
    String address = request.getParameter("address");
    String country = request.getParameter("country");
    String languages = request.getParameter("languages");
    String bio = request.getParameter("bio");
    String portfolio = request.getParameter("portfolio");

    DbManager dm=new DbManager();
    // Constructing the query1 with proper column names and values
    String query1 = "insert into user_registration (fullname, username, email, contact_number, password, skills, usertype, gender, address, country, languages, bio, portfolio, registration_date) values ('" 
                    + fullname + "','" + username + "','" + email + "','" + contact_number + "','" + password + "','" + skills + "','" + usertype + "','" + gender + "','" + address + "','" + country + "','" + languages + "','" + bio + "','" + portfolio + "', NOW())";
    String query2 = "insert into login_credentials (username, password, usertype, status) values ('" + username + "','" + password + "','" + usertype + "','false')";
    if(dm.insertUpdateDelete(query1)){
        if(dm.insertUpdateDelete(query2)){
            out.print("<script>alert('Registration is done!');window.location.href='registration.jsp';</script>");
        } else {
            out.print("<script>alert('Login credentials insertion failed!');window.location.href='registration.jsp';</script>");
        }
    } else {
        out.print("<script>alert('User registration failed!');window.location.href='registration.jsp';</script>");
    }
}







else if(request.getParameter("page").equals("login")){
    String username=request.getParameter("username");
    String password=request.getParameter("password");
    DbManager dm=new DbManager();
    String query="select * from login_credentials where username='"+username+"' and password='"+password+"'";
    ResultSet rs=dm.select(query);
    if(rs.next()){
        String usertype=rs.getString("usertype");
        if(usertype.equals("admin")){
            session.setAttribute("ausername",username);
            response.sendRedirect("adminzone/adminhome.jsp");
        }
        else if(usertype.equals("freelancer")||usertype.equals("Freelancer")){
            session.setAttribute("fusername",username);
            response.sendRedirect("freelancerzone/freelancerhome.jsp");
        }
        else if(usertype.equals("client")||usertype.equals("Client")){
            session.setAttribute("cusername",username);
            response.sendRedirect("clientzone/clienthome.jsp");
        }
    }
    else{
    out.print("<script>alert('Invalid User or Password');window.location.href='login.jsp';</script>");
    }

}








%>