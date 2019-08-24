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

            <form method="post" action="UploadServlet" enctype="multipart/form-data">
Upload the following (in jpg format):
 <table>
                <tr><td>Upload Image:</td><td><input type="file" name="image" required/></td></tr>
                <tr><td>Upload fingerprint:</td><td><input type="file" name="finger_print" required/></td></tr>
                <tr><td>Upload Proof of Identity :</td><td><input type="file" name="poi" required/></td></tr>
                <tr><td>Upload Proof of Date of Birth:</td><td><input type="file" name="pob" required/></td></tr>
                <tr><td>upload Proof of Address:</td><td><input type="file" name="poa" required/></td></tr>
               
                <tr><td><input type="submit" value="upload"></td></tr>
 </table>
</form></fieldset>
    </body>
</html>