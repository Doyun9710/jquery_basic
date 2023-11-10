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
		$( 'h3' ).on('click', function() {
			$( this ).html( function(index, item) {
				return item + '*';
			});
		});
		
		setInterval( function() {
			$( 'h3' ).last().trigger( 'click' );
		}, 1000);
	});
</script>
</head>
<body>

<h3>Start :</h3>
<h3>Start :</h3>

<br /><hr /><br />

</body>
</html>