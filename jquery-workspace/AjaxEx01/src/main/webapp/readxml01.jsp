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
						
						// 문자열 - String 클래스 사용
						console.log( typeof request.responseText );
						// XML 객체 - DOM 메서드 사용
						console.log( typeof request.responseXML );
						
						const xmlData = request.responseXML;
						// collection 배열
						const names = xmlData.getElementsByTagName( 'name' );
						const publishers = xmlData.getElementsByTagName( 'publisher' );
						const authors = xmlData.getElementsByTagName( 'author' );
						const prices = xmlData.getElementsByTagName( 'price' );
						/*
						console.log( names );
						console.log( names[0] );
						console.log( names[0].innerHTML );
						console.log( names[0].textContent );
						*/
						let result = '<table border="1">';
						for( let i=0 ; i<names.length ; i++ ) {
							result += '<tr>';
							result += '<td>' + names[i].innerHTML + '</td>';
							result += '<td>' + publishers[i].innerHTML + '</td>';
							result += '<td>' + authors[i].innerHTML + '</td>';
							result += '<td>' + prices[i].innerHTML + '</td>';
							result += '</tr>';
						}
						result += '</table>';
						
						document.getElementById( 'result' ).innerHTML = result;
					} else {
						alert( '잘못된 페이지 요청' );
					}
				}
			};

			//request.open( 'GET', './data/data.xml', true );
			request.open( 'GET', './data/xml2.jsp', true );
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