<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>
<script type="text/javascript">
	$( function() {
		$( "#p1" ).addClass( "aqua" );
		$( "#p2" ).removeClass( "red" );
		$( "#p3" ).toggleClass( "green" );
		$( "#p4" ).toggleClass( "green" );
		$( "#p6" ).text($('#p5').hasClass( "yellow" ));
	});
</script>
<style>
.aqua{ background-color: #off; }
</style>
</head>
<body>

<p id="p1">내용1</p>
<p id="p2" class="red">내용2</p>
<p id="p3">내용3</p>
<p id="p4" class="green">내용4</p>
<p id="p5" class="yellow">내용2</p>
<p id="p6"></p>

</body>
</html>