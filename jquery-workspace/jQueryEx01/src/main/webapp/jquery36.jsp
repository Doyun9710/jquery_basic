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
		/*
		$( document ).on( 'click', function( e ) {
			$( '#posX' ).text( e.pageX );
			$( '#posY' ).text( e.pageY );
		});
		*/
		$( document ).on( 'mousemove', function( e ) {
			$( '#posX' ).text( e.pageX );
			$( '#posY' ).text( e.pageY );
		});
	});
</script>
</head>
<body>

<p>X : <span id="posX">0</span></p>
<p>Y : <span id="posY">0</span></p>

<br /><hr /><br />

</body>
</html>