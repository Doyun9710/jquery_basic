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
			<label for="password" class="form-label">Password : </label>
			<input type="text" id="email" class="form-control" placeholder="Enter Password" />
		</div>
		<div class="m-3">
			<label for="comment" class="form-label">Comment : </label>
			<textarea id="comment" rows="5" class="form-control"></textarea>
		</div>
		<div class="m-3">
			<label for="color" class="form-label">Color : </label>
			<input type="color" id="color" class="form-control" title="색상 선택" />
		</div>
		<button class="m-3 btn btn-primary">전송</button>
	</form>
</div>

<br /><hr /><br />

</body>
</html>