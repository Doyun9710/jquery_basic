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
			//alert( 'click' );
			const request = new XMLHttpRequest();
			request.open( 'GET', './data/data.csv', false );
			request.send();
			
			console.log( '전송 완료' );
			console.log( request.responseText );
		};
	};
</script>
<body>

<button id="btn">요청하기</button>
<br /><hr /><br />
결과 : 

</body>
</html>