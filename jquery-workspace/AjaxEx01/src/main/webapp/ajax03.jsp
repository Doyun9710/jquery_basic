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
		document.getElementById( 'btn' ).onclick = function() {
			const request = new XMLHttpRequest();

			request.onreadystatechange = function() {
				if( request.readyState == 4 ) {
					if( request.status == 200 ) {
						console.log( '요청 완료' );
						console.log( request.status );
					} else {
						alert( '잘못된 페이지 요청' );
					}
				}
			};
			
			request.open( 'GET', './data/data.csv', true );
			request.send();

			console.log( '전송 완료' );
		};
	};
</script>
<body>

<button id="btn">비동기식 요청하기</button>
<br /><hr /><br />
결과 : 

</body>
</html>