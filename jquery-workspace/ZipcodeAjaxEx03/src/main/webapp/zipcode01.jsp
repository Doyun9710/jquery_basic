<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/base/jquery-ui.min.css" />
<style type="text/css">
	body { font-size: 80%; }
</style>
<script type="text/javascript" src="./js/jquery-3.7.1.min.js"></script>
<script type="text/javascript" src="./js/jquery-ui.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$( '#sido, #gugun, #dong' ).selectmenu({
			width: 150
		});
		
		$( '#btn' ).button();
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




















