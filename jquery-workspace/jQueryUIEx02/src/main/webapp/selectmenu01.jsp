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
		$( '#fruits' ).selectmenu({
			width: 300,
			
			change: function() {
				console.log( $( '#fruits' ).val() );
			}
		});
	});
</script>
</head>
<body>

<select id="fruits">
	<option id="기타" selected="selected">다음을 선택하라</option>
	<optgroup label="A Class">
		<option id="사과">apple</option>
		<option id="수박">water melon</option>
	</optgroup>
	<optgroup label="B Class">
		<option id="딸기">strawberry</option>
		<option id="참외">korean melon</option>
	</optgroup>
</select>

<br /><hr /><br />

</body>
</html>