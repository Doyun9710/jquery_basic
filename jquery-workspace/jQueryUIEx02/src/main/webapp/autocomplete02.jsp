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
			url: './data/data.jsp',
			type: 'get',
			dataType: 'json',
			success: function( json ) {
				console.log( json );
				
				$( '#tags' ).autocomplete({
					source: json.data
			    });
			},
			error: function( e ) {
				alert( '[에러] ' + e.status );
			}
		});
	});
</script>
</head>
<body>

<div>
	<label for="tags">프로그램 언어 : </label>
	<input type="text" id="tags" />
</div>

<br /><hr /><br />

</body>
</html>