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
    <li><a href="superviosr zone.jsp">Supervisor Zone</a></li>
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

            <form action="insertdata.jsp">
                <br>
    Enter your basic information :
    <br>
    <br>
            <table>
                <tr><td>Father's Name:</td><td><input type="text" name="fr_name" required/></td></tr>
                <tr><td>Mother's Name:</td><td><input type="text" name="mr_name" required/></td></tr>
                <tr><td>Husband's Name:</td><td><input type="text" name="h_name" required/></td></tr>
                <tr><td>wife's Name:</td><td><input type="text" name="W_name" required/></td></tr>
                <tr><td>Mobile Number:</td><td><input type="text" name="W_name" required/></td></tr>
                <tr><td>Email:</td><td><input type="email" name="email" required/></td></tr>
                <tr><td>Proof of Identity:</td><td><input type="text" name="poi" required/></td></tr>
                <tr><td>Proof of Address:</td><td><input type="text" name="poa" required/></td></tr>
                <tr><td>Proof of Date of Birth:</td><td><input type="text" name="pob" required/></td></tr>
                <tr><td>Data Sharing Consent:</td><td><input type="text" name="dsc" required/></td></tr>
                <tr><td>Bank Information Linking Consent :</td><td><input type="text" name="blc" required/></td></tr>
         
            </table>
                    <br>
    Enter your Address information :
    <br>
    <br>
            <table>
                <tr><td>Owner's First Name:</td><td><input type="text" name="ofname" required/></td></tr>
                <tr><td>owner's Middle Name:</td><td><input type="text" name="omname" required/></td></tr>
                <tr><td>owner's last Name:</td><td><input type="text" name="olname" required/></td></tr>
                <tr><td>owner's salutation:</td><td><input type="text" name="osalutation" required/></td></tr>
                <tr><td>Owner's relation:</td><td><input type="text" name="orelation" required/></td></tr>
                <tr><td>House name:</td><td><input type="text" name="hname" required/></td></tr>
                <tr><td>Street:</td><td><input type="text" name="street" required/></td></tr>
                <tr><td>Landmark:</td><td><input type="text" name="landmark" required/></td></tr>
                <tr><td>Area:</td><td><input type="text" name="area" required/></td></tr>
                <tr><td>City:</td><td><input type="text" name="city" required/></td></tr>
                <tr><td>District:</td><td><input type="text" name="district" required/></td></tr>
                <tr><td>State:</td><td><input type="text" name="state" required/></td></tr>
                <tr><td>Pincode:</td><td><input type="text" name="pincode" required/></td></tr>
                <tr><td><input type="submit" value="submit"></td></tr>
            </table>
    <br>
        </form></fieldset>
    </body>
</html>