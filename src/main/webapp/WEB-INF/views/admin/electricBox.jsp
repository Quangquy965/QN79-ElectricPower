<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp" %>
<c:url var="BoxAPI" value="/api/ebox"/>
<c:url var ="BoxURL" value="/quan-tri/ebox"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quản lý</title>
</head>
<body>
	<div id="content-wrapper">
	    <form action="<c:url value='/quan-tri/ebox'/>" id="formSubmit" method="get">
		<div class="container-fluid">
			<div class="card mb-3">
			  		<div class="card-header"> <i class="fas fa-table"></i> EBOX- TRẠM ĐIỆN
			  		</div>
			  		<div class="card-body">
            				<div class="table-responsive">
								<c:if test="${not empty message}">
									<div class="alert alert-${alert}">${message}</div>
								</c:if>
							<table class="table">
								<thead>
                  						<tr>
                  							<th></th>
                    						<th>STT</th>
                    						<th>Mã trạm</th>
                    						<th>Địa chỉ</th>
                    						<th>Thông tin</th>
                    						<th>Trạng thái</th>
                  						</tr>
                				</thead>
                				<tbody>  
                						<c:forEach var="item" items="${box.listResult}">
											<tr>
												<td><button type="button" class="btn btn-info" title="Chi tiết"></button></td>
												<td> ${item.id}</td>
												<td> ${item.box_code} </td>
												<td> ${item.address} </td>
												<td> ${item.description}</td>
												<td> Online</td>
											 </tr>
										</c:forEach>
                					</tbody>
                				</table>
                				<ul class="pagination" id="pagination"></ul>
								 <input type="hidden" value="" id="page" name="page"/>
								 <input type="hidden" value="" id="limit" name="limit"/>	
            				</div>
            		</div>
			</div>
			<div class="col-md-6 col-md-offset-2" id = "API">
				<h2>Thêm trạm mới</h2>
            		<div class="form-group">
                         <label class="col-sm-3 control-label no-padding-right">Mã trạm</label>
                         <div class="col-sm-9">  
                              <input type="text" id="box_code" name = "box_code" class="col-xs-10 col-sm-5" />
                          </div>
                     </div>
                            	
                     <div class="form-group">
                          <label class="col-sm-3 control-label no-padding-right">Địa chỉ</label>
                          <div class="col-sm-9">
                               <input type="text" id="address" name = "address" class="col-xs-10 col-sm-5"  />
                          </div>
                     </div>
                            	
                     <div class="form-group">
                          <label  for = "content" class="col-sm-3 control-label no-padding-right">Nội dung</label>
                          <div class="col-sm-9">                                  
                               <textarea id = "description" name = "description" rows="5" cols="10" style="width: 820px;height: 175px" ></textarea>
                           </div>
                      </div>
					<div class="container">
						<button type="button" class="btn btn-info" id="btnAddBox">sumit</button>
					</div>

				</div>

			</div>
			</form>
	 </div>

<script>

		var totalPages = ${box.totalPage};
		var currentPage = ${box.page};
		$(function() {
			window.pagObj = $('#pagination').twbsPagination({
				totalPages : totalPages,
				visiblePages : 5,
				startPage: currentPage,
				onPageClick : function(event, page) {
					if (currentPage != page) {
						$('#limit').val(4);
						$('#page').val(page);
						$('#formSubmit').submit();
					}
				}
			});
		});

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
	            url: '${BoxAPI}',
	            type: 'POST',
	            contentType: 'application/json',
	            data: JSON.stringify(data),
	            dataType: 'json',
	            success: function (result) {
	            	window.location.href = "${BoxURL}?page=1&limit=4&message=insert_success";
	            },
	            error: function (error) {
	            	window.location.href = "${BoxURL}?page=1&limit=4&message=error_system";
	            }
	        });
		} 
		
</script>


</body>
</html>