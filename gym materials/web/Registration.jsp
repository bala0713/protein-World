<%--    
    Document   : Registration
    Created on : Sep 11, 2021, 12:08:39 PM
    Author     : sys
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <jsp:include page="header.jsp"></jsp:include>
    <jsp:include page="Template.jsp"></jsp:include>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="background-image:url('pro/powder.jpg'); background-size: 30%">
       <div align="center">
        <form action="registrationdao" method="post">
            <table style="border: solid black; border-spacing: 18px; width: 23%; opacity: 1; background-color: white">
                <tr><td>
                        <h1 style="color: orangered">Registration</h1>
                        user Name:<br><input type="text" name="username" value="" requrid="" autofocus=""/><br><br/>
                      
                        E-Mail:<br/><input type="text" name="email" value="" required="" /><br/><br/>
                      
                        Password:<br><input type="password" name="npass" value=""required=""/><br><br>
                        
                        Retype Password:<br><input type="password" name="rpass" value="" required=""/><br><br>
                        
                        Address:<br><textarea name="Address" rows="2" cols="20" required=""></textarea><br><br>
                        
                        phone:<br><input type="text" name="phone" value=""/><br><br>
                        
                        <input type="submit" value="submit" />&nbsp;&nbsp;
                        <input type="reset" value="Reset" /><br><br>
                        <a href="login.jsp" style="colour: orangered"> Go Back To Login Page</a>
                    </td></tr>
            </table>
        </form>
        </div>
    <jsp:include page="footer.jsp"></jsp:include>
</html>