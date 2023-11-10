<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>
<script type="text/javascript">
	$( function() {
		var srcVal = $( "#sec_1 img" ).attr( "src" );
		console.log( srcVal );

		document.getElementById( 'btn' ).onclick = function() {
			
			$( "#sec_1 img" )
				.attr({
					"width":200,
					"src":srcVal.replace( "1.jpg", "2.jpg" ),
					"alt":"바위"
				})
				.removeAttr( "border" );
			
		};
	});
</script>
</head>
<body>

<button id="btn">속성 적용</button>

<br /><hr /><br />

<h1>
	<strong>객체 조작 및 생성</strong>
</h1>
<section id="sec_1">
	<h2>이미지 속성</h2>
	<p>
		<img src="images/math_img_1.jpg" alt="가위" border="2">
	</p>
</section>

</body>
</html>