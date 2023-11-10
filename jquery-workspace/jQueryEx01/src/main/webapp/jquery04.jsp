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

		//$( 'div > *' ).css( 'color', 'red' );
		$( 'div *' ).css( 'color', 'red' );
	});
</script>
</head>
<body>

<div>
	<ul>
		<li>사과</li>
		<li>수박</li>
		<li>딸기</li>
	</ul>
	<ul>
		<li>사과</li>
		<li>수박</li>
		<li>딸기</li>
	</ul>
</div>

</body>
</html>