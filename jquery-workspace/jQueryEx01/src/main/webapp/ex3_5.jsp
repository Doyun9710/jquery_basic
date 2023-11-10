<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>
<script type="text/javascript">
	$( function() {
		var result_1 = $( "#chk1" ).prop( "checked" );
		console.log( result_1 );
		
		var result_2 = $( "#chk2" ).prop( "checked" );
		console.log( result_2 );
		
		var result_2 = $( "#chk3" ).prop( "checked", true );
		
		var result_3 = $( "#se_1" ).prop( "selectedIndex" );
		console.log( result_3 );
	});
</script>
<style>
.aqua{ background-color: #off; }
</style>
</head>
<body>

<h1>
	<strong>객체 조작 및 생성</strong>
</h1>
<form action="#" id="form_1">
	<p>
		<input type="checkbox" name="chk1" id="chk1">
		<label for="chk1">chk1</label>
		<input type="checkbox" name="chk2" id="chk2">
		<label for="chk2">chk2</label>
		<input type="checkbox" name="chk3" id="chk3">
		<label for="chk3">chk3</label>
	</p>
	<p>
		<select name="se_1" id="se_1">
			<option value="opt1">option1</option>
			<option value="opt2">option2</option>
			<option value="opt3" selected>option3</option>
		</select>
	</p>
</form>

</body>
</html>