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
		// 전체 통합
		// $( 'h2' ).css( 'border', '1px solid black' );
		
		// 한 개씩 별도
		$( 'h2' ).each( function(index, item) {
			$( this.css( 'border', index+1 + 'px solid black' ) );
		});
	});
</script>
</head>
<body>

<h2>header-1</h2>
<h2>header-2</h2>
<h2>header-3</h2>
<h2>header-4</h2>
<h2>header-5</h2>
<h2>header-6</h2>

</body>
</html>