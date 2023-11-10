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
		// a - 기본동작을 포함하는 태그
		// input type='submit'
		$( 'a' ).on( 'click', function( e ) {
			console.log( 'click' );
			
			// 기본동작 제거
			e.preventDefault();
		});
	});
</script>
</head>
<body>

<a href="https://www.daum.net">다음 바로가기</a>

<br /><hr /><br />

</body>
</html>