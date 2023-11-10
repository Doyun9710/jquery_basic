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
		// 동적 이미지 태그 추가
		document.getElementById( 'btn1' ).onclick = function() {
			$( '<img />', {
				src: './images/Jellyfish.jpg',
				width: 512,
				height: 384
			}).appendTo( '#result' );
		};
		
		document.getElementById( 'btn2' ).onclick = function() {
			$( '<img />' )
					.attr({ 
						src: './images/Jellyfish.jpg',
						width: 512,
						height: 384 
					})
					.appendTo( '#result' );
		};
		
		document.getElementById( 'btn3' ).onclick = function() {
			// 한 개 속성
			//console.log( $( 'img' ).attr( 'src' ) );
			
			// 반복문 X 속성 출력
			$( 'img' ).each( function(index, item) {
				console.log( item );
			});
		};
	});
</script>
</head>
<body>

<button id="btn1">속성추가</button>
<button id="btn2">속성추가</button>
<button id="btn3">내용</button>

<br /><hr /><br />

<div id="result"></div>

</body>
</html>