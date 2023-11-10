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
<script type="text/javascript" src="./js/i18n/datepicker-ko.js"></script>
<script type="text/javascript">
	$( document ).ready( function() {
		$( '#dialog' ).dialog({
			autoOpen: false,
			modal: true,
			width: 500,
			height: 300,
			resizeable: false,
			buttons: {
				'취소': function() {
					alert( '취소' );
					$( '#dialog' ).dialog( 'close' );
				},
				'확인': function() {
					alert( '확인' );
					$( '#dialog' ).dialog( 'close' );
				}
			},
			show: {
				effect: 'blind',
				duration: 1000
			},
			hide: {
				effect: 'explode',
				duration: 1000
			}
		});
		
		$( '#btn' ).button().on( 'click', function() {
			$( '#dialog' ).dialog( 'open' );
		});
	});
</script>
</head>
<body>

<button id="btn">다이얼로그</button>

<br /><hr /><br />

<div id="dialog" title="다이얼로그">
	<h1>Hello Dialog</h1>
</div>

</body>
</html>