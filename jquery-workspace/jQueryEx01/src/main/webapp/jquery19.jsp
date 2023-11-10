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
		//console.log( $( document ).find( 'h2' ) );
		/*
		$( document ).find( 'h2' ).each( function(index, item) {
			console.log( item.innerHTML );
		});
		*/
		
		$( document ).find( '.c' ).each( function(index, item) {
			console.log( item.innerHTML );
		});
	});
</script>
</head>
<body>

<h2 class="c">header-1</h2>
<h2>header-2</h2>
<h2 class="c">header-3</h2>
<h2>header-4</h2>
<h2 class="c">header-5</h2>
<h2>header-6</h2>

</body>
</html>