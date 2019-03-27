<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<meta charset="utf-8">
		<!-- Title here -->
		<title>${param.pageHeadName}</title>
		<!-- Description, Keywords and Author -->
		<meta name="description" content="Your description">
		<meta name="keywords" content="Your,Keywords">
		<meta name="author" content="ResponsiveWebInc">
		
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		
		<!-- Styles -->
		<!-- Bootstrap CSS -->
		<link href="admin/css/bootstrap.min.css" rel="stylesheet">
		<!-- jQuery UI -->
		<link rel="stylesheet" href="admin/css/jquery-ui.css"> 
		<!-- jQuery Gritter -->
		<link rel="stylesheet" href="admin/css/jquery.gritter.css">
		<!-- Font awesome CSS -->
		<link href="admin/css/font-awesome.min.css" rel="stylesheet">		
		<!-- Custom CSS -->
		<link href="admin/css/style.css" rel="stylesheet">
		<!-- Widgets stylesheet -->
		<link href="admin/css/widgets.css" rel="stylesheet">
		<!-- 캘린더에 필요한 css -->
		<link href="admin/css/fullcalendar.css" rel="stylesheet">
		   
		<!-- Favicon -->
		<link rel="shortcut icon" href="#">
		
		<!-- jQuery -->
		<script src="admin/js/jquery.js"></script>
		
		<form id="headerFrm" method="post" action="#">
	    	<input type="hidden" name="pageHeadName" id="pageHeadName">
		</form>