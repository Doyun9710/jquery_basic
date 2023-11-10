<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(() => {
		$( '#btn' ).on( 'click', () => {
			const strdong = $( '#strdong' ).val().trim();
		
			if( strdong.length < 2 ) {
				alert( '동이름을 2자 이상 입력해 주세요.' );
			} else {
				const request = new XMLHttpRequest();
				request.onreadystatechange = function() {
					if( request.readyState == 4 ) {
						if( request.status == 200 ) {
							const xmlData = request.responseXML;
							
							let result = '<table width="800" border="1" cellspacing="0">';
							$( xmlData ).find( 'address' ).each( function() {
								result += '<tr>';
								result += '	<td>' + $(this).find( 'zipcode' ).text() + '</td>';
								result += '	<td>' + $(this).find( 'sido' ).text() + '</td>';
								result += '	<td>' + $(this).find( 'gugun' ).text() + '</td>';
								result += '	<td>' + $(this).find( 'dong' ).text() + '</td>';
								result += '	<td>' + $(this).find( 'ri' ).text() + '</td>';
								result += '	<td>' + $(this).find( 'bunji' ).text() + '</td>';
								result += '</tr>';
							});
							result += '</table>';

							$( '#result' ).html( result );	

						} else {
							alert( '잘못된 페이지 요청' );
						}
					}
				};
				
				request.open( 'get', './xml.do?strdong=' + strdong, true );
				request.send();
			}
			
		});
	});

</script>
</head>
<body>

동이름 <input type="text" id="strdong" name="strdong" />
<input type="button" id="btn" value="동이름 검색" />

<br /><hr /><br />

<div id="result">
	<table width="800" border="1" cellspacing="0">
	<tr>
		<td>우편번호</td>
		<td>시도</td>
		<td>구군</td>
		<td>동</td>
		<td>리</td>
		<td>번지</td>
	</tr>
	</table>
</div>

</body>
</html>



