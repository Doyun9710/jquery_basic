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
		document.getElementById( 'btn1' ).onclick = function() {
			$( '<img />', {
				src: './images/Jellyfish.jpg',
				width: 512,
				height: 384
			}).appendTo( '#result' );
		};
		
		document.getElementById( 'btn2' ).onclick = function() {
			const h2 = '<h2>Header-2</h2>';
			const h3 = '<h3>Header-3</h3>';
			
			$( 'body' ).append(h2, h3, h2, h3);
		};
		
		document.getElementById( 'btn3' ).onclick = function() {
			const content = [
				{ name: '김영희', region: '서울시 강남구' },
				{ name: '김철수', region: '서울시 광진구' },
				{ name: '홍길동', region: '서울시 강서구' }
			];
			
			$( 'div' ).append( function(index) {
				const item = content[index];
				
				let output = '';
				output += '<h2>' + item.name + '</h2>';
				output += '<h3>' + item.region + '</h3>';
				return output;
			} );
		};
	});
</script>
</head>
<body>

<button id="btn1">추가 1</button>
<button id="btn2">추가 2</button>
<button id="btn3">추가 3</button>

<br /><hr /><br />

<div id="result"></div>
<div id="result"></div>
<div id="result"></div>

</body>
</html>