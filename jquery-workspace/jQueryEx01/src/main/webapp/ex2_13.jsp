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
		$( "#inner_1 p:contains(내용1)" )
			.css({ "background-color":"#ff0" });
		
		$( "#inner_1 p:has(strong)" )
			.css({ "background-color":"#0ff" });
		
		$( "#outer_wrap" ).contents()
			.css({ "border":"1px dashed #00f" });
		
		$( "#inner_2 p" ).not( ":first" )
			.css({ "background-color":"#0f0" });
		
		$( "#inner_2 p" ).eq(2).end()
			.css({ "color":"#f00" });
	});
</script>
</head>
<body>

<div id="outer_wrap">
	<h1>콘텐츠 탐색 선택자</h1>
	<section id="inner_1">
		<h1>contains().contnts().has()</h1>
		<p>
			<span>내용1</span>
		</p>
		<p>
			<strong>내용2</strong>
		</p>
		<p>
			<span>내용3</span>
		</p>
	</section>
	<section id="inner_2">
		<h1>not(),end()</h1>
		<p>내용4</p>
		<p>내용5</p>
		<p>내용6</p>
	</section>
</div>

</body>
</html>