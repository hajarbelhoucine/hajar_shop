<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false"
    pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

    
    <spring:url var=" css" value="/resources/css"/>
      <spring:url var=" js" value="/resources/js"/>
        <spring:url var=" images" value="/resources/images"/>
    <c:set var="contextRoot" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

<!--  Titre  -->
<script>window.menu = '${title} ''</script>

<!--  Bootstrap Core Css -->
<link href="${css}/bootstrap.min.css" rel="stylsheet">

<!-- Bootstrao readable them -->
<link href="${css}/bootstrap-readable-theme.css" rel="stylsheet">
<!-- Custum Css -->
<link href="${css}/myapp.css" rel="stylsheet">


</head>
<body>

<div class ="wrapper">
<!-- Navigation -->
    <%@ include file="./shared/navbar.jsp" %>


<!-- Content page -->
<div class="content">
			
			<!-- Loading the home content -->
			<c:if test="${userClickHome == true }">
				<%@include file="home.jsp"%>
			</c:if>

			<!-- Load only when user clicks about -->
			<c:if test="${userClickAbout == true }">
				<%@include file="about.jsp"%>
			</c:if>

			<!-- Load only when user clicks contact -->
			<c:if test="${userClickContact == true }">
				<%@include file="contact.jsp"%>
			</c:if>
			
			
		</div>
<!--   Footer Container  -->
<%@ include file="./shared/footer.jsp" %>

<!-- bootstrap Core Js -->

<script src="${js}/bootstrap.min.js"></script>

<!--  JQuery -->

<script src="${js}/jquery.js"></script>
 
<!--  Self coded javascript -->
<script src="${js}/myapp.js"></script>


</div>
</body> 


</html>
