<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>
<script type="text/javascript">
	// $ : jQuery용 특수 기호, $(document) == jQuery(document)
	$( document ).ready( function() {

		// input 태그 속 text 타입
		// $( 'input[ type = "text" ]' ).css( 'background-color', 'yellow' );
		
		// ~으로 시작하는, 끝나는
		// $( 'input[ type^ = "te" ]' ).css( 'background-color', 'blue' );
		// $( 'input[ type* = "ex" ]' ).css( 'background-color', 'blue' );
		
		// ~으로 끝나는
		// $( 'input[ data$ = "t1" ]' ).css( 'background-color', 'green' );
		
		// 입력 양식
		$( 'input:text' ).css( 'background-color', 'blue' );
	});
</script>
</head>
<body>

<input type="text" data="text1"><br /><br />
<input type="text" data="text2"><br /><br />
<input type="password" data="text3"><br /><br />

</body>
</html>