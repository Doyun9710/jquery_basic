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
		const array = [
			{ name: 'daum', link: 'https://www.daum.net' },
			{ name: 'naver', link: 'https://www.naver.com' },
			{ name: 'google', link: 'https://www.google.co.kr' }
		];

		let array2 = $.map( array, function( item ) {
			//console.log( 'test' );
			//console.log( item );
			
			//return item;
			return item.name;
		});
		
		console.log( array2 );
		
		let array3 = $( 'h2' ).map( function(index, item) {
			console.log( item.innerHTML );
			return item.innerHTML;
		});
		
		console.log( array3 );
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