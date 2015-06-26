<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="common/jsp/public.jsp"%>
</head>
<body style="background-color:white;">
<form role="form"  class="form-horizontal" method="post" style="width:90%;height: 100%;"  id ="targetForm" action="save">
					<div class="form-group">
   							<label  class="col-sm-2 control-label">名称</label>
    						<div class="col-sm-10">
     							 <input name="name" value="${tk_usedhouse.NAME}" class="form-control"  placeholder="查询名称">
    						</div>
  					</div>
  					
  					
  	<table id="table-javascript"></table>	
</form> 
<button id="ddd"  class="btn btn-defult"> hehe</button>
</body>
<script type="text/javascript">
	$(function () {

            $('#table-javascript').bootstrapTable({
                method: 'post',
                url: 'data.json',
                cache: false,
                height: 523,
                striped: true,
                pagination: true,
                pageSize: 10,
                pageList: [10, 20, 30, 40, 50],
                showColumns: true,
                showRefresh: true,
                minimumCountColumns: 2,
                toolbarAlign:"left",
                showToggle:true,
                clickToSelect: true,
                hover:true,
                idField:"id",
                columns: [{
                    field: 'state',
                    checkbox: true
                }, {
                    field: 'id',
                    title: 'Item ID',
                    align: 'right',
                    valign: 'bottom',
                    sortable: true
                }, {
                    field: 'name',
                    title: 'Item Name',
                    align: 'center',
                    valign: 'middle',
                    sortable: true,
                }, {
                    field: 'price',
                    title: 'Item Price',
                    align: 'left',
                    valign: 'top',
                    sortable: true,
                }, {
                    field: 'operate',
                    title: 'Item Operate',
                    align: 'center',
                    valign: 'middle',
                    clickToSelect: false,
                }]
            });
        });
    
</script>

</html>