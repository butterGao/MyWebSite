<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% pageContext.setAttribute("root", request.getContextPath());%>
<title>车主APP管理平台 </title>
<meta HTTP-EQUIV="pragma" CONTENT="no-cache">
<meta HTTP-EQUIV="Cache-Control" CONTENT="no-cache, must-revalidate">
<meta HTTP-EQUIV="expires" CONTENT="0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- js方便获取根路径  根路径以/开头-->
<input type="hidden" id="root" value="${root}">
<!-- 样式 -->
<link href="${root}/common/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="${root}/common/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css">
<link href="${root}/common/css/ace.min.css" rel="stylesheet" type="text/css">

<!-- 脚本 -->
<script language="JavaScript" src="${root}/common/js/jquery1.11.js"/>
<script language="JavaScript" src="${root}/common/js/bootstrap.min.js"/>
<script language="JavaScript" src="${root}/common/js/public.js"/>
