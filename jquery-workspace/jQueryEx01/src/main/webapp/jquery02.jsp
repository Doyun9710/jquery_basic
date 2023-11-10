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
		
		$( seletor ).함수(); 함수 = 효과
		$( seletor ).css( '속성', '값' );
		$( seletor ).css( 'color', 'red' ); => 글자색 red
		$( seletor ).css( 'background-color', 'red' ); => 배경색 red
		
		// 전체 선택자
		$( '*' ).css( 'color', 'red' );
		// 태그 선택자
		$( 'h2' ).css( 'color', 'red' );
		$( 'h3' ).css( 'color', 'blue' );
		$( 'h' + '3' ).css( 'color', 'green' );
		
		const selector = 'h3';
		const attr = 'color';
		const value = 'magenta';
		$( selector ).css( attr, value );
		
		$( 'h2, h3' ).css( 'color', 'red' );
	});
</script>
</head>
<body>
	<h2>Header-1</h2>
	<h3>Header-1</h3>
	<h2>Header-1</h2>
	<h3>Header-1</h3>
</body>
</html>