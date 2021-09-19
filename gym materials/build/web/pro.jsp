<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <jsp:include page="header.jsp"></jsp:include>
    <jsp:include page="Template.jsp"></jsp:include>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>B^3 protien's</title>
        <style>
            .nav{
                list-style-type: none;
                text-align: left;
                margin: 0;
                padding: 0;
            }
            .nav li{
                display: inline-block;
                padding: 20px;
            }
        </style>
    </head>
    <body>
    <center>
        <h2 style="color: blue">Welcome to B^3 protein</h2>
        <table style="border-spacing: 15px; ">
            
            
        <tr><td><img src="pro/1.jpg" name="product"  width="200" height="200" alt="img 1 ">
            <details><c:set var="vanilla" value="6600"/>Price : <c:out value="${vanilla}"/><br>
                 <c:set var="vanilla" value="vanilla"/>Name : <c:out value="${vanilla}"/></details><br/></td>
                   
            <td><img src="pro/2.jpg" name="product" width="200" height="200" alt="img 2">
            <details><c:set var="choco" value="4800"/>Price : <c:out value="${choco}"/><br>
                <c:set var="choco" value="choco"/>Name : <c:out value="${choco}"/></details><br/></td>
            
            <td><img src="pro/3.jpg" name="product" width="200" height="200" alt="img 3">
            <details><c:set var="bannana" value="4800"/>Price : <c:out value="${bannana}"/><br>
                <c:set var="bannana" value="bannana"/>Name : <c:out value="${bannana}"/></details><br/></td></tr>
     
        <tr><td><img src="pro/4.jpg" name="product" width="200" height="200" alt="img 4">
            <details><c:set var="watermelon" value="900"/>Price : <c:out value="${watermelon}"/><br>
                <c:set var="watermelon" value="watermelon"/>Name : <c:out value="${watermelon}"/></details><br/></td>
     
            <td><img src="pro/5.jpg" name="product" width="200" height="200" alt="img 5">
            <details><c:set var="mixedfruit" value="900"/>Price : <c:out value="${mixedfruit}"/><br>
                <c:set var="mixedfruit" value="mixedfruit cre"/>Name : <c:out value="${mixedfruit}"/></details><br/></td>
     
        <td><img src="pro/6.jpg" name="" width="200" height="200" alt="img 6">
            <details><c:set var="peach" value="900"/>Price : <c:out value="${peach}"/><br>
                <c:set var="peach" value="peach"/>Name : <c:out value="${peach}"/></details><br/></td></tr>
     
      <%--  <tr><td><img src="pro/7.jpg" name="product" width="200" height="200" alt="img 7">
            <details><c:set var="mixedfriut" value="1800"/>Price : <c:out value="${mixedfriut}"/><br>
                <c:set var="mixedfriut" value="mixedfriut"/>Name : <c:out value="${mixedfriut}"/></details><br/></td>
     
        <td><img src="pro/8.jpg" name="product" width="200" height="200" alt="img 8">
            <details><c:set var="watermelon" value="1800"/>Price : <c:out value="${watermelon}"/><br>
                <c:set var="watermelon" value="watermelon"/>Name : <c:out value="${watermelon}"/></details><br/></td></tr>
     
        <tr><td><img src="pro/9.jpg" name="product" width="200" height="200" alt="img 9">
            <details><c:set var="peach" value="1800"/>Price : <c:out value="${peach}"/><br>
                <c:set var="peach" value="peach"/>Name : <c:out value="${peach}"/></details><br/></td>     --%>
     
            <td><img src="pro/10.jpg" name="product" width="200" height="200" alt="img 10">
            <details><c:set var="raspberry" value="1800"/>Price : <c:out value="${raspberry}"/><br>
                <c:set var="raspberry" value="raspberry"/>Name : <c:out value="${raspberry}"/>
                <c:set var="raspberry" value=""/>scoop size : </details><br/></td></tr>
     
            <td><img src="pro/11.jpg" name="product" width="200" height="200" alt="img 11">
            <details><c:set var="apple" value="1600"/>Price : <c:out value="${apple}"/><br>
                <c:set var="apple" value="apple"/>Name : <c:out value="${apple}"/></details><br/></td>
     
            <td><img src="pro/12.jpg" name="product" width="200" height="200" alt="img 12">
            <details><c:set var="lemon" value="1600"/>Price : <c:out value="${lemon}"/><br>
                <c:set var="lemon" value="lemon"/>Name : <c:out value="${lemon}"/></details><br/></td>
     
            <td><img src="pro/13.jpg" name="product" width="200" height="200" alt="img 13">
            <details><c:set var="mojito" value="1600"/>Price : <c:out value="${mojito}"/><br>
                <c:set var="mojito" value="mojito"/>Name : <c:out value="${mojito}"/></details><br/></td>
     
                    </div> </td><tr>  </table> 
                <form action='<c:url value="/SessionServlet"/>' name='MyForm' method='POST'>

                    <table style="border: solid red; border-spacing: 15px; opacity: 1; background-color: aliceblue"> <tr>
<td bordercolor='white'><font color='darkorange'> Select Item From Above : </font></td>
<td bordercolor='white'> 
    
        <select name='product'>
        <option value='vanilla'>vanilla</option> 
        <option value='choco'>choco</option> 
        <option value='bannana'>bannana</option> 
        <option value='mixedfruit'>mixedfruit</option>
        <option value='watermelon'>watermelon</option>
        <option value='peach'>peach</option>
        <option value='raspberry'>raspberry</option>
        <option value='apple'>apple</option>
        <option value='lemon'>lemon</option>
        <option value='mojito'>mojito</option>
        </select>
    
    <tr>
        <td bordercolor='white'><font color='darkorange'> Number of Product : </font> </td>
<td bordercolor='white'>
    <input type= 'text' name='numOfProduct' required="" autofocus=""></td> </tr> <tr><td allign="center">

      
            <font color='darkorange'>Delivery Address : </font><br><textarea name="Delivery Address" rows="3" cols="20" required=""></textarea><br/><br/>
            
     <input type='hidden' value='yproduct' name='PageName'/> </td> </tr> <tr>
<td bordercolor='white'>
    
<input type='submit' Value='Next'></input></td>
                </tr></table></form>
    </center>
    </body>
    <jsp:include page="footer.jsp"></jsp:include>
</html>