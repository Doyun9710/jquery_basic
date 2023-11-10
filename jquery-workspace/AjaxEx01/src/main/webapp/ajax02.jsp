<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">
	window.onload = function() {
		document.getElementById( 'btn1' ).onclick = function() {
			const request = new XMLHttpRequest();
			// 동기식 요청
			request.open( 'GET', './data/data.csv', false );
			request.send();
			
			console.log( '전송 완료' );
			console.log( request.responseText );
		};
		
		document.getElementById( 'btn2' ).onclick = function() {
			const request = new XMLHttpRequest();
			// 비동기식 요청
			request.open( 'GET', './data/data.csv', true );
			request.send();
			
			console.log( '전송 완료' );
			console.log( request.responseText );
		};
		
		// ajax <==> thread
		document.getElementById( 'btn3' ).onclick = function() {
			const request = new XMLHttpRequest();

			request.onreadystatechange = function() {
				//console.log( request.readyState );
				if( request.readyState == 4 ) {
					console.log( request.responseText );
					console.log( '요청 완료' );
				}
			};
			
			request.open( 'GET', './data/data.csv', true );
			request.send();

			console.log( '전송 완료' );
		};
	};
</script>
<body>

<button id="btn1">동기식 요청하기</button>
<button id="btn2">비동기식 요청하기</button>
<button id="btn3">비동기식 요청하기</button>
<br /><hr /><br />
결과 : 

</body>
</html>