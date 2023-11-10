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
	
	.ui-tabs { width: 80%; }
</style>
<script type="text/javascript" src="./js/jquery-3.7.1.min.js"></script>
<script type="text/javascript" src="./js/jquery-ui.min.js"></script>
<script type="text/javascript">
	$( document ).ready( function() {
		
		$( '#btn1' ).button().on( 'click', function() {
			let row = 1;
			$( '#tabs' ).append( '<li><a href="#tabs-' + row + '">' + row + '단</a></li>' );
			
			let html = '<div id="tabs-' + row + '"><p>';
			for( col=1 ; col<=9 ; col++ ) {
				html += row + ' X ' + col + ' = ' + (row*col) + '<br />';
			}
			html += '</p></div>';
			
			$( '#tabs' ).tabs().append( html );
			$( '#tabs' ).tabs( 'refresh' );
		});
		
		$( '#btn2' ).button().on( 'click', function() {
			let row = 2;
			$( '#tabs' ).append( '<li><a href="#tabs-' + row + '">' + row + '단</a></li>' );
			
			let html = '<div id="tabs-' + row + '"><p>';
			for( col=1 ; col<=9 ; col++ ) {
				html += row + ' X ' + col + ' = ' + (row*col) + '<br />';
			}
			html += '</p></div>';
			
			$( '#tabs' ).tabs().append( html );
			$( '#tabs' ).tabs( 'refresh' );
		});
		
	});
</script>
</head>
<body>

<button id="btn1">1단 보이기</button>
<button id="btn2">2단 보이기</button>

<br /><hr /><br />

<div id="tabs">
	<ul></ul>
</div>

</body>
</html>