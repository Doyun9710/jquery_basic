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

		$( '#wrap > section' ).children().css({
			"background-color":"yellow",
			"border":"2px solid #f00"
		});
	});
</script>
</head>
<body>

<div id="wrap">
	<h1>인접 관계 선택자</h1>
	<p>내용1</p>
	<section>
		<h1>자식 요소 선택자</h1>
		<p>내용2</p>
	</section>
</div>

</body>
</html>