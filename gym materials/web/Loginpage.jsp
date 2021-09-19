<%-- 
    Document   : Loginpage
    Created on : Sep 8, 2021, 1:30:10 PM
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
    <body style="background-image: url('pro/1.jpg'); background-size: 45%">
    <center>    
        <form action="loginDao" method="POST">
            <table style="border: solid white; border-spacing: 15px; opacity: 1; background-color: white">
                <tr><td> 
                        <h1>Customer Login</h1>
       <div align="left"> 
           <input type="text" name="user" value="" autofocus="" required="" placeholder="username"/><br/><br/>
           <input type="password" name="pass" value="" required="" placeholder="password"/><br/><br/>
       </div>
                        
            <input type="submit" value="submit" style="color: white; background-color: black; border-radius: 4px"/>    
                                       
            <br><br><a href="Registration.jsp" style="color: red">create account</a>
         </td></tr>    </table>  
        </form>
    </center>
        </div>
    </body>
    <br><br><br>
    <jsp:include page="footer.jsp"></jsp:include>
</html>