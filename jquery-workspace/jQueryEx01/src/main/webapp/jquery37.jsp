<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	* { border: 1px solid orange; 
		text-align: center;
		padding: 15px
	}
</style>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>
<script type="text/javascript">
	$( document ).ready( function() {
		// 가운데 클릭 시 모든 이벤트 호출 => 이벤트의 전파
		$( '#h' ).on( 'click', function() {
			console.log( 'h' );
		});
		
		$( '#p' ).on( 'click', function( e ) {
			console.log( 'p' );
			if( e.stopPropagation ) {
				e.stopPropagation();
			}
		});
	});
</script>
</head>
<body>

<div onclick="console.log( 'outer-div' )">
	<div onclick="console.log( 'inner-div' )">
		<h1 id="h">
			<p id="p">내용내용내용내용내용</p>
		</h1>
	</div>
</div>

<br /><hr /><br />

</body>
</html>