<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp" %>
<!-- Sidebar -->
    <ul class="sidebar navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="#">
          <i class="fas fa-fw fa-tachometer-alt"></i>
          <span>Menu</span>
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="<c:url value ='/quan-tri/ebox?page=1&limit=4' />">
          <i class="icon-star"></i>
          <span>Quản lý hộp điện</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="<c:url value ='/quan-tri/eCard' />">
          <i class="icon-credit-card"></i>
          <span>Quản lý thẻ(eCard)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="<c:url value ='/quan-tri/moneycard' />">
          <i class="icon-paypal"></i>
          <span>Quản lý thẻ nạp</span></a>
      </li>
    </ul>