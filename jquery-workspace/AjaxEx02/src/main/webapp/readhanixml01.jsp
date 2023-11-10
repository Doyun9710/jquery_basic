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

						const xmlData = request.responseXML;
						
						const titles = xmlData.getElementsByTagName( 'title' );
						const links = xmlData.getElementsByTagName( 'link' );
						const pubdates = xmlData.getElementsByTagName( 'pubDate' );
						
						let result = '<table width="800" border="1" cellspacing="0">';
						result += '<tr><td>제목 (링크)</td><td>업로드 날짜</td></tr>';
						for( let i=1 ; i<titles.length ; i++ ) {
							const link = links[i].innerHTML.trim().replace( '<![CDATA[', '').replace(']]>', '' );
							result += '<tr>';
							//result += '<td>' + titles[i].innerHTML.trim().replace( '<![CDATA[', '').replace(']]>', '' ) + '</td>';
							//result += '<td>' + links[i].innerHTML.trim().replace( '<![CDATA[', '').replace(']]>', '' ) + '</td>';
							result += '<td><a href="' + link + '">' + titles[i].innerHTML.trim().replace( '<![CDATA[', '').replace(']]>', '' ) + '</a></td>';
							if( pubdates[i] != null ) {
								result += '<td>' + pubdates[i].innerHTML.trim().replace( '<![CDATA[', '').replace(']]>', '' ) + '</td>';
							} else {
								result += '<td></td>';
							}
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
			//request.open( 'GET', 'http://localhost:8080/AjaxEx02/data/data.xml', true );
			//request.open( 'GET', 'https://kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.xml?key=f5eef3421c602c6cb7ea224104795888&targetDt=20231010', true );

			// rss : https://www.hani.co.kr/rss/
			//request.open( 'GET', 'https://www.hani.co.kr/rss/', true );
			
			request.open( 'GET', './hani1.jsp', true );
			request.send();
		};
	};
</script>
<body>

<button id="btn">요청하기</button>
<br /><hr /><br />
결과 :
<div id="result">
	<table width="800" border="1" cellspacing="0">
	<tr>
		<td>제목 (링크)</td>
		<td>업로드 날짜</td>
	</tr>
	</table>
</div>
</body>
</html>




