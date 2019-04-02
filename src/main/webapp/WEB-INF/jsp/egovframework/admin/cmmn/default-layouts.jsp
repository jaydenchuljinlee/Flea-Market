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
			<div class="mainbar">
				<div class="matter">
					<div class="container">
						<tiles:insertAttribute name="content"/>
					</div>
				</div>
			</div>
			
			<div class="clearfix"></div>
		</div> <!--/ Content ends -->
		<!-- Notification box ends -->
		<!-- Scroll to top -->
		<span class="totop"><a href="#"><i class="fa fa-chevron-up"></i></a></span> 
		
		<tiles:insertAttribute name="js"/>

	</body>
</html>