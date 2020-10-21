<%@ page import="ElectricPower.Util.SecurityUtils" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp" %>
  <nav class="navbar navbar-expand navbar-dark bg-dark static-top">

    <a class="navbar-brand mr-1" href="<c:url value ='/quan-tri/'/>"><!-- <img src="template/images/logo.png" > -->METRONIC</a>

    <button class="btn btn-link btn-sm text-white order-1 order-sm-0" id="sidebarToggle" href="<c:url value ='/quan-tri/'/>">
      <i class="fas fa-bars"></i>
    </button>
	
    <!-- Navbar -->
    <ul class="navbar-nav ml-auto ml-md-0">
		<li class="nav-item dropdown no-arrow">
			<a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				 <i class="fas fa-user-circle fa-fw"></i>
				 Xin chào, <%=SecurityUtils.getPrincipal().getFullName() %>
			</a>
		</li>
		<li class="nav-item"> <a class="nav-link" href="<c:url value ='/quan-tri/thoat'/>"> Thoát  </a></li>   
    </ul>

  </nav>