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
		let copyObj;
		
		document.getElementById( 'btn1' ).onclick = function() {
			copyObj = $( '#result' ).children().clone();
		};
		
		document.getElementById( 'btn2' ).onclick = function() {
			$( '#result' ).append( copyObj );
		};
	});
</script>
</head>
<body>

<button id="btn1">복사</button>
<button id="btn2">붙여넣기</button>

<br /><hr /><br />

<div id="result">
	<p>내용 1</p>
	<p>내용 2</p>
</div>

</body>
</html>