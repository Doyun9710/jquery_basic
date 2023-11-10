<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/base/jquery-ui.min.css" />
<style type="text/css">
	body {
		font-size: 80%;
	}
</style>
<script type="text/javascript" src="./js/jquery-3.7.1.min.js"></script>
<script type="text/javascript" src="./js/jquery-ui.min.js"></script>
<script type="text/javascript">
	$( document ).ready( function() {
		
		$.ajax({
			url: './sido.do',
			type: 'get',
			dataType: 'json',
			success: function( jsonData ) {
				$.each( jsonData, function(index, item) {
					$( '#sido' ).append( '<option>' + item.sido + '</option>' );
					
					$( '#sido' ).selectmenu( 'refresh' );	// == empty()
				});
			},
			error: function() {
				console.log( '[에러]');
			}
		});
		
		$( '#sido' ).selectmenu({
			width: 150,
			
			change: function() {
				//console.log( $( '#sido' ).val() );
				
				$.ajax({
					url: './gugun.do',
					type: 'get',
					data: {
						sido: $( '#sido' ).val()
					},
					dataType: 'json',
					success: function( jsonData ) {
						$( '#gugun' ).empty();
						$.each( jsonData, function(index, item) {
							$( '#gugun' ).append( '<option>' + item.gugun + '</option>' );
							
							$( '#gugun' ).selectmenu( 'refresh' );	// == empty()
						});
					},
					error: function() {
						console.log( '[에러]');
					}
				});
			}
		});
		
		$( '#gugun' ).selectmenu({
			width: 150,
			
			change: function() {
				//console.log( $( '#gugun' ).val() );
				
				$.ajax({
					url: './dong.do',
					type: 'get',
					data: {
						sido: $( '#sido' ).val(),
						gugun: $( '#gugun' ).val()
					},
					dataType: 'json',
					success: function( jsonData ) {
						$( '#dong' ).empty();
						$.each( jsonData, function(index, item) {
							$( '#dong' ).append( '<option>' + item.dong + '</option>' );
							
							$( '#dong' ).selectmenu( 'refresh' );	// == empty()
						});
					},
					error: function() {
						console.log( '[에러]');
					}
				});
			}
		});
		
		$( '#dong' ).selectmenu({
			width: 150
		});
		
		$( '#btn' ).button().on( 'click', function() {
			console.log( './address.do?sido' + $( '#sido' ).val() + '&gugun=' + $( '#gugun' ).val() + '&dong=' + $( '#dong' ).val() );
			
			$.ajax({
				url: './address.do?sido=' + $( '#sido' ).val() + '&gugun=' + $( '#gugun' ).val() + '&dong=' + $( '#dong' ).val(),
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
		});
		
	});
</script>
</head>
<body>

<fieldset>
	<legend>우편번호 검색기</legend>
	<label for="sido">시도</label>
	<select id="sido">
		<option disabled="disabled" selected="selected">시도 선택</option>
	</select>
	<label for="gugun">구군</label>
	<select id="gugun">
		<option disabled="disabled" selected="selected">구군 선택</option>
	</select>
	<label for="dong">동</label>
	<select id="dong">
		<option disabled="disabled" selected="selected">동 선택</option>
	</select>
	<button id="btn">우편번호 출력</button>
</fieldset>

<br /><hr /><br />

<div id="result">
<table border="1" width="800" cellspacing="0">
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