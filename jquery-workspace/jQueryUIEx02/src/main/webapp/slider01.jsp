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
			orientation: 'vertical',
			
			value: 50,
			min: 0,
			max: 200,
			step: 20,
			
			//change: function() {
			slide: function() {
				console.log( 'change' );
				console.log( $( this ).slider( 'value' ) );
			}
		});
		
		$( '#btn' ).on( 'click', function() {
			console.log( "slider 값 확인 : ", $( '#slider' ).slider( 'value' ) );
		});
	});
</script>
</head>
<body>

<div id="slider"></div>

<br /><hr /><br />

<button id="btn">값 확인</button>

<br /><hr /><br />

</body>
</html>