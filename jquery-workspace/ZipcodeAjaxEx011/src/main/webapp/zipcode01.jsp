<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	window.onload = function() {
		document.getElementById( 'btn' ).onclick = function() {
			const strdong = document.getElementById( 'strdong' ).value.trim();
			console.log( strdong );
			if( strdong.length < 2 ) {
				alert( '동이름을 2자 이상 입력해주세요' );
			} else {
				const request = new XMLHttpRequest();

				request.onreadystatechange = function() {
					if( request.readyState == 4 ) {
						if( request.status == 200 ) {
							const xmlData = request.responseXML;

							const zipcode = xmlData.getElementsByTagName( 'zipcode' );
							const sido = xmlData.getElementsByTagName( 'sido' );
							const gugun = xmlData.getElementsByTagName( 'gugun' );
							const dong = xmlData.getElementsByTagName( 'dong' );
							const ri = xmlData.getElementsByTagName( 'ri' );
							const bunji = xmlData.getElementsByTagName( 'bunji' );

							let result = '<table width="800" border="1" cellspacing="0">';
							for( let i=0 ; i<zipcode.length ; i++ ) {
								result += '<tr>';
								result += '<td>' + zipcode[i].innerHTML + '</td>';
								result += '<td>' + sido[i].innerHTML + '</td>';
								result += '<td>' + gugun[i].innerHTML + '</td>';
								result += '<td>' + dong[i].innerHTML + '</td>';
								result += '<td>' + ri[i].innerHTML + '</td>';
								result += '<td>' + bunji[i].innerHTML + '</td>';
								result += '</tr>';
							}
							result += '</table>';
							
							document.getElementById( 'result' ).innerHTML = result;
						} else {
							alert( '잘못된 페이지 요청' );
						}
					}
				};
				/*
				request.open( 'GET', './xml.do?strdong=' + strdong, true );
				//request.open( 'GET', './json.do', true );
				request.send();
				*/
				
				request.open( 'POST', './xml.do', true );
				//request.open( 'GET', './json.do', true );
				request.setRequestHeader( 'content-type', 'application/x-www-form-urlencoded' );
				request.send( 'strdong=' + strdong );
				
				/*
				// 요청 : http://localhost:8080/ZipcodeAjaxEx011/zipcode01.jsp
				request.open( 'GET', 'http://192.168.0.93:8080/ZipcodeAjaxEx011/xml.do?strdong=' + strdong, true );
				request.send();
				*/
			}
		};
	};
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