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
		document.getElementById( 'btn' ).onclick = function() {
			const startdan = $( '#startdan' ).val();
			const enddan = $( '#enddan' ).val();
			
			const iStartdan = parseInt( startdan );
			const iEnddan = parseInt( enddan );

			let html = '<table border="1" width="800">';
			for( let row=iStartdan ; row<=iEnddan ; row++ ) {
				html += '<tr>';
				for( let col=1 ; col<=9 ; col++ ) {
					html += '<td>' + row + ' X ' + col + ' = ' + (row*col) + '</td>';
				}
				html += '</tr>';
			}
			html += '</table>'
			
			$( '#result' ).html( html );
		};
	});
</script>
</head>
<body>

시작단 <input type="text" id="startdan" />
~
끝단 <input type="text" id="enddan" />
<button id="btn">구구단 출력</button>

<br /><hr /><br />

<div id="result"><b>출력 내용</b></div>

</body>
</html>