<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="common/jsp/public.jsp"%>
<style type="text/css">
.list-group {
	padding-left: 0;
	margin-bottom: 0px;
}
</style>

</head>
<body>

<div class="navbar navbar-default" id="navbar">
			<div class="navbar-container" id="navbar-container">
				<div class="navbar-header pull-left">
					<a href="#" class="navbar-brand">
						<small>
							<i class="icon-leaf"></i>
							善拓后台管理系统
						</small>
					</a><!-- /.brand -->
				</div><!-- /.navbar-header -->
		
				<div class="navbar-header pull-right" role="navigation">
				
				<a href="#" onclick="goifm('report_review.jsp')" class="navbar-brand">
					<small> 审阅:<span id="shenyue" >0</span></small>
				</a>
				<a href="#" onclick="goifm('waring_history.jsp')" class="navbar-brand">
					<small> 报警:<span id="warning" >0</span></small>
				</a>
				
				<a href="#" class="navbar-brand">
					<small><button onclick="logout()" class="btn btn-info">退出</button> </small>
				</a>	
				</div><!-- /.navbar-header -->
			</div>
		</div>

		<div class="main-container" id="main-container">
		
			<div class="main-container-inner">
				<a class="menu-toggler" id="menu-toggler" href="#">
					<span class="menu-text"></span>
				</a>

				<div id="div_daohang" class="sidebar" id="sidebar">

					<ul id="ulList" class="nav nav-list">
						<li id="qx1" class="open">
							<a href="#"  class="dropdown-toggle">
								<i class="glyphicon glyphicon-cog"></i><span class="menu-text">账号管理 </span>
								<b class="arrow icon-angle-down"></b>
							</a>
							<ul  class="submenu">
								<li id="qx2" ><a href="#" onclick="goifm('account_company.jsp')"><i class="icon-double-angle-right"></i>公司管理</a></li>
								<li id="qx3"><a href="#" onclick="goifm('account_project.jsp')"><i class="icon-double-angle-right"></i>项目管理</a></li>
								<li id="qx4"><a href="#" onclick="goifm('ar')"><i class="icon-double-angle-right"></i>角色管理</a></li>
								<li id="qx5"><a href="#" onclick="goifm('au')"><i class="icon-double-angle-right"></i>用户管理</a></li>
								<li id="qsx18"><a href="#" onclick="goifm('qiandao.jsp')"><i class="icon-double-angle-right"></i>签到管理</a></li>
							</ul>
						</li>
						<li id="qx6"> 
							<a href="#"  class="dropdown-toggle">
								<i class="icon-group" ></i><span class="menu-text">外场人员管理</span>
								<b class="arrow icon-angle-down"></b>
							</a>
							<div id="tree" style="display: none;">
							</div>
							
						</li>
						<li id="qx7">
							<a href="#" class="dropdown-toggle"> 
								<i class="glyphicon glyphicon-edit"></i><span class="menu-text">任务管理 </span>
								<b class="arrow icon-angle-down"></b>
							</a>
							<ul class="submenu">
								<li id="qx8"><a href="#" onclick="goifm('task_rewoard.jsp')" ><i class="icon-double-angle-right"></i>奖励措施</a></li>
								<li id="qx9"><a href="#" onclick="goifm('task.jsp')"><i class="icon-double-angle-right"></i>任务设定</a></li>
								<li id="qx10"><a href="#" onclick="goifm('task_over.jsp')"><i class="icon-double-angle-right"></i>任务统计</a></li>
							</ul>
						</li>
						<li  id="qx11">
							<a href="#" onclick="goifm('leave_electric.jsp')"  class="dropdown-toggle">
								<i class="glyphicon glyphicon-phone-alt"></i><span class="menu-text">留电管理 </span>
							</a>
						</li>
						<li  id="qx14">
							<a href="#" onclick="goifm('car_apply.jsp')"  class="">
								<i class="icon-dashboard"></i><span class="menu-text">用车申请 </span>
							</a>
						</li>
						<li  id="qx16">
							<a href="#" onclick="goifm('report_review.jsp')" class="">
								<i class="glyphicon glyphicon-check"></i><span class="menu-text">审阅</span>
							</a>
						</li>
						<li id="qx15" class="">
							<a href="#" onclick="goifm('report')" class="">
								<i class="icon-hdd"></i><span class="menu-text">上报 </span>
							</a>
						</li>
						<li  id="qx17">
							<a href="#" class="dropdown-toggle">
								<i class="glyphicon glyphicon-record"></i><span class="menu-text">预警 </span>
								<b class="arrow icon-angle-down"></b>
							</a>
							<ul class="submenu"> 
								<li><a href="#" onclick="goifm('warn')" ><i class="icon-double-angle-right"></i>划定预警圈</a></li>
								<li><a href="#" onclick="goifm('waring_history.jsp')"><i class="icon-double-angle-right"></i>报警历史记录</a></li>
							</ul>
						</li>
					</ul>

					<div class="sidebar-collapse" id="">
						<i class="icon-double-angle-left"></i>  
					</div>
				</div>
			</div>
		</div>

	<div class="main-content">
		<div class="breadcrumbs" id="breadcrumbs">
				<div style="float: left;margin-left: 20px;">实时动态：</div>
				<div style="float: left;height: 20px"> 
					<marquee direction="left" scrollamount="3" onmouseover="this.stop"
						onmouseout="this.start" style="position:relative;">
					 	<span 
							style="color: black;font-size: 18px;position:relative;cursor: pointer;">当前小蜜蜂任务完成数量总数:<font
							color="red"><span id="SumOrder">0</span>
						</font>
						</span>
					</marquee>
				</div>
				<div style="float: right; font-size: 18px">登录用户 ：<i style="color: blue;">d</i></div>
			</div>

		<div id="iframediv" style="width: 100%;">
			<iframe id="iframe" width="100%" height="100%;" name="iframe"
				style="" scrolling="auto" frameborder="0" src="welcome.jsp">

			</iframe>
		</div>

	</div>
</body>
<script type="text/javascript">
	
</script>
</html>
