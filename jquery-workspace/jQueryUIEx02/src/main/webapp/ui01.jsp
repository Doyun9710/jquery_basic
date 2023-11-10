<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/dark-hive/jquery-ui.min.css" />
<style type="text/css">
	body {
		font-size: 80%;
	}
</style>
<script type="text/javascript" src="./js/jquery-3.7.1.min.js"></script>
<script type="text/javascript" src="./js/jquery-ui.min.js"></script>
<script type="text/javascript">
	$( document ).ready( function() {
		// jquery ui - Button
		//$( '#btn1' ).button();
		$( 'input[type="button"]' ).button();
		$( 'a' ).button();
		$( 'div' ).button();
	});
</script>
</head>
<body>

<input type="button" value="버튼 1" /><br /><br />
<input type="button" id="btn1" value="버튼 2" /><br /><br />

<a href="https://www.daum.net">다음 바로가기</a><br /><br />
<div>난 버튼</div>

</body>
</html>