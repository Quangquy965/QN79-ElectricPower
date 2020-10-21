<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Đăng nhập</title>
</head>
<body>
<div class="container">
        <div class="row justify-content-center align-items-center" style="height:100vh">
            <div class="col-4">
                <div class="card">
                    <div class="card-body">

						<c:if test="${param.incorrectAccount != null}">
							<div class="alert alert-danger">USERNAME or PASSWORK incorrect</div>
						</c:if>

						<c:if test="${param.accessDenied != null}">
							<div class="alert alert-danger">You Not Authorize</div>
						</c:if>

						<h2>Login</h2>
                        <form action="j_spring_security_check" id="formLogin" method="POST">
                            <div class="form-group">
                            	<p>UserName</p>
                                <input type="text" class="form-control" id="username" name="j_username" placeholder="username">
                            </div>
                            <div class="form-group">
                            	<p>password</p>
                                <input type="password" class="form-control" id="password" name="j_password" placeholder="password">
                            </div>
                            <button type="submit" value="Login" class="btn btn-primary">login</button>
                            <a href="<c:url value='/dang-ky'/>" class="btn btn-link">Register</a>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

</body>
</html>