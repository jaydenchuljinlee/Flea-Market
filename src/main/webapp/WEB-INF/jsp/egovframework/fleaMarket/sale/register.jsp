<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- Portfolio Grid -->

<div class="container mt-5">
	<div class="row mt-5">
		<div class="img_register col-4 mr-1 mt-2" style="background-color:#ccc">
			<div class="row col-12 p-2">
				<div class="col-4 img_upload">
					<span style="font-size:30px;">regiser image</span><br>
					<a class="p-2 col-5" href="#" style="background-color:#1ab394;border-radius: 10%">upload</a>
				</div>
				<div class="col-8 upload_comment">
					asdf
				</div>
			</div>
			<div class="col-12 mt-3 mb-5 text-right" style="background-color:white;height:437px;">
				<a class="m-2" href="#"><i class="p-2 m-2 fa fa-search-plus" style="background-color:#ed5565;border-radius: 10%"></i></a>
				<a class="m-2" href="#"><i class="p-2 m-2 mt-1 fa fa-times" style="background-color:#ed5565;border-radius: 10%"></i></a>
			</div>
		</div>
		<div class="detail_register col-6 ml-1 mt-2" style="background-color:#ccc">
			<form id="product_register" method="post" enctype="multipart/form-data">
				<div class="col-12 p-2">
					<div class="register_category m-2 row">
						<span class="col-4">Category :</span>
						<select class="p-1 col-8" style="border:1px solid #e5e6e7">
							<option>--category</option>
						</select>
					</div>
					<div class=" m-2 row">
						<span class="col-4">Area :</span>
						<input class="p-1 col-3" style="border:1px solid #e5e6e7;backgroud-color:#e5e6e7" value="hwagok">
						<a href="#">
							<span class="col-2 m-1 p-1" style="background-color:#ed5565;border-radius: 10%;">Recent</span>
						</a>
						<a href="#">
							<span class="col-2 m-1 p-1" style="background-color:#18a689;border-radius: 10%;">subway</span>
						</a>
						<a href="#">
							<span class="col-2 m-1 p-1" style="background-color:#18a689;border-radius: 10%;">search</span>
						</a>
					</div>
					<div class=" m-2  row">
						<span class="col-4">State : </span>
						<select class="p-1" style="border:1px solid #e5e6e7">
							<option>used</option>
						</select>
					</div>
					<div class=" m-2  row">
						<span class="col-4">Title : </span>
						<input style="border:1px solid #e5e6e7">
					</div>
					<div class=" m-2  row">
						<span class="col-4">Price : </span>
						<input style="border:1px solid #e5e6e7">
					</div>
					<div class=" m-2  row">
						<span class="col-4"></span>
						<input type="checkbox" name="" value="">delivery
						<input type="checkbox" name="" value="">exchange
					</div>
					<div class=" m-2  row">
						<span class="col-4">Comments : </span>
						<input class="col-8" style="border:1px solid #e5e6e7;height:300px;">
					</div>
					<div class=" m-2  row">
						<span class="col-12 text-right">0/2000</span>
					</div>
					<div class=" m-2  row">
						<span class="col-4">Tags : </span>
						<input style="border:1px solid #e5e6e7">
					</div>
					<div class=" m-2  row">
						<span class="col-4">Quantity : </span>
						<input style="border:1px solid #e5e6e7">
					</div>
				</div>
			</form>
		</div>
	</div>
</div>
