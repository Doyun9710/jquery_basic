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

<div class="container mt-3">
	<form action="">
		<div class="m-3">
			<label for="email" class="form-label">Email : </label>
			<input type="text" id="email" class="form-control" placeholder="Enter Email" />
		</div>
		<div class="m-3">
			<label for="select" class="form-label">Select : </label>
			<select id="select" class="form-select">
				<option>1</option>
				<option>2</option>
				<option>3</option>
				<option>4</option>
			</select>
		</div>
		<div class="form-check">
			<input type="checkbox" id="check1" class="form-check-input" checked />
			<label for="check1" class="form-check-label">Option 1</label>
		</div>
		<div class="form-check">
			<input type="checkbox" id="check1" class="form-check-input" />
			<label for="check2" class="form-check-label">Option 2</label>
		</div>
		<div class="form-check">
			<input type="checkbox" id="check1" class="form-check-input" />
			<label for="check3" class="form-check-label">Option 3</label>
		</div>
		<div class="form-check">
			<input type="radio" class="form-check-input" id="radio1" name="optradio" value="option1" checked> 
			<label class="form-check-label" for="radio1">Option 1</label>
		</div>
		<div class="form-check">
			<input type="radio" class="form-check-input" id="radio2" name="optradio" value="option2"> 
			<label class="form-check-label" for="radio2">Option 2</label>
		</div>
		<div class="form-check">
			<input type="radio" class="form-check-input" disabled> 
			<label class="form-check-label">Option 3</label>
		</div>
		<button class="m-3 btn btn-primary">전송</button>
	</form>
</div>

<br /><hr /><br />

</body>
</html>