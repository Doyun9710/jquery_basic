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
</style>
<script type="text/javascript" src="./js/jquery-3.7.1.min.js"></script>
<script type="text/javascript" src="./js/jquery-ui.min.js"></script>
<script type="text/javascript">
	$( document ).ready( function() {
		$( '#spinnerStart' ).spinner({
			min: 1,
			max: 9,
			step: 1
		});
		$( '#spinnerEnd' ).spinner({
			min: 1,
			max: 9,
			step: 1
		});
		
		$( '#btn' ).button().on( 'click', function() {
			// console.log( 'click' );
			
			// console.log( $( '#spinnerStart' ).val(), $( '#spinnerEnd' ).val() );
			const startDan = $( '#spinnerStart' ).val();
			const endDan = $( '#spinnerEnd' ).val();
			
			let result = '<table border="1">';
			for( let row=startDan ; row<=endDan ; row++ ) {
				result += '<tr>';
				for( let col=1 ; col<=9 ; col++ ) {
					result += '<td>' + row + ' X ' + col + ' = ' + (row*col);
				}
				result += '</tr>';
			}
			result += '</table>';
			
			$( '#result' ).html( result );
		});
	});
</script>
</head>
<body>

<fieldset>
시작단 <input type="text" id="spinnerStart" value="5" readonly />
 ~ 
끝단 <input type="text" id="spinnerEnd" value="5" readonly />

<input type="button" id="btn" value="구구단 출력" />
</fieldset>

<br /><hr /><br />

<div id="result">
구구단 출력
</div>

</body>
</html>