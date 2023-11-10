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
	
	label, input { display:block; }
    input.text { margin-bottom:12px; width:95%; padding: .4em; }
    fieldset { padding:0; border:0; margin-top:25px; }
    h1 { font-size: 1.2em; margin: .6em 0; }
    div#users-contain { width: 700px; margin: 20px 0; }
    div#users-contain table { margin: 1em 0; border-collapse: collapse; width: 100%; }
    div#users-contain table td, div#users-contain table th { border: 1px solid #eee; padding: .6em 10px; text-align: left; }
    .ui-dialog .ui-state-error { padding: .3em; }
    .validateTips { border: 1px solid transparent; padding: 0.3em; }
	
</style>
<script type="text/javascript" src="./js/jquery-3.7.1.min.js"></script>
<script type="text/javascript" src="./js/jquery-ui.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$.ajax({
			url: './list.do',
			type: 'get',
			dataType: 'xml',
			success: function( xmlData ) {
				//console.log( "Check XML : ", xmlData );

				$( '#users tbody' ).empty();
				$( xmlData ).find( 'dept' ).each( function() {
					//console.log( "Check Data : ", $(this).text() );

					$( '#users tbody' ).append( 
							'<tr><td>' + $(this).find( 'deptno' ).text() + '</td>' + 
							'<td>' + $(this).find( 'dname' ).text() + '</td>' +
							'<td>' + $(this).find( 'loc' ).text() + '</td></tr>' 
					);
				});

			},
			error: function() {
				console.log( '[에러]');
			}
		});
		
		$( '#dialog-form' ).dialog({
			autoOpen: false,
			model: true,
			width: 350,
			height: 400,
			resizable: false,
			buttons: {
				'취소': function() {
					$( this ).dialog( 'close' );
				},
				'확인': function() {
					/*
					let html = '<tr>';
					html += '<td>' + $( '#deptno' ).val() + '</td>';
					html += '<td>' + $( '#dname' ).val() + '</td>';
					html += '<td>' + $( '#loc' ).val() + '</td>';
					html += '</tr>';
					$( '#users tbody' ).append( html );
					*/
					
					$.ajax({
						url: './write_ok.do',
						type: 'get',
						data: {
							deptno: $( '#deptno' ).val(),
							dname: $( '#dname' ).val(),
							loc: $( '#loc' ).val()
						},
						dataType: 'xml',
						success: function( xmlData ) {
							//console.log( "Check XML : ", xmlData );

							$( '#users_list' ).empty();
							$( xmlData ).find( 'dept' ).each( function() {
								//console.log( "Check Data : ", $(this).text() );
								
								$( '#users tbody' ).append( 
										'<tr><td>' + $(this).find( 'deptno' ).text() + '</td>' + 
										'<td>' + $(this).find( 'dname' ).text() + '</td>' +
										'<td>' + $(this).find( 'loc' ).text() + '</td></tr>' 
								);

							});

						},
						error: function() {
							console.log( '[에러]');
						}
					});
					
					$( this ).dialog( 'close' );
				}
			}
		});
		
		$( '#btn' ).button().on( 'click', function() {
			$( '#dialog-form' ).dialog( 'open' );
		});
		
	});
</script>
</head>
<body>

<button id="btn">추가</button>

<br /><hr /><br />

<!-- 리스트 -->
<div id="users-contain" class="ui-widget">
	<h1>dept list</h1>
	<table id="users" class="ui-widget ui-widget-content">
	<thead>
		<tr class="ui-widget-header ">
			<th>deptno</th>
			<th>dname</th>
			<th>loc</th>
		</tr>
	</thead>
	<tbody id="users_list">
	
	</tbody>
	</table>
</div>

<!-- 입력 : 다이얼 로그 -->
<div id="dialog-form" title="새로운 부서입력">
	<fieldset>
		<label for="deptno">부서번호</label>
		<input type="text" id="deptno" value="부서번호" class="text ui-widget-content ui-corner-all">
		<label for="dname">부서이름</label>
		<input type="text" id="dname" value="부서이름" class="text ui-widget-content ui-corner-all">
		<label for="loc">부서위치</label>
		<input type="text" id="loc" value="부서위치" class="text ui-widget-content ui-corner-all">
	</fieldset>
</div>

</body>
</html>




















