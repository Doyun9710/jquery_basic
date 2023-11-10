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
		$( '#l1' )
			.css( 'color', 'red' );
		$( '#l1' )
			.parent().css( 'color', 'blue' );
		*/
		$( '#d1' )
			.children().css( 'color', 'green' );
		$( '#d1' )
			.children( 'ol' ).css( 'color', 'green' );
		$( '#d1' )
			.prev().css( 'color', 'blue' );
		$( '#d1' )
			.next().css( 'color', 'red' );
	});
</script>
</head>
<body>

<div>
	<div>내용 1</div>
	<div>내용 1</div>
	<div id="d1">
		<ul>
			<li id="l1">사과</li>
			<li>수박</li>
			<li>딸기</li>
		</ul>
		<ul>
			<li id="l2">사과</li>
			<li>수박</li>
			<li>딸기</li>
		</ul>
	</div>
	<div>내용 3</div>
	<div>내용 4</div>
</div>

</body>
</html>