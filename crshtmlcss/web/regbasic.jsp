<%-- 
    Document   : regbasic
    Created on : Sep 24, 2014, 8:38:32 AM
    Author     : Chirayu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Civil Registry System</title>
        <link href="css/btn.css" rel="stylesheet" type="text/css">
        <link href="css/menuTemplate2.css" rel="stylesheet" type="text/css">
        <link href="css/style1.css" rel="stylesheet" type="text/css">
        <link href="css/1/js-image-slider.css" rel="stylesheet" type="text/css">
        <script src="css/1/js-image-slider.js"></script>
    </head>
    <body background="images/background.jpg">
        <img src="images/logo.png" style="margin-left: 20%; margin-top: 1%"/>
        <br>
       <ul class="menuTemplate2 decor2_1" style="margin-left:12.5%; border:#CCC; background:#CCC">
    <li><a href="index.jsp">Home</a></li>
    <li class="separator"></li>
    <li><a href="regbasic.jsp">Register</a></li>
    <li class="separator"></li>
    <li><a href="appstatus.jsp">Application Status</a></li>
    <li class="separator"></li>
    <li><a href="faq.jsp"> F.A.Q.s</a></li>
    <li class="separator"></li>
    <li><a href="contactus.jsp">Contact Us</a></li>
    <li class="separator"></li>
    </ul>
        <br>
        <br>
        <br>
         <fieldset  style=" margin-left: 12.5%; margin-right: 12.5%; background-color: #cccccc">
<legend>Enter your basic information</legend>
<form action="insert.jsp">
            <table>
                <tr><td>F_Name:</td><td><input type="text" name="fname" required/></td></tr>
                <tr><td>M_Name:</td><td><input type="text" name="mname" required/></td></tr>
                <tr><td>L_Name:</td><td><input type="text" name="lname" required/></td></tr>
                <tr><td>Salutation:</td><td><input type="text" name="salutation" required></td></tr>
                <tr><td>Date of Birth:</td><td><input type="date" name="dob" required></td></tr>
                <tr><td><input type="submit" value="submit"></td></tr>
            </table>
        </form></fieldset>
    </body>
</html>