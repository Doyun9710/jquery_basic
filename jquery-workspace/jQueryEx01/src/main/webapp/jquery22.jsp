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
		// html 태그의 내용 읽기
		// innerHTML / textContent
		/*
		const html = document.getElementById( 'result' );
		
		console.log( html );
		// html 방식 - <b>출력 내용</b>
		console.log( html.innerHTML );
		// text 방식 - 출력 내용
		console.log( html.textContent );
		*/
		// READ
		console.log( $( '#result' ) );
		console.log( $( '#result' ).html );
		console.log( $( '#result' ).text() );
		
		
		// WRITE
		const html = document.getElementById( 'result' );
		//html.innerHTML = '<i>변경된 내용</i>';
		html.textContent = '<i>변경된 내용</i>';
		
		//$( '#result' ).html( '<i>변경된 내용</i>' );
		$( '#result' ).text( '<i>변경된 내용</i>' );
	});
</script>
</head>
<body>

<div id="result"><b>출력 내용</b></div>

</body>
</html>