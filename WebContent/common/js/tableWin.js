var tableWin=new Object();
+function($) {
	$.fn.extend(tableWin, {
		loadTable : function(tableId, url, columns,columnId) {
			$('#' + tableId).bootstrapTable({
				method : 'post',
				url : root+"/"+url,
				cache : false,
				height : 523,
				striped : true,
				pagination : true,
				pageSize : 10,
				pageList : [ 10, 20, 30, 40, 50 ],
				showColumns : true,
				showRefresh : true,
				minimumCountColumns : 2,
				toolbarAlign : "left",
				showToggle : true,
				clickToSelect : true,
				hover : true,
				idField : columnId||"id",
				columns : columns,
				toolbar:"#custom-toolbar",
				toolbarAlign:"right"
			})
		},
		loadTool : function(toolId,url,columns) {
			var tool=$("#"+toolId);
			
		},
		loadSearch:function(formId,url,columns){
			var $group=$('<div class="form-group"></div>');
			var botton='<div style="float: right;margin-right: 15px"><div onclick="table_search(\''+url+'\')" class="btn btn-default"><i class="glyphicon glyphicon-search"></i> 查询</div></div>';
			var showtime=false;
			$.each(columns,function(i,o) {
				if(o.type=='time'){
					$group.append('<label  class="col-sm-1 control-label" readonly>'+o.title+'</label>');
					var div='<div class="col-sm-2"><div class="input-group">'+
					'<input id="search_'+o.fileid+'" name="'+o.fileid+'"  type="text" class="form-control input-sm showtime" pplaceholder="选择时间..." aria-describedby="basic-addon1">'+
					'<span class="input-group-addon" id="basic-addon1"><li class="icon-calendar"></li></span></div></div>';
					$group.append(div);
					showtime=true;
				}else if(o.type=='select'){
					$group.append('<label  class="col-sm-1 control-label">'+o.title+'</label>');
					$group.append('<div class="col-sm-2"><select  id="search_'+o.fileid+'" name="'+o.fileid+'"  class="form-control input-sm" ></select></div>');
				}else{
					$group.append('<label  class="col-sm-1 control-label">'+o.title+'</label>');
					$group.append('<div class="col-sm-2"><input  id="search_'+o.fileid+'" name="'+o.fileid+'"  class="form-control input-sm"  placeholder="请输入..."></div>');
				}
			});
			$group.append(botton);
			$("#"+formId).append($group);
			if(showtime){
				$(".showtime").datetimepicker({
					format : 'yyyy-mm-dd hh:ii',
					autoclose: true,
					 todayBtn: true,
				});
			}
		}
	})
}(jQuery);

function tableSearch(){
	
}

