<%-- 
    Document   : insertdata.jsp
    Created on : Oct 16, 2014, 2:33:06 AM
    Author     : umang desai
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
    <li><a href="superviosr zone.jsp">Supervisor Zone</a></li>
    <li class="separator"></li>
    <li><a href="faq.jsp"> F.A.Q.s</a></li>
    <li class="separator"></li>
    <li><a href="contactus.jsp">Contact Us</a></li>
    <li class="separator"></li>
    </ul>
        <br><br>
        <%
            String id=null;
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
                        id=(cookie.getValue());
                        //out.print(id);
                    }
                }
            }
            else
            {
            out.println("<h2>No cookies founds</h2>");
            }
            
            String ofname=request.getParameter("ofname");
            String omname=request.getParameter("omname");
            String olname=request.getParameter("olname");
            String osal=request.getParameter("osalutation");
            String orel=request.getParameter("orelation");
            String hno=request.getParameter("hno");
            String street=request.getParameter("street");
            String landmark=request.getParameter("landmark");
            String area=request.getParameter("area");
            String city=request.getParameter("city");
            String district=request.getParameter("district");
            String state=request.getParameter("state");
            String pincode=request.getParameter("pincode");
            com.UpdateDb_Service s1=new com.UpdateDb_Service();
            com.UpdateDb s2=s1.getUpdateDbPort();
            String err=s2.insAddress(id,ofname, omname, olname, osal, orel, hno, street,landmark,
               area, city, district, state, pincode);
            out.println(err);
        %>
    <fieldset  style=" margin-left: 12.5%; margin-right: 12.5%; background-color: #cccccc">
        Proceed to Document Upload ?
        <form action="upload.jsp">
            <input type="submit" value="Yes"/>
        </form>
    </fileldset>
    </body>
</html>
