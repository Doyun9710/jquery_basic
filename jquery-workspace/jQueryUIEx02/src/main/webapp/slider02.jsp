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
		$( '#slider' ).slider({
			range: true,
			min: 0,
			max: 500,
			values: [75, 300],
			slide: function() {
				console.log( $( this ).slider( 'values', 0 ) );
				console.log( $( this ).slider( 'values', 1 ) );
			}
		});
		
		// slider에 값 설정
		// $('#slider').slider('value', value);
	});
</script>
</head>
<body>

<div id="slider"></div>

<br /><hr /><br />

</body>
</html>