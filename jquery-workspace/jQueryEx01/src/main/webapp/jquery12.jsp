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
		const array = [
			{ name: 'daum', link: 'https://www.daum.net' },
			{ name: 'naver', link: 'https://www.naver.com' },
			{ name: 'google', link: 'https://www.google.co.kr' }
		];
		/*
		// 메서드(for 내장)
		array.forEach( function(item, index) {
			console.log( index, '/', item.name, '/', item.link );
			
			let output = '';
			output += '<a href="' + item.link + '">';
			output += '<h2>' + item.name + '</h2>';
			output += '</a>';
			
			document.body.innerHTML += output;
		} );
		*/
		/*
		$.each( array, function(index, item) {
			let output = '';
			output += '<a href="' + item.link + '">';
			output += '<h2>' + item.name + '</h2>';
			output += '</a>';
			
			//console.log( output );
			
			// overwrite
			//$( 'body' ).html( output );
			$( 'body' ).append( output );
		});
		*/
		
		// Lambda, 화살표 함수
		$.each( array, (index, item) => {
			let output = '';
			output += '<a href="' + item.link + '">';
			output += '<h2>' + item.name + '</h2>';
			output += '</a>';
			
			//console.log( output );
			
			// overwrite
			//$( 'body' ).html( output );
			$( 'body' ).append( output );
		});
	});
</script>
</head>
<body>

<div>
	
</div>

</body>
</html>