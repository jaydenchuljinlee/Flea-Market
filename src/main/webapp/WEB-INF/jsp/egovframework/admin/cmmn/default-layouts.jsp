<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles"  prefix="tiles"%>

<!DOCTYPE html>
<html>
	<head>
		<tiles:insertAttribute name="header"/>
	</head>
	<body>
		<tiles:insertAttribute name="nav"/>
		<!-- Main content starts -->
		<div class="content">
		
			<!-- Sidebar -->
			<tiles:insertAttribute name="left"/>
			<!-- Sidebar ends -->
			
			<!-- Main bar -->
			<tiles:insertAttribute name="content"/>
			<!-- Main bar ends -->
			
			<div class="clearfix"></div>
		</div> <!--/ Content ends -->
		<!-- Notification box ends -->
		
		<tiles:insertAttribute name="js"/>

	</body>
</html>