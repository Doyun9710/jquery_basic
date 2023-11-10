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
		$( '#btn' ).on( 'click', function() {
			$.ajax({
				url: './data/json1.jsp',
				type: 'get',
				dataType: 'json',
				// readyState == 4 && status == 200
				success: function( json ) {
					/*
					console.log( '[성공]');
					console.log( json );
					*/
					
					$.each( json, function(index, item) {
						console.log( item.name );
					});
				},
				error: function() {
					console.log( '[에러]');
				}
			});
		});
	});
</script>
</head>
<body>

<button id="btn">요청</button>

<br /><hr /><br />

</body>
</html>