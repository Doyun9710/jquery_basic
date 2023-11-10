<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>
<script type="text/javascript">
	// $ 충돌 방지
	$.noConflict();
	const J = jQuery;
	
	//$( document ).ready( function() {});
	jQuery( document ).ready( function() {});
	
	J( document ).ready( function() {
		console.log( J( 'body' ).text() );
	});
</script>
</head>
<body>

Hello jQuery

</body>
</html>