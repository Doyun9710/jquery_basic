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
				$.ajax({
					url: './json.do?strdong=' + strdong,
					type: 'get',
					dataType: 'json',
					success: function( jsonData ) {
						let result = '<table width="800" border="1" cellspacing="0">';
						$.each( jsonData, function(index, item) {
							result += '<tr>';
							result += '<td>' + item.zipcode + '</td>';
							result += '<td>' + item.sido + '</td>';
							result += '<td>' + item.gugun + '</td>';
							result += '<td>' + item.dong + '</td>';
							result += '<td>' + item.ri + '</td>';
							result += '<td>' + item.bunji + '</td>';
							result += '</tr>';
						});
						result += '</table>';

						$( '#result' ).html( result );
					},
					error: function() {
						console.log( '[에러]');
					}
				});
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



