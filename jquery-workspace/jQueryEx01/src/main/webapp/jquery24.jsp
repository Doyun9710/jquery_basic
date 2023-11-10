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
			//$( '<i>Hello jQuery</i>' ).appendTo( '#result' );
			$( '<i></i>' ).html( 'Hello jQuery 2' ).appendTo( '#result' );
		};
		
		document.getElementById( 'btn2' ).onclick = function() {
			//$( '#result' ).html( '' );
			// 후손 삭제
			//$( 'div' ).empty();
			// 자신 삭제
			$( '#result' ).remove();
		};
	});
</script>
</head>
<body>

<button id="btn1">추가</button>
<button id="btn2">삭제</button>

<br /><hr /><br />

<div id="result"></div>

</body>
</html>