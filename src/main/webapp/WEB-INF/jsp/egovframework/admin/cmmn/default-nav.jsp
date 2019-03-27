<%@ page language="java" contentType="text/html; charset=UTF-8" %>

<div class="navbar navbar-inverse navbar-fixed-top bs-docs-nav" role="banner">
			<div class="container">
				<!-- Menu button for smallar screens -->
				<div class="navbar-header">
					<button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".bs-navbar-collapse">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a href="#" class="navbar-brand">Metro <span class="bold">King</span></a>
				</div>
				<!-- Site name for smallar screens -->
				<!-- Navigation starts -->
				<nav class="collapse navbar-collapse bs-navbar-collapse" role="navigation">     
					<!-- Links -->
					<ul class="nav navbar-nav navbar-right">
						<li class="dropdown">            
							<a data-toggle="dropdown" class="dropdown-toggle" href="#">
								<img src="admin/img/user.jpg" alt="" class="nav-user-pic img-responsive" /> Admin <b class="caret"></b>  
							</a>
							<!-- Dropdown menu -->
							<ul class="dropdown-menu">
							<li><a href="#"><i class="fa fa-user"></i> Profile</a></li>
							<li><a href="#"><i class="fa fa-cogs"></i> Settings</a></li>
							<li><a href="#"><i class="fa fa-power-off"></i> Logout</a></li>
							</ul>
						</li>
					</ul>
					<!-- Notifications -->
					<ul class="nav navbar-nav navbar-right">
						<!-- Comment button with number of latest comments count -->
						<li class="dropdown dropdown-big">
							<a class="dropdown-toggle" href="#" data-toggle="dropdown">
								<i class="fa fa-comments"></i> Chats <span   class="badge badge-info">6</span> 
							</a>
							<ul class="dropdown-menu">
								<li>
									<!-- Heading - h5 -->
									<h5><i class="fa fa-comments"></i> Chats</h5>
									<!-- Use hr tag to add border -->
									<hr />
								</li>
								<li>
									<!-- List item heading h6 -->
									<a href="#">Hi :)</a> <span class="label label-warning pull-right">10:42</span>
									<div class="clearfix"></div>
									<hr />
								</li>
								<li>
									<a href="#">How are you?</a> <span class="label label-warning pull-right">20:42</span>
									<div class="clearfix"></div>
									<hr />
								</li>
								<li>
									<a href="#">What are you doing?</a> <span class="label label-warning pull-right">14:42</span>
									<div class="clearfix"></div>
									<hr />
								</li>                  
								<li>
									<div class="drop-foot">
										<a href="#">View All</a>
									</div>
								</li>                                    
							</ul>
						</li>
						<!-- Message button with number of latest messages count-->
						<li class="dropdown dropdown-big">
							<a class="dropdown-toggle" href="#" data-toggle="dropdown">
								<i class="fa fa-envelope-o"></i> Inbox <span class="badge badge-important">6</span> 
							</a>
							<ul class="dropdown-menu">
								<li>
									<!-- Heading - h5 -->
									<h5><i class="fa fa-envelope-o"></i> Messages</h5>
									<!-- Use hr tag to add border -->
									<hr />
								</li>
								<li>
									<!-- List item heading h6 -->
									<a href="#">Hello how are you?</a>
									<!-- List item para -->
									<p>Quisque eu consectetur erat eget  semper...</p>
									<hr />
								</li>
								<li>
									<a href="#">Today is wonderful?</a>
									<p>Quisque eu consectetur erat eget  semper...</p>
									<hr />
								</li>
								<li>
									<div class="drop-foot">
										<a href="#">View All</a>
									</div>
								</li>                                    
							</ul>
						</li>
						<!-- Members button with number of latest members count -->
						<li class="dropdown dropdown-big">
							<a class="dropdown-toggle" href="#" data-toggle="dropdown">
								<i class="fa fa-user"></i> Users <span   class="badge badge-success">6</span> 
							</a>
							<ul class="dropdown-menu">
								<li>
									<!-- Heading - h5 -->
									<h5><i class="fa fa-user"></i> Users</h5>
									<!-- Use hr tag to add border -->
									<hr />
								</li>
								<li>
									<!-- List item heading h6-->
									<a href="#">Ravi Kumar</a> <span class="label label-warning pull-right">Free</span>
									<div class="clearfix"></div>
									<hr />
								</li>
								<li>
									<a href="#">Balaji</a> <span class="label label-important pull-right">Premium</span>
									<div class="clearfix"></div>
									<hr />
								</li>
								<li>
									<a href="#">Kumarasamy</a> <span class="label label-warning pull-right">Free</span>
									<div class="clearfix"></div>
									<hr />
								</li>                  
								<li>
									<div class="drop-foot">
										<a href="#">View All</a>
									</div>
								</li>                                    
							</ul>
						</li> 
					</ul>
				</nav>
			</div>
		</div>