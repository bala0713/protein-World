<%--
    Document   : values.jsp
    Created on : Sep 12, 2021, 2:53:59 PM
    Author     : bala
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>             
<html>
  <head>
<title>Cart Page</title>
</head>
<jsp:include page="Template.jsp"></jsp:include>
<body background="Images/C.jpg" style="background-repeat: no-repeat; background-size:100% 190%">
<td valign="top" rowspan="200" colspan="80">
<table>
<tr>
    <c:set var="protein whey" value="${sessionScope.selwhey}"/>
   
<c:choose>
    
<c:when test="${whey=='chocho'}">
<c:set var="Price" value="4500"/>
</c:when>
<c:when test="${whey1=='chochonuts'}">
<c:set var="Price" value="4500"/>
</c:when>
    <c:when test="${whey2=='bananna'}">
<c:set var="Price" value="4500"/>
</c:when>
    <c:when test="${cre=='watermelane'}">
<c:set var="Price" value="1200"/>
</c:when>
        <c:when test="${Cre1=='mixed furit'}">
<c:set var="Price" value="1200"/>
</c:when>
    <c:when test="${Cre2=='peach'}">
<c:set var="Price" value="1200"/>
</c:when>
        <c:when test="${bcca=='peach'}">
<c:set var="Price" value="1500"/>
</c:when>
        <c:when test="${bcca1=='mixed fruit'}">
<c:set var="Price" value="1500"/>
</c:when>
        <c:when test="${bcca2=='watermelone'}">
<c:set var="Price" value="1500"/>
</c:when>
        <c:when test="${bcca3=='rasebarrey'}">
<c:set var="Price" value="999"/>
</c:when>
        <c:when test="${glu=='apple'}">
<c:set var="Price" value="999"/>
</c:when>
    <c:when test="${glu2=='lemone'}">
<c:set var="Price" value="999"/>
</c:when>
    <c:when test="${glu3=='moijito'}">
<c:set var="Price" value="999"/>
</c:when>c:
    
</c:choose>
    

<c:set var="BookingPrice" value="${price}"/>


</tr>
</table>
<br>

<font align='center' color='#FFE4B5' size='+1'>Enjoy your riding with our car,Here check your booking details.
</font>
<br/>
<br/>
<br/>
<div>
<table cellspacing='10' align='center'border='2' bordercolor='black' >
<tr><td bordercolor='white' >Car you have selected:<td COLSPAN='2'bordercolor='white'><c:out value="${protein}"/>
<tr><td bordercolor='white'><b>Total Package Cost</b>:<td
bordercolor='white'><b><fmt:formatNumber pattern="?##,##,###.###"type="number" value="${BookingPrice}"/></b>
</table>
</div>
<table   align='center'>
<td><form action="logout" >
    <input type="submit" value="logout" >
    </td> </table>  
</form>
</body>
