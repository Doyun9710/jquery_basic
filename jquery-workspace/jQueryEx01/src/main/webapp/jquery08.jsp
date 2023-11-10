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
		$( 'tr:nth-child(2n)' ).css( 'background-color', '#f9f9f9' );
		$( 'tr:nth-child(2n+1)' ).css( 'background-color', '#9f9f9f' );
		
		$( 'tr:eq(0)' ).css({
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