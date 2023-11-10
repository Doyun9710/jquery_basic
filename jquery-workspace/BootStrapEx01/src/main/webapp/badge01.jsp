<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<style type="text/css">

</style>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/jquery@3.7.0/dist/jquery.min.js"></script>
<script type="text/javascript" src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>
<script type="text/javascript">
	$( document ).ready( function() {
		let count = 4;
		
		$( '#btn1' ).on( 'click', function() {
			$( '#spn' ).text( --count );
		});
		$( '#btn2' ).on( 'click', function() {
			$( '#spn' ).text( ++count );
		});
	});
</script>
</head>
<body>

<div class="container">
	<button class="btn btn-primary">
	Message<span id="spn" class="badge bg-danger">4</span>
	</button>
	<br /><br />
	<div>
		<button id="btn1" class="btn btn-secondary float-start">감소</button>
		<button id="btn2" class="btn btn-secondary float-end">증가</button>
	</div>
</div>

<br /><hr /><br />

</body>
</html>