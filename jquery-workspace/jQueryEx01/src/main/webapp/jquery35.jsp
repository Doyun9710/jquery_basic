<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>
<script type="text/javascript">
	$( document ).ready( function() {
		$( '#btn1' ).on( 'click', function() {
			console.log( 'btn1 click' );
			
			$( this ).off();
		} );
		
		$( '#btn2' ).one( 'click', function() {
			console.log( 'btn2 click' );
		} );
	});
</script>
</head>
<body>

<button id="btn1">버튼 1</button>
<button id="btn2">버튼 2</button>

<br /><hr /><br />

</body>
</html>