<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<style type="text/css">

</style>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
<script type="text/javascript">

</script>
</head>
<body>

<div id="demo" class="p-5 carousel slide" data-bs-ride="carousel">
	<div class="varousel-inner">
		<div class="carousel-item active">
			<img src="https://www.w3schools.com/bootstrap5/la.jpg"/>
			<div class="carousel-caption">
				<h3>Los Angeles</h3>
				<p>We had such a great time in LA!</p>
			</div>
		</div>
		<div class="carousel-item">
			<img src="https://www.w3schools.com/bootstrap5/chicago.jpg"/>
			<div class="carousel-caption">
				<h3>Chicago</h3>
        		<p>Thank you, Chicago!</p>
			</div>
		</div>
		<div class="carousel-item">
			<img src="https://www.w3schools.com/bootstrap5/ny.jpg"/>
			<div class="carousel-caption">
				<h3>New York</h3>
        		<p>We love the Big Apple!</p>
			</div>
		</div>
	</div>
	
	<!-- 현재 진행 순서 -->
	<ul class="carousel-indicators">
		<li data-bs-target="#demo" data-bs-slide-to="0" class="active"></li>
		<li data-bs-target="#demo" data-bs-slide-to="1"></li>
		<li data-bs-target="#demo" data-bs-slide-to="2"></li>
	</ul>

	<!-- Left and right controls/icons -->
	<button class="carousel-control-prev" type="button"
		data-bs-target="#demo" data-bs-slide="prev">
		<span class="carousel-control-prev-icon"></span>
	</button>
	<button class="carousel-control-next" type="button"
		data-bs-target="#demo" data-bs-slide="next">
		<span class="carousel-control-next-icon"></span>
	</button>
</div>

<br /><hr /><br />

</body>
</html>