<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/base/jquery-ui.min.css" />
<style type="text/css">
	body {
		font-size: 80%;
	}
</style>
<script type="text/javascript" src="./js/jquery-3.7.1.min.js"></script>
<script type="text/javascript" src="./js/jquery-ui.min.js"></script>
<script type="text/javascript">
	$( document ).ready( function() {
		$( '#btn1' ).button();
		
		$( '#btn2' ).button().on( 'click', function( e ) {
			alert( '버튼 클릭' );
			e.preventDefault();	// 링크 이동 방지
		});
		
		$( '#btn3' ).button().on( 'click', function( e ) {
			alert( '버튼 클릭' );
			e.preventDefault();
		});
	});
</script>
</head>
<body>

<button id="btn1">버튼 1</button>

<a href="https://www.daum.net" id="btn2">버튼 2</a>

<br /><br />

<form action="test.jsp" method="post">
	<input type="submit" value="버튼 3" id="btn3" /><br /><br />
</form>

<br /><hr /><br />

</body>
</html>