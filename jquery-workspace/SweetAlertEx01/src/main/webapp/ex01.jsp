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
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script type="text/javascript">
	window.onload = function() {
		document.getElementById( 'btn1' ).onclick = function() {
			Swal.fire({
				title: 'Error!',
				text: 'Do you want to continue',
				icon: 'error',
				confirmButtonText: 'Cool'
			})
		};
	};
	
	$( document ).ready( function() {
		
	});
</script>
</head>
<body>

<button id="btn1">보이기</button>

<br /><hr /><br />

</body>
</html>