<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/base/jquery-ui.min.css" />
<style type="text/css">
	body {
		font-size: 80%;
	}
</style>
<script type="text/javascript" src="./js/jquery-3.7.1.min.js"></script>
<script type="text/javascript" src="./js/jquery-ui.min.js"></script>
<script type="text/javascript">
	$( document ).ready( function() {
		//$( 'input[type="checkbox"]' ).checkboxradio();
		
		// toggle button
		$( 'input[type="checkbox"]' ).checkboxradio({
			icon: false
		});
		
		$( 'input[type="radio"]' ).checkboxradio({
			icon: false
		}).on( 'click', function() {
			console.log( 'click' );
		});
	});
</script>
</head>
<body>

<fieldset>
	<legend>호텔 등급</legend>
	<label for="cb1">2 Start</label><input type="checkbox" id="cb1" />
	<label for="cb2">3 Start</label><input type="checkbox" id="cb2" />
	<label for="cb3">4 Start</label><input type="checkbox" id="cb3" />
	<label for="cb4">5 Start</label><input type="checkbox" id="cb4" />
</fieldset>

<fieldset>
	<legend>호텔 등급</legend>
	<label for="r1">2 Start</label><input type="radio" name="r" id="r1" />
	<label for="r2">3 Start</label><input type="radio" name="r" id="r2" />
	<label for="r3">4 Start</label><input type="radio" name="r" id="r3" />
	<label for="r4">5 Start</label><input type="radio" name="r" id="r4" />
</fieldset>

<br /><hr /><br />

</body>
</html>