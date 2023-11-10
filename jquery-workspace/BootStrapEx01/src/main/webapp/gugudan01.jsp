<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<style type="text/css">

</style>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/jquery@3.7.0/dist/jquery.min.js"></script>
<script type="text/javascript" src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>
<script type="text/javascript">
	$( document ).ready( function() {
		$( '#btn1' ).on( 'click', function() {
			let html = '';
			for( let row=1 ; row<=4 ; row++ ) {
				html += '<div class="card">';
				html += '	<div class="card-header">';
				html += '		<a class="btn" data-bs-toggle="collapse" href="#collapse' + row + '">' + row + '단</a>';
				html += '	</div>';
				html += '	<div id="collapse' + row + '" class="collapse" data-bs-parent="#accordion"';
				html += '		<div class="card-body">';
				for( let col=1 ; col<=9 ; col++ ) {
					html +=  row + ' X ' + col + ' = ' + (row*col) + '<br />';
				}
				html += '		</div>';
				html += '	</div>';
				html += '</div>';
			}
			$( '#accordion' ).html( html );
		});
		
		$( '#btn2' ).on( 'click', function() {
			$( '#accordion' ).html( '' );
		});
	});
</script>
</head>
<body>
	<div class="container mt-3">
		<h2>구구단 출력</h2>
		
		<button id="btn1">1 ~ 4 단</button>
		<button id="btn2">구구단 지우기</button>

		<div id="accordion">
			
		</div>
	</div>

<br /><hr /><br />

</body>
</html>