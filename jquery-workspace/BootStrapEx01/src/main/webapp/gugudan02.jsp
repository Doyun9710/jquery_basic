<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0" />
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<style type="text/css"></style>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
<script type="text/javascript">
	$( document ).ready( function() {
		$( '#btn1' ).on( 'click', function() {
			let menuhtml = '';
			let contenthtml = '';
			
			for( let row=1 ; row<=4 ; row++ ) {
				menuhtml += '<li class="nav-item">';
				if( row == 1 ) {
					menuhtml += '	<a class="nav-link active" data-bs-toggle="tab" href="#단' + row + '">' + row + '단</a>';	
				} else {
					menuhtml += '	<a class="nav-link" data-bs-toggle="tab" href="#단' + row + '">' + row + '단</a>';
				}
				
				menuhtml += '</li>';
				
				if( row == 1 ) {
					contenthtml += '<div id="단' + row + '" class="container tab-pane active">';	
				} else {
					contenthtml += '<div id="단' + row + '" class="container tab-pane">';
				}
				
				contenthtml += '	<h3>' + row + '단</h3>';
				for( let col=1 ; col<=9 ; col++ ) {
					contenthtml += '<p>' +  row + ' X ' + col + ' = ' + (row*col) + '</p><br />';
				}
				contenthtml += '</div>';
			}
			
			$( '#menu' ).html( menuhtml );
			$( '#content' ).html( contenthtml );
		});
		
		$( '#btn2' ).on( 'click', function() {
			$( '#menu' ).html( '' );
			$( '#content' ).html( '' );
		});
	});
</script>
</head>
<body>

<div class="container mt-3">
	<button id="btn1" class="btn btn-primary">구구단 보이기(1 ~ 4단)</button>
	<button id="btn2" class="btn btn-primary">구구단 지우기</button>
	<br /><br />
	
	<!-- tab menu -->
	<ul id="menu" class="nav nav-tabs">
	</ul>

	<!-- tab content  -->
	<div id="content" class="tab-content">
	</div>
</div>

</body>
</html>
