<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title><dec:title default="Trang chủ" /></title>

  <!-- Custom fonts for this template-->
  <link href='<c:url value ="/template/admin/vendor/fontawesome-free/css/all.min.css" />' rel="stylesheet" type="text/css" >

  <!-- Page level plugin CSS-->
  <link href='<c:url value="/template/admin/vendor/datatables/dataTables.bootstrap4.css" />' rel="stylesheet" type="text/css" >
  

  <!-- Custom styles for this template-->
  <link href='<c:url value="/template/admin/css/sb-admin.css" />' rel="stylesheet" type="text/css">
  
  <!--  sweetalert -->
    <link rel="stylesheet" href="<c:url value='/template/sweetalert/sweetalert2.min.css'/>" />
    <script src="<c:url value='/template/sweetalert/sweetalert2.min.js'/>"></script>
    
    <!--ckeditor  -->
    <script src="<c:url value='/template/ckeditor/ckeditor.js' />"></script>
   
  
  	<!-- phân trang -->
   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css"> 
   <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
   <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/js/bootstrap.min.js"></script>
   
</head>
<body id="page-top">

	<!-- Head -->
	<%@ include file="/common/admin/header.jsp" %>
	
	<div id="wrapper">
	
	<%@ include file="/common/admin/menu.jsp" %>
	
		<!-- Body -->
		<dec:body/>
	
	</div>
	<!-- Footer -->
	
	   <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

  <!-- Logout Modal-->
  <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
        <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
          <a class="btn btn-primary" href="login.html">Logout</a>
        </div>
      </div>
    </div>
  </div>
	
<!-- Bootstrap core JavaScript-->
  <script src='<c:url value="/template/admin/vendor/jquery/jquery.min.js"/>'></script>
  <script src='<c:url value="/template/admin/vendor/bootstrap/js/bootstrap.bundle.min.js"/>'></script>

  <!-- Core plugin JavaScript-->
  <script src='<c:url value="/template/admin/vendor/jquery-easing/jquery.easing.min.js" />'></script>

  <!-- Page level plugin JavaScript-->
  <script src='<c:url value="/template/admin/vendor/chart.js/Chart.min.js"/>'></script>
  <script src='<c:url value="/template/admin/vendor/datatables/jquery.dataTables.js"/>'></script>
  <script src='<c:url value="/template/admin/vendor/datatables/dataTables.bootstrap4.js" />'></script>

  <!-- Custom scripts for all pages-->
  <script src='<c:url value="/template/admin/js/sb-admin.min.js"/>'></script>

  <!-- Demo scripts for this page-->
  <script src='<c:url value="/template/admin/js/demo/datatables-demo.js" />'></script>
  <script src='<c:url value="/template/admin/js/demo/chart-area-demo.js" />'></script>
  
  <script src='<c:url value="/template/paging/jquery.twbsPagination.js" />'></script>
  

  
</body>
</html>