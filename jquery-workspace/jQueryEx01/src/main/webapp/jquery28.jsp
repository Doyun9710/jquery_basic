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
			console.log( document.frm.data1.value );
			console.log( $( '#data1' ).val() );
			
			console.log( $( '#data1' ).val( '새로운 값' ) );
		};
	});
</script>
</head>
<body>

<button id="btn1">내용확인</button>

<form name="frm">
데이터 1 : <input type="text" id="data1" name="data1" />
</form>

</body>
</html>