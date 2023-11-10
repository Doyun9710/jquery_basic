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
		// 배열
		// 객체
		const obj = {
				name: '홍길동',
				region: '서울시 강남구',
				part: '베이스'
		};
		
		$.each( obj, function( key, value ) {
			console.log( key, ' / ', value );
		});
		
	});
</script>
</head>
<body>

<div></div>

</body>
</html>