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
		/*
		$( '#btn1' ).on('click', function() {
			console.log( 'btn1 click' );
		});
		
		$( '#btn2' ).on('click', function() {
			console.log( 'btn2 click' );
		});
		*/
		
		// 이벤트 통합
		$( 'button' ).on('click', function() {
			//console.log( 'button click' );
			/*
			console.log( $(this) );
			console.log( $(this).attr( 'id' ) );
			console.log( $(this).text() );
			*/
			if( $(this).attr('id') == 'btn1' ) {
				console.log( 'btn1' );
			} else if( $(this).attr('id') == 'btn2' ) {
				console.log( 'btn2' );
			} else if( $(this).attr('id') == 'btn3' ) {
				console.log( 'btn3' );
			} 
		});
		
		$( 'input[type=button]' ).on( 'click', function() {
			console.log( 'click' );
			
			if( $(this).attr('id') == 'btn1' ) {
				console.log( '버튼 1' );
			} else if( $(this).attr('id') == 'btn2' ) {
				console.log( '버튼 2' );
			} else if( $(this).attr('id') == 'btn3' ) {
				console.log( '버튼 3' );
			}
		} );
	});
</script>
</head>
<body>

<button id="btn1">내용확인1</button>
<button id="btn2">내용확인2</button>
<button id="btn3">내용확인3</button>

<input type="button" id="button1" data="button1" value="난 버튼 1" />
<input type="button" id="button2" data="button2" value="난 버튼 2" />
<input type="button" id="button3" data="button3" value="난 버튼 3" />

<br /><hr /><br />

</body>
</html>