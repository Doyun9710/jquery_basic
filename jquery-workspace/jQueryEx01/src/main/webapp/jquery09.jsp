<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>
<script type="text/javascript">
	$( document ).ready( function() {
		$( 'table' )
			.css( 'width', '800' );
		
		// select 문을 통한 css 변경
		$( 'tr:eq(0)' )
			.css( 'background-color', '#000000' )
			.css( 'color', '#ffffff' );
		
		// 메서드 체이닝 (Method Chaining)
		$( 'tr' )
			.eq(0)
			.css( 'background-color', '#000000' )
			.css( 'color', '#ffffff' );
		
		$( 'tr' )
			.first()
			.css( 'background-color', '#000000' )
			.css( 'color', '#ffffff' );
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