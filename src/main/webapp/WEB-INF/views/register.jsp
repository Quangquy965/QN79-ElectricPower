<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Đăng ký</title>
</head>
<body>
<div class="container">
        <div class="row justify-content-center align-items-center" style="height:100vh">
            <div class="col-4">
                <div class="card">
                    <div class="card-body">
                    	<h2>Register</h2>
                        <form action="" autocomplete="off">
                            <div class="form-group">
                            	<p>First name</p>
                                <input type="text" class="form-control" name="firstname">
                            </div>
                            <div class="form-group">
                            	<p>Last name</p>
                                <input type="text" class="form-control" name="lastname">
                            </div>
                            <div class="form-group">
                            	<p>User name</p>
                                <input type="text" class="form-control" name="username">
                            </div>
                            <div class="form-group">
                            	<p>password</p>
                                <input type="password" class="form-control" name="password">
                            </div>
                            <div class="form-group">
                            	<p>PIN Code</p>
                                <input type="text" class="form-control" name="pincode">
                            </div>
                            <button type="button" id="sendRegister" class="btn btn-primary">Register</button>
                            <a href="<c:url value='/dang-nhap'/>" class="btn btn-link">Cancel</a>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>