
var root=getval("#root");//项目根路径

/**
 * @param name
 * @returns url参数值
 */
 function getUrlParam(name) {
         var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)"); //构造一个含有目标参数的正则表达式对象
         var r = window.location.search.substr(1).match(reg);  //匹配目标参数
         if (r != null) return unescape(r[2]); return null; //返回参数值
     }

/**
 * 解决带参数跳转有乱码问题
 * @param url
 */
function goUrl(url){
	location.href=encodeURI(encodeURI(url));
}
function fanhui(){
	history.go(-1);
}

/**
 * iframe跳转到指定url
 * @param url
 */
function goiframe(url){
	$("#iframe").attr("src",url);
}
/**
 * 
 * @param id
 * @returns 指定id值
 */
function getval(id){
	return $("#"+id).val();
}
/**
 * 触发点击事件
 * @param id
 */
function checkd(id){  
	$("#"+id).prop("checked", true);
}
function cheRadio(id){ 
	$("#che"+id).attr("checked", true);
	$("input[id^=cge]").attr("checked", false);
	
}
function addInfos(id,msg){
	("#"+id).addClass("has-error");
	$("#"+id).append('<label name="infos" class="control-label" >'+msg+'</label>');
}

function removeInfos(){
	$("label[name='infos']").remove();
}
function strToTime(time){
	return time.replace("-","").replace("-","").replace(" ","").replace(":","").replace(":","")*1;
}

/**
 * 
 * @param url 访问controller
 * @param data 参数
 * @param selectid 下拉框id
 */
function ajaxHtmlToSelect(url,data,selectid){
	$.ajax({
		type : "POST",
		url :getval("root")+"/"+url,
		async:false,
		data :data,
		contentType : 'application/x-www-form-urlencoded;charset=utf-8',
		success : function(data) {
			var html="";
			$.each(data,function(i,o) {   
				html+=' <option  value="'+o.ID+'">'+o.NAME+'</option> ';
			});
			$("#"+selectid).html(html);
		}
	});

}

function ajaxFunction(url,data,func){
	$.ajax({
				type : "POST",
				url :getval("root")+"/"+url,
				async:false,
				data :data,
				contentType : 'application/x-www-form-urlencoded;charset=utf-8',
				success : func
			});
}
function ajaxFunctionAsyncTrue(url,data,func){
	$.ajax({
				type : "POST",
				url :getval("root")+"/"+url,
				async:true,
				data :data,
				contentType : 'application/x-www-form-urlencoded;charset=utf-8',
				success : func
			});
}


function jqCheckTime(s,n){
	var b=true;
	var msg="";
	if(s.length<13){
		if(n.length>13){
			s+="000000";
		}
	}
	if(n.length<13){
		if(s.length>13){
			n+="000000";
		}
	}
	if(n!=""&&s!=""){
		if(strToTime(n)<strToTime(s)){
			console.log(2);
			b=false,msg="结束时间请大于开始时间";
		}
	}else if(n!=""&&s==""){
		console.log(3);
		b=false,msg="请填写开始时间";
	}
	else if(n==""&&s!=""){
		console.log(4);
		b=false,msg="请填写结束时间";
	}
	return [b,msg];
}
