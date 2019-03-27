<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="sidebar">
				<div class="sidebar-dropdown"><a href="#">Navigation</a></div>
				<div class="sidebar-inner">
					<!-- Search form -->
					<div class="sidebar-widget">
						<form >
							<input type="text" class="form-control" placeholder="Search">
						</form>
					</div>
					<!--- Sidebar navigation -->
					<!-- If the main navigation has sub navigation, then add the class "has_submenu" to "li" of main navigation. -->
					<ul class="navi">
						<!-- Use the class nred, ngreen, nblue, nlightblue, nviolet or norange to add background color. You need to use this in <li> tag. -->

						<li id="admin_main" class="nred menu"><a href="#"><i class="fa fa-desktop"></i> 기본정보</a></li>
						<!-- Menu with sub menu -->
						<li class="has_submenu nlightblue">
							<a href="#">
								<!-- Menu name with icon -->
								<i class="fa fa-th"></i> 회원 관리
								<!-- Icon for dropdown -->
								<span class="pull-right"><i class="fa fa-angle-right"></i></span>
							</a>
							<ul>
								<li id="widgets_1" class="menu"><a href="#">Widgets #1</a></li>
								<li id="widgets_2" class="menu"><a href="#">Widgets #2</a></li>
							</ul>
						</li>
						<li class="has_submenu nviolet">
							<a href="#">
								<i class="fa fa-file-o"></i> 주문 관리
								<span class="pull-right"><i class="fa fa-angle-right"></i></span>
							</a>
							<ul>
								<li id="calendars" class="menu"><a href="#">Calendar</a></li>
								<li id="makePost" class="menu"><a href="#">Make Post</a></li>
								<li id="login" class="menu"><a href="#">Login</a></li>
								<li id="register" class="menu"><a href="#">Register</a></li>
								<li id="statement" class="menu"><a href="#">Statement</a></li>
								<li id="errorLog" class="menu"><a href="#">Error Log</a></li>
								<li id="support" class="menu"><a href="#">Support</a></li>
							</ul>
						</li> 
						<li class="has_submenu nblue">
							<a href="#">
								<i class="fa fa-file-o"></i> 상품 관리
								<span class="pull-right"><i class="fa fa-angle-right"></i></span>
							</a>
							<ul>
								<li id="error" class="menu"><a href="#">Error</a></li>
								<li id="gallery" class="menu"><a href="#">Gallery</a></li>
								<li id="grid" class="menu"><a href="#">Grid</a></li>
								<li id="invoice" class="menu"><a href="#">Invoice</a></li>
								<li id="media" class="menu"><a href="#">Media</a></li>
								<li id="profile" class="menu"><a href="#">Profile</a></li>
							</ul>
						</li> 
						<li id="forms" class="nred menu"><a href="#"><i class="fa fa-list"></i> 1:1 문의</a></li>
						<li id="tables" class="nlightblue menu"><a href="#"><i class="fa fa-table"></i> Tables</a></li>
					</ul>
					<!--/ Sidebar navigation -->

					<!-- Date -->
					<div class="sidebar-widget">
						<div id="todaydate"></div>
					</div>
				</div>
			</div>