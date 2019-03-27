<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!-- Header -->
<header class="masthead">
	<div class="container">
		<div class="intro-text">
			<div class="intro-lead-in">레프트 타일즈</div>
		</div>
	</div>
</header>


<!-- Services -->
<section id="services">
	<div class="container">
		<div class="row">
			<div class="col-4">
				<tiles:insertAttribute name="left" />
			</div>

			<div class="col-8">
				<tiles:insertAttribute name="content" />
			</div>
		</div>
	</div>
</section>