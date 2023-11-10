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
		$( '#btn' ).on('click mouseover mouseleave', function() {
			console.log( 'btn click' );
		});
		*/
		$( '#btn' ).on({
			'click': function() {
				console.log( 'btn click' );
			},
			'mouseover': function() {
				console.log( 'mouseover' );
			},
			'mouseleave': function() {
				console.log( 'mouseleave' );
			}
		});
	});
</script>
</head>
<body>

<button id="btn">내용확인</button>

<br /><hr /><br />

</body>
</html>