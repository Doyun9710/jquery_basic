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
		// 짝수 / 홀수
		$( 'h2' ).css( 'background-color', 'orange' );
		$( 'h2' ).filter( ':even' ).css( 'color', 'red' );
		$( 'h2' ).filter( ':odd' ).css( 'color', 'white' );
		*/
		/*
		// 짝수 속 홀수
		$( 'h2' )
			.css( 'background-color', 'orange' )
			.filter( ':even' ).css( 'color', 'red' )
			.filter( ':odd' ).css( 'color', 'white' )
		*/
		// 짝수 / 홀수
		$( 'h2' )
			.css( 'background-color', 'orange' )
			.filter( ':even' ).css( 'color', 'red' )
			.end()
			.filter( ':odd' ).css( 'color', 'white' )
	});
</script>
</head>
<body>

<h2>header-1</h2>
<h2>header-2</h2>
<h2>header-3</h2>
<h2>header-4</h2>
<h2>header-5</h2>
<h2>header-6</h2>

</body>
</html>