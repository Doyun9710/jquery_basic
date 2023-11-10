<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>
<script type="text/javascript">
	$( function() {
		$( 'h2:even' ).css({
			backgroundColor: '#000000',
			color: '#ffffff'
		});	
		
		$( 'h2' ).filter( ':odd' ).css({
			backgroundColor: '#000000',
			color: '#ffffff'
		});
		
		const h2 = $( 'h2' );
		h2.filter( ':even' ).css( 'color', 'blue' );
		h2.filter( ':odd' ).css( 'color', 'gray' );
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