<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<html>
	<tiles:insertAttribute name="head" />
	
	<body class="nav-md">
		<div class="container body">
			<div class="main_container">
				<tiles:insertAttribute name="left" />
				<tiles:insertAttribute name="nav" />
				<!-- page content -->
				<tiles:insertAttribute name="content" />
				<!-- /page content -->		
				<tiles:insertAttribute name="footer" />
			</div>
		</div>
		<tiles:insertAttribute name="js" />
	</body>
</html>   