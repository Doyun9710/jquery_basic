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
			const ename = document.getElementById( 'ename' ).value.trim();
			console.log( ename );
			if( ename.length < 1 ) {
				alert( '이름을 2자 이상 입력해주세요' );
			} else {
				const request = new XMLHttpRequest();

				request.onreadystatechange = function() {
					if( request.readyState == 4 ) {
						if( request.status == 200 ) {
							const xmlData = request.responseXML;

							const empno = xmlData.getElementsByTagName( 'empno' );
							const ename = xmlData.getElementsByTagName( 'ename' );
							const job = xmlData.getElementsByTagName( 'job' );
							const mgr = xmlData.getElementsByTagName( 'mgr' );
							const hiredate = xmlData.getElementsByTagName( 'hiredate' );
							const sal = xmlData.getElementsByTagName( 'sal' );
							const comm = xmlData.getElementsByTagName( 'comm' );
							const deptno = xmlData.getElementsByTagName( 'deptno' );

							let result = '<table width="800" border="1" cellspacing="0">';
							for( let i=0 ; i<empno.length ; i++ ) {
								result += '<tr>';
								result += '<td>' + empno[i].innerHTML + '</td>';
								result += '<td>' + ename[i].innerHTML + '</td>';
								result += '<td>' + job[i].innerHTML + '</td>';
								result += '<td>' + mgr[i].innerHTML + '</td>';
								result += '<td>' + hiredate[i].innerHTML + '</td>';
								result += '<td>' + sal[i].innerHTML + '</td>';
								result += '<td>' + comm[i].innerHTML + '</td>';
								result += '<td>' + deptno[i].innerHTML + '</td>';
								result += '</tr>';
							}
							result += '</table>';
							
							document.getElementById( 'result' ).innerHTML = result;
						} else {
							alert( '잘못된 페이지 요청' );
						}
					}
				};
				
				request.open( 'GET', './xml.do?ename=' + ename, true );
				//request.open( 'GET', './json.do?ename=' + ename, true );
				request.send();
				
				/*
				request.open( 'POST', './xml.do', true );
				//request.open( 'GET', './json.do', true );
				request.setRequestHeader( 'content-type', 'application/x-www-form-urlencoded' );
				request.send( 'strdong=' + strdong );
				*/
			}
		};
	};
</script>
</head>
<body>

이름 <input type="text" id="ename" name="ename" />
<input type="button" id="btn" value="이름 검색" />

<br /><hr /><br />

<div id="result">
	<table width="800" border="1" cellspacing="0">
	<tr>
		<td>empno</td>
		<td>ename</td>
		<td>job</td>
		<td>mgr</td>
		<td>hiredate</td>
		<td>sal</td>
		<td>comm</td>
		<td>deptno</td>
	</tr>
	</table>
</div>

</body>
</html>