<%@ page language="java" contentType="text/html; charset=UTF-8" %>

<div class="mainbar">
			  	<!-- Page heading -->
				<div class="page-head">
				<!-- Page heading -->
					<h2 class="pull-left">Make Post
						<!-- page meta -->
						<span class="page-meta">Something Goes Here</span>
					</h2>
					<!-- Breadcrumb -->
					<div class="bread-crumb pull-right">
						<a href="#"><i class="fa fa-home"></i> Home</a> 
						<!-- Divider -->
						<span class="divider">/</span> 
						<a href="#" class="bread-current">Make Post</a>
					</div>
					<div class="clearfix"></div>
				</div><!--/ Page heading ends -->
				<!-- Matter -->
				<div class="matter">
					<div class="container">
						<div class="row">
							<div class="col-md-8">
								<div class="widget wviolet">
									<div class="widget-head">
									  <div class="pull-left">Make Post</div>
									  <div class="widget-icons pull-right">
										<a href="#" class="wminimize"><i class="fa fa-chevron-up"></i></a> 
										<a href="#" class="wclose"><i class="fa fa-times"></i></a>
									  </div>
									  <div class="clearfix"></div>
									</div>
									<div class="widget-content">
										<div class="padd">										
											<input type="text" class="form-control col-lg-8" placeholder="Enter Title"><br />
											<br />
											<div class="text-area">
												<textarea rows="10" class="form-control col-lg-8" name="input"></textarea>
											</div>
											<div class="clearfix"></div>
										</div>
									</div>
									<div class="widget-foot">
										Word Count : 205
									</div>
								</div>  								
								<div class="widget wblue">
									<div class="widget-head">
									  <div class="pull-left">Other Stuffs</div>
									  <div class="widget-icons pull-right">
										<a href="#" class="wminimize"><i class="fa fa-chevron-up"></i></a> 
										<a href="#" class="wclose"><i class="fa fa-times"></i></a>
									  </div>
									  <div class="clearfix"></div>
									</div>
									<div class="widget-content">
									  <div class="padd">
										<h6>Excerpt</h6>
										<p>You can add your experts here.</p>
										<div class="text-area">
											<!-- Add the "cleditor" to textarea to add CLeditor -->
											<textarea name="input" class="form-control col-lg-12"></textarea>
										</div>
										<hr />
										<h6>Custom Field</h6>
										<p>Add your custom fields here</p>			
										<div class="form-group">
											<input class="form-control col-lg-12" type="text" placeholder="Name"><br />
										</div>
										<div class="form-group">
											<input class="form-control col-lg-12" type="text" placeholder="Value">
										</div>
									  <div class="clearfix"></div>
									  </div>
									</div>
								</div>  
            				</div>

							<!-- post sidebar -->
							<div class="col-md-4">
							  <div class="widget wgreen">
								<div class="widget-head">
								  <div class="pull-left">Details</div>
								  <div class="widget-icons pull-right">
									<a href="#" class="wminimize"><i class="fa fa-chevron-up"></i></a> 
									<a href="#" class="wclose"><i class="fa fa-times"></i></a>
								  </div>
								  <div class="clearfix"></div>
								</div>

								<div class="widget-content">
								  <div class="padd">

									  <h6>Category</h6>
										<div class="check-box">
											<label><input type='checkbox' value='check1' /> General</label>
										</div>
										<div class="check-box">
											<label><input type='checkbox' value='check2' /> Latest News</label>
										</div>
										<div class="check-box">
											<label><input type='checkbox' value='check3' /> Health</label>
										</div>

									  <hr />
									  <h6>Tags</h6>
									  <input class="form-control col-lg-12" type="text" placeholder="Tags">

									<div class="buttons">
									  <button class="btn btn-default">Save Draft</button> 
									  <button class="btn btn-info">Publish</button>
									  <button class="btn btn-danger">Trash</button>
									</div>

								  </div>
								</div>
							  </div>  
							</div>
						</div>
					</div>
				</div><!--/ Matter ends -->
			</div>