<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>
<script type="text/javascript">
	// $ : jQuery용 특수 기호, $(document) == jQuery(document)
	$( document ).ready( function() {
		/*
		// 아이디 선택자
		$( '#h1' ).css( 'color', 'red' );
		$( '#h2' ).css( 'color', 'orange' );
		$( '#h3' ).css( 'color', 'yellow' );
		$( '#h4' ).css( 'color', 'green' );
		*/
		// 클래스 선택자
		$( '.c1' ).css( 'color', 'red' );
		$( '.c2' ).css( 'color', 'orange' );
		$( '.c3' ).css( 'color', 'yellow' );
		$( '.c4' ).css( 'color', 'green' );
	});
</script>
</head>
<body>
	<h2 id="h1" class="c1">Header-1</h2>
	<h3 id="h2" class="c2">Header-1</h3>
	<h2 id="h3" class="c3">Header-1</h2>
	<h3 id="h4" class="c4">Header-1</h3>
</body>
</html>