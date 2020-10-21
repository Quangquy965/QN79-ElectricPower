<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp" %>
<c:url var="CardLoadedAPI" value="/api/CardLoaded"/>
<c:url var ="CardLoadedURL" value="/quan-tri/moneycard"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Danh sách thẻ nạp</title>
</head>
<body>
<div id="content-wrapper">
		<form action="<c:url value='/quan-tri/moneycard'/>" id="formSubmit" method="get">
		<div class="container-fluid">
			<div class="card mb-3">
			  		<div class="card-header"> <i class="fas fa-table"></i> Danh sách thẻ nạp tiền
			  		</div>
			  		<div class="card-body">
            				<div class="table-responsive">
								<table class="table ">
								<thead>
                  						<tr>
                  							<th></th>
                    						<th>STT</th>
                    						<th>Mã thẻ</th>
                    						<th>Ngày phát hành</th>
                    						<th>Mệnh giá</th>
                    						<th>Trạng thái</th>
                  						</tr>
                				</thead>
                				<tbody>  
                							<c:forEach var="item" items="${moneycard.listResult}">
											<tr>
												<td><button type="button" class="btn btn-info" title="Chi tiết"></button></td>
												<td> ${item.id}</td>
												<td> ${item.code} </td>
												<td> ${item.datetime_issued}</td>
												<td> ${item.value} </td>
												<td> Đã sử dụng</td>
											 </tr>
											 </c:forEach>
                					</tbody>
                				</table>
            				</div>
            		</div>
			</div>
				<div class="col-md-6 col-md-offset-2" id = "API">
				<h2>Thêm mới thẻ nạp tiền</h2>
				<div class="form-group">
                <label class="col-sm-3 control-label no-padding-right">Tài khoản</label>
				<div class="col-sm-9">
					<select>
						<option>10000</option>
						<option>20000</option>
						<option>50000</option>
						<option>100000</option>
						<option>200000</option>
					</select>
				</div>
                </div>
                <button type="button" class="btn btn-info">Submit</button>	
				</div>
		</div>
	</form>
</div>

<script>



		$('#btnAddBox').click(function (e) {
			 e.preventDefault();
			 var data = {};
			 var formData = $('#API').serializeArray();
			 $.each(formData, function (i, v) {
		            data[""+v.name+""] = v.value;
		     });
			 addBox(data);
		});
 		function addBox(data) {
			$.ajax({
	            url: '${CardLoadedAPI}',
	            type: 'POST',
	            contentType: 'application/json',
	            data: JSON.stringify(data),
	            dataType: 'json',
	            success: function (result) {
	            	window.location.href = "${CardLoadedURL}";
	            },
	            error: function (error) {
	            	window.location.href = "${CardLoadedURL}";
	            }
	        });
		} 
		
</script>
</body>
</html>