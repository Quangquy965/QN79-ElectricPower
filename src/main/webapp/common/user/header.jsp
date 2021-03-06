<%@ page import="ElectricPower.Util.SecurityUtils" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp" %>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
	<div class="container">
		<a class="navbar-brand" href="#">Start Bootstrap</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarResponsive" aria-controls="navbarResponsive"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarResponsive">
			<ul class="navbar-nav ml-auto">
				<security:authorize access = "isAuthenticated()" >
					<li><a href="#">Wellcome <%=SecurityUtils.getPrincipal().getFullName() %></a></li>
					<li><a href="<c:url value ='/thoat'/>">Checkout</a></li>
					</security:authorize>
			</ul>
		</div>
	</div>
</nav>