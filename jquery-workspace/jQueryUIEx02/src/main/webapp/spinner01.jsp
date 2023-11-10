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
		$( '#spinner' ).spinner({
			min: 0,
			max: 20,
			step: 5,
			
			spin: function() {
				console.log( $( this ).spinner( 'value' ) );
			}
		});
	});
</script>
</head>
<body>

<input type="text" id="spinner" value="5" readonly />

<br /><hr /><br />

</body>
</html>