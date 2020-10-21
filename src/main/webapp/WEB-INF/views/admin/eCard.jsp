<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Danh sách thẻ</title>
</head>
<body>
<div id="content-wrapper">
	<form action="<c:url value='/quan-tri/eCard'/>" id="formSubmit" method="get">
		<div class="container-fluid">
			<div class="card mb-3">
			  		<div class="card-header"> <i class="fas fa-table"></i> ECARD-DANH SÁCH THẺ
			  		</div>
			  		<div class="card-body">
            				<div class="table-responsive">
								<table class="table ">
								<thead>
                  						<tr>
                  							<th></th>
                    						<th>STT</th>
                    						<th>Mã thẻ</th>
                    						<th>Mã pin</th>
                    						<th>Ngày tạo</th>
                    						<th>Số tiền</th>
                    						<th>Trạng thái</th>
                    						<th>Ngày kích hoạt</th>
                  						</tr>
                				</thead>
                				<tbody>  
                						<c:forEach var="item" items="${eCrad.listResult}">
											<tr>
												<td><button type="button" class="btn btn-info" title="Chi tiết"></button></td>
												<td> ${item.id}</td>
												<td> ${item.card_id} </td>
												<td> ${item.pin_code}</td>
												<td> ${item.createddate}</td>
												<td> ${item.money}</td>
												<td> Đã kích hoạt</td>
												<td> ${item.activedate}</td>
											 </tr>
											</c:forEach>
                					</tbody>
                				</table>
            				</div>
            		</div>
			</div>
				<div class="col-md-6 col-md-offset-2">
					<h2>Thêm thẻ mới</h2> 
            			<div class="form-group">
                        <label class="col-sm-3 control-label no-padding-right">Mã thẻ</label>
                        <fieldset>
                            <input type="text" size="5" maxlength="2" style="text-transform:uppercase"  class="ng-pristine ng-invalid ng-invalid-required ng-valid-maxlength ng-touched">
                            <input type="text" size="5" maxlength="2" style="text-transform:uppercase"  class="ng-pristine ng-invalid ng-invalid-required ng-valid-maxlength ng-touched">
                            <input type="text" size="5" maxlength="2" style="text-transform:uppercase"  class="ng-pristine ng-invalid ng-invalid-required ng-valid-maxlength ng-touched">
                            <input type="text" size="5" maxlength="2" style="text-transform:uppercase"  class="ng-pristine ng-invalid ng-invalid-required ng-valid-maxlength ng-touched">
                        </fieldset>
                            <div class="form-group"> 
                            	<label class="col-sm-3 control-label no-padding-right">Tài khoản</label>
								<div class="col-sm-9">
									<select>
										<option>-----</option>
										<option>10000</option>
										<option>20000</option>
										<option>50000</option>
										<option>100000</option>
										<option>200000</option>
									</select>
								</div>
							</div>
                         </div>
                            	<button type="button" class="btn btn-info">Submit</button>
					</div>
		</div>
	</form>
</div>

<script>


		
</script>

</body>
</html>