<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="common/jsp/public.jsp"%>
</head>
<body style="background-color:white;">
<div class="panel panel-default" style="margin-bottom: 0px">
	<div class="panel-body">
		<form role="form"  class="form-horizontal" method="post"   id ="targetForm" action="save">
					
 		</form>
 	</div>
</div>
<div class="panel panel-default">	
  		<table id="table-javascript"></table>	
</div>

</body>
<script type="text/javascript">
	$(function () {
	var columns=[{
			field : 'state',
			checkbox : true
		}, {
			field : 'name',
			title : '名称',
		}, {
			field : 'price',
			title : 'Item Price',
			type:'select'
		}, {
			field : 'operate',
			title : 'ItemOperate',
			clickToSelect : false,
			type:'time'
		}];
	tableWin.loadTable('table-javascript', 'data.json',columns);
	tableWin.loadSearch('targetForm','',columns);
		$("#time").datetimepicker({
			format : 'yyyy-mm-dd hh:ii',
			autoclose: true,
			 todayBtn: true,
		});
		//	loadTable('table-javascript', 'data.json',columns);
	});
</script>

</html>