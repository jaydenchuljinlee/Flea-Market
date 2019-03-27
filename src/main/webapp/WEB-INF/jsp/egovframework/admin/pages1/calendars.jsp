<%@ page language="java" contentType="text/html; charset=UTF-8" %>

			<div class="mainbar">
				<!-- Page heading -->
				<div class="page-head">
					<!-- Page heading -->
					<h2 class="pull-left">Calendar
					  <!-- page meta -->
					  <span class="page-meta">Something Goes Here</span>
					</h2>
					<!-- Breadcrumb -->
					<div class="bread-crumb pull-right">
					  <a href="#"><i class="fa fa-home"></i> Home</a> 
					  <!-- Divider -->
					  <span class="divider">/</span> 
					  <a href="#" class="bread-current">Calendar</a>
					</div>
					<div class="clearfix"></div>
				</div><!--/ Page heading ends -->
				
				<!-- Matter -->
				<div class="matter">
					<div class="container">
					  <div class="row">

						<div class="col-md-12">
						  <!-- Widget -->
						  <div class="widget wred">
							<!-- Widget title -->
							<div class="widget-head">
							  <div class="pull-left">Calendar</div>
							  <div class="widget-icons pull-right">
								<a href="#" class="wminimize"><i class="fa fa-chevron-up"></i></a> 
								<a href="#" class="wclose"><i class="fa fa-times"></i></a>
							  </div>
							  <div class="clearfix"></div>
							</div>
							<div class="widget-content">
							  <!-- Widget content -->
							  <div class="padd">
								<!-- Below line produces calendar. I am using FullCalendar plugin. -->
								<div id="calendar"></div>
							  </div>
							</div>
						  </div> 
						</div>

					  </div>
					</div>
				</div><!--/ Matter ends -->
			</div> 