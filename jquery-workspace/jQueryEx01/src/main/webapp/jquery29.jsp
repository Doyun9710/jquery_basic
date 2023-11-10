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
		document.getElementById( 'btn1' ).onclick = function() {
			$( 'input:checkbox[id^=ch]:checked' ).each( function(index, item) {
				console.log( index, item );
				console.log( $( item ).val() );
			});
		};
		
		document.getElementById( 'btn2' ).onclick = function() {
			console.log( $( '#sel option:selected' ).val() );
			console.log( $( '#sel option:selected' ).text() );
		};
	});
</script>
</head>
<body>

<button id="btn1">내용확인</button>
<button id="btn2">내용확인</button>

<br /><hr /><br />

<input type="checkbox" id="ch1" name="ch" value="사과" />사과
<input type="checkbox" id="ch2" name="ch" value="수박" />수박
<input type="checkbox" id="ch3" name="ch" value="딸기" />딸기
<input type="checkbox" id="ch4" name="ch" value="참외" />참외

<select id="sel">
	<option value="사과">사과 1</option>
	<option value="수박">수박 2</option>
	<option value="딸기">딸기 3</option>
	<option value="참외">참외 4</option>
</select>

</body>
</html>