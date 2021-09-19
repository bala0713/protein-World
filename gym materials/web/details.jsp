<%-- 
    Document   : details
    Created on : Sep 17, 2021, 11:33:37 AM
    Author     : sys
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <jsp:include page="header.jsp"></jsp:include>
    <jsp:include page="Template.jsp"></jsp:include>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>details</title>
    </head>
    <body>
    <center>
        <form action="placeorder.jsp" method="post">
        <table style="color: black; border: 3px solid; width: 300px; height: 160px; background-color: seashell" ><tr><td>

   <input type="radio" name="bt" value="cash" checked="checked" />Cash On Delivery<br>
   <input type="radio" name="bt" value="online" disabled="disabled" /> Online payment<br/><br/>
                </td></tr>
            
    <c:set var="product" value="${sessionScope.selproduct}"/>
    <c:set var="NumberOfProduct" value="${numproducts}"/>
           <c:choose>
        <c:when test="${product=='vanilla'}">
                    <c:set var="amount" value="6600"/>
                </c:when>
         <c:when test="${product=='choco'}">
                    <c:set var="amount" value="4500"/>
                </c:when>
         <c:when test="${product=='bannana'}">
                    <c:set var="amount" value="4500"/>
                </c:when>
         <c:when test="${product=='watermelon'}">
                    <c:set var="amount" value="900"/>
                </c:when>
        <c:when test="${product=='mixedfruit'}">
                    <c:set var="amount" value="900"/>
                </c:when>
         <c:when test="${product=='peach'}">
                    <c:set var="amount" value="900"/>
                </c:when>
         <c:when test="${product=='mixedfruit'}">
                    <c:set var="amount" value="1800"/>
                </c:when>
   <%--      <c:when test="${product=='watermelon'}">
                    <c:set var="amount" value="1800"/>
                </c:when>
         <c:when test="${product=='peach'}">
                    <c:set var="amount" value="1800"/>  
                </c:when>    --%>
         <c:when test="${product=='raspberry'}">
                    <c:set var="amount" value="1800"/>
                </c:when>
        <c:when test="${product=='apple'}">
                    <c:set var="amount" value="1600"/>
                </c:when>
       <c:when test="${product=='lemon'}">
                    <c:set var="amount" value="1600"/>
                </c:when>
        <c:when test="${product=='mojito'}">
                    <c:set var="amount" value="1600"/>
                </c:when>
    </c:choose>
        <tr><td bordercolor='white'>product : <td colspan="2"><c:out value="${product}"/> </td><br>
        <br>
        <tr><td bordercolor='white'>Number Of product :  <td colspan="2"><c:out value="${NumberOfProduct}"/></td> <br>
    
        <tr><td bordercolor='white'>Total amount:  <td colspan="2"><b><fmt:formatNumber pattern="₹##,##,###.##" value="${amount*NumberOfProduct}"/></b></td><br><br/>
        <tr>
            <td><input type="submit" value="Submit" /></td></tr>
        </table>
        </form> 
    </center>
         <h3>Please Read the Terms And Conditions Before Submit</h3>
        <a href="Terms.jsp"><h3 style="color: orangered">*Terms And Conditions</h3></a>
   </body>
   <jsp:include page="footer.jsp"></jsp:include>
</html>    