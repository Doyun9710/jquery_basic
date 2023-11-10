<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">
	window.onload = function() {
		document.getElementById( 'btn' ).onclick = function() {
			const request = new XMLHttpRequest();

			request.onreadystatechange = function() {
				if( request.readyState == 4 ) {
					if( request.status == 200 ) {
						console.log( '요청 완료' );
						//console.log( request.responseText );
						//document.getElementById( 'result' ).innerHTML = request.responseText;
						
						// table 디자인
						const data = request.responseText.trim();
						const rowdatas = data.split( '\n' );
						//const rowdatas = data.split( '<br />' );
						
						console.log( request.responseText );	// type = String
						console.log( "rowdatas.length : " + rowdatas.length );
						console.log( "rowdatas[0] : " + rowdatas[0] );
						
						let result = '<table border="1">';
						for( let i=0 ; i<rowdatas.length ; i++ ) {
							let coldatas = rowdatas[i].split( ',' );
							//let coldatas = rowdatas[i].split( '\t' );
							
							result += '<tr>';
							result += '<td>' + coldatas[0] + '</td>';
							result += '<td>' + coldatas[1] + '</td>';
							result += '<td>' + coldatas[2] + '</td>';
							result += '<td>' + coldatas[3] + '</td>';
							result += '</tr>';
						}
						result += '</table>';
						
						document.getElementById( 'result' ).innerHTML = result;
					} else {
						alert( '잘못된 페이지 요청' );
					}
				}
			};
			
			request.open( 'GET', './data/data.csv', true );
			//request.open( 'GET', './data/csv2.jsp', true );
			request.send();
		};
	};
</script>
<body>

<button id="btn">비동기식 요청하기</button>
<br /><hr /><br />
결과 : 
<div id="result"></div>

</body>
</html>