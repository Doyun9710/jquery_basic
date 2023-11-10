<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 개발용 버전의 라이브러리 포함 -->
<!-- <script type="text/javascript" src="./js/jquery-3.7.1.js"></script> -->

<!-- 서비스용 버전의 라이브러리 포함 -->
<!-- <script type="text/javascript" src="./js/jquery-3.7.1.min.js"></script> -->

<!-- 네트워크 버전의 라이브러리 포함 -->
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>

<script type="text/javascript">
	// $ : jQuery용 특수 기호, $(document) == jQuery(document)
	$( document ).ready( function() {
		// jQuery 시작
		console.log( 'Hello jQuery1' );
	});
	/*
	jQuery( document ).ready( function() {
		console.log( 'Hello jQuery2' );
	});
	
	$( function() {
		console.log( 'Hello jQuery3' );
	});
	*/
</script>
</head>
<body>
	Hello jQuery
</body>
</html>