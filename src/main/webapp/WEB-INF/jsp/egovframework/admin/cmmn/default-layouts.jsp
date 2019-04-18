<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles"  prefix="tiles"%>

<!DOCTYPE html>
<html>
	<head>
		<tiles:insertAttribute name="head"/>
	</head>
	<body class="nav-md">
		
		<div class="content body">
				<tiles:insertAttribute name="left" />
				<!-- Main bar -->
				<div class="mainbar">
					<div class="matter">
						<div class="container">
							<tiles:insertAttribute name="content"/>
						</div>
					</div>
				</div>
				<!-- /page content -->		
				<tiles:insertAttribute name="footer" />
				
		</div> <!--/ Content ends -->
		
		<tiles:insertAttribute name="js"/>

	</body>
</html>