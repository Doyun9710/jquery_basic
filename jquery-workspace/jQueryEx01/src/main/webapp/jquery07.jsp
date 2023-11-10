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
		$( 'table' ).css( 'width', '800' );
		
		// 위치 : 짝수 or 홀수
		$( 'tr:odd' ).css( 'background-color', '#f9f9f9' );
		$( 'tr:even' ).css( 'background-color', '#9f9f9f' );
		
		// 특정 위치
		// ${ 'tr:first' }.css( 'color', 'blue' );
		// ${ 'tr:first' }.css( 'background-color', '#ffffff' );
		$( 'tr:first' ).css({
			'color': 'blue',
			'background-color': '#ffffff'
		});
	});
</script>
</head>
<body>

<table>
<tr>
	<td>1</td>
	<td>2</td>
</tr>
<tr>
	<td>1</td>
	<td>2</td>
</tr>
<tr>
	<td>1</td>
	<td>2</td>
</tr>
<tr>
	<td>1</td>
	<td>2</td>
</tr>
<tr>
	<td>1</td>
	<td>2</td>
</tr>
<tr>
	<td>1</td>
	<td>2</td>
</tr>
<tr>
	<td>1</td>
	<td>2</td>
</tr>
</table>

</body>
</html>