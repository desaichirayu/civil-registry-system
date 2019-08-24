<%@page import="java.io.Writer"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%-- 
    Document   : index
    Created on : Aug 18, 2014, 12:14:17 AM
    Author     : Chirayu
--%>


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
        <%  
            String fname=request.getParameter("fname");
            String mname=request.getParameter("mname");
            String lname=request.getParameter("lname");
            String salutation=request.getParameter("salutation");
            String dob=request.getParameter("dob");
            int a=(int) (Math.round(Math.random()*89999)+10000);
            
            String id= fname.charAt(0)+mname.charAt(0)+lname.charAt(0)+dob.substring(0,4)+dob.substring(5,7)+dob.substring(8) + a;
            
            try{
            com.UpdateDb_Service s1 =new com.UpdateDb_Service();
            com.UpdateDb s2=s1.getUpdateDbPort();
            String a1=s2.insBasicinfo(id, fname, mname, lname, salutation, dob);
            out.println(a1);
            }catch(Exception err)
            {
                out.println(err.toString());
            }
            Cookie ID = new Cookie("id1",id); 
            response.addCookie(ID);  
            Cookie cookie = null;
            Cookie[] cookies = null;
            cookies = request.getCookies();
            if( cookies != null )
            {
                for (int i = 0; i < cookies.length; i++)
                {
                    cookie = cookies[i];
                    if(cookie.getName().equals("id1"))
                    {
                       // out.print(cookie.getValue());
                    }
                }
            }
            else
            {
            out.println("<h2>No cookies founds</h2>");
            }
            
        %>
        <fieldset  style=" margin-left: 12.5%; margin-right: 12.5%; background-color: #cccccc">
        <form action="pinfaddr.jsp">
            <input type="submit" value="proceed further">
        </form>
            </fieldset>
    </body>
</html>