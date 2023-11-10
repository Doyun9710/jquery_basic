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
		$( '#progressbar' ).progressbar({
			value: 50
		});
		/*
		$( '#btn1' ).button().on( 'click', function() {
			console.log( $( '#progressbar' ).progressbar( 'value' ) );
			
			let value = $( '#progressbar' ).progressbar( 'value' );
			$( '#progressbar' ).progressbar( 'value', value-5 );
		});
		
		$( '#btn2' ).button().on( 'click', function() {
			console.log( $( '#progressbar' ).progressbar( 'value' ) );
			
			let value = $( '#progressbar' ).progressbar( 'value' );
			$( '#progressbar' ).progressbar( 'value', value+5 );
		});
		*/
		$( 'button' ).button().on( 'click', function() {
			console.log( $( '#progressbar' ).progressbar( 'value' ) );
			let value = $( '#progressbar' ).progressbar( 'value' );

			if( $(this).attr("id") == "btn1" ) {
				$( '#progressbar' ).progressbar( 'value', value-5 );
			} else {
				$( '#progressbar' ).progressbar( 'value', value+5 );
			}
		});
	});
</script>
</head>
<body>

	<div id="progressbar"></div>
	<br /><hr /><br />
	<div>
		<button id="btn1">감소</button>
		<button id="btn2">증가</button>
	</div>

<br /><hr /><br />

</body>
</html>