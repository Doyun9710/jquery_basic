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
		var arr1 = [ "서울", "대전", "부산", "전주" ];
		var arr2 = [ "한국", "미국", "일본", "중국" ];
		var obj = {
				"name": "정부장",
				"area": "서울"
		}
		
		var idxNum = $.inArray( "부산", arr1 );
		console.log( idxNum );
		
		var okArray1 = $.isArray(arr1);
		var okArray2 = $.isArray(obj);
		console.log(okArray1);
		console.log(okArray2);
		
		$.merge(arr2, arr1);
		console.log(arr2);
	});
</script>
</head>
<body>

</body>
</html>