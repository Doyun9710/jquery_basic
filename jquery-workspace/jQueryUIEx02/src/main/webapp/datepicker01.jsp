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
		$( '#datepicker1' ).datepicker();
		$( '#datepicker2' ).datepicker();
		
		$( "#datepicker3" ).datepicker({
			showButtonPanel: true,
			numberOfMonths: 3
		});
	    $( "#format" ).on( "change", function() {
			$( "#datepicker3" ).datepicker( "option", "dateFormat", $( this ).val() );
	    });
	});
</script>
</head>
<body>

<!-- html5 지원 기능 -->
<div>
	Date: <input type="date" />
</div>

<br /><hr /><br />
<br /><hr /><br />

<!-- jQuery Datepicker -->
<div>
	Date: <input type="text" id="datepicker1" readonly="readonly" />
</div>

<br /><hr /><br />

<div>
	<!-- inline -->
	<div id="datepicker2" />
</div>

<br /><hr /><br />
 
<p>Date: <input type="text" id="datepicker3" size="30"></p>
 
<p>Format options:<br>
  <select id="format">
    <option value="mm/dd/yy">Default - mm/dd/yy</option>
    <option value="yy-mm-dd">ISO 8601 - yy-mm-dd</option>
    <option value="d M, y">Short - d M, y</option>
    <option value="d MM, y">Medium - d MM, y</option>
    <option value="DD, d MM, yy">Full - DD, d MM, yy</option>
    <option value="&apos;day&apos; d &apos;of&apos; MM &apos;in the year&apos; yy">With text - &apos;day&apos; d &apos;of&apos; MM &apos;in the year&apos; yy</option>
  </select>
</p>

</body>
</html>