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
		var obj = [{
			"area" : "서울"
		}, {
			"area" : "부산"
		}, {
			"area" : "전주"
		}]
		
		$(obj).each(function(i, o) {
			console.log(i + ":", o);
		});
		console.log( "====The End1====" );
		
		$.each($("#menu2 li"), function(i, o) {
			console.log(i + ":", o);
		});
		console.log( "====The End2====" );
		
		$.each($("#menu2 li"), function(i) {
			console.log(i + ":", $(this));
		});
	});
</script>
</head>
<body>

<h1>탐색 선택자</h1>
<ul id="menu1">
	<li>내용1-1</li>
	<li>내용1-2</li>
	<li>내용1-3</li>
</ul>
<ul id="menu2">
	<li>내용2-1</li>
	<li>내용2-2</li>
	<li>내용2-3</li>
</ul>

</body>
</html>