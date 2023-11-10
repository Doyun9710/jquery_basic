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
		$( '#dialog-form' ).dialog({
			autoOpen: false,
			modal: true,
			width: 350,
			height: 400,
			resizable: false,
			buttons: {
				'취소': function() {
					$( this ).dialog( 'close' );
				},
				'확인': function() {
					const deptno = $( '#deptno' ).val();
					const dname = $( '#dname' ).val();
					const loc = $( '#loc' ).val();
					
					writeServer( deptno, dname, loc );
				}
			}
		});
		
		$( '#dialog-form-modify' ).dialog({
			autoOpen: false,
			modal: true,
			width: 350,
			height: 400,
			resizable: false,
			buttons: {
				'취소': function() {
					$( this ).dialog( 'close' );
				},
				'확인': function() {
					const deptno = $( '#deptno_modify' ).val();
					const dname = $( '#dname_modify' ).val();
					const loc = $( '#loc_modify' ).val();
					
					modifyServer( deptno, dname, loc );
				}
			}
		});

		$( '#btn' ).button().on( 'click', function() {
			$( '#dialog-form' ).dialog( 'open' );
		});

		listServer();
	});

	const listServer = function() {
		$.ajax({
			url: './list.do',
			type: 'get',
			dataType: 'xml',
			success: function( xmlData ) {
				$( '#users tbody' ).empty();
				$( xmlData ).find( 'dept' ).each( function() {
					let html = '<tr>';
					html += '<td>' + $(this).find( 'deptno' ).text() + '</td>';
					html += '<td>' + $(this).find( 'dname' ).text() + '</td>';
					html += '<td>' + $(this).find( 'loc' ).text() + '</td>';
					html += '<td>';
					html += '<button deptno="' + $(this).find( 'deptno' ).text() + '" dname="' + $(this).find( 'dname' ).text() + '" loc="' + $(this).find( 'loc' ).text() + '">수정</button>';
					html += '<button deptno="' + $(this).find( 'deptno' ).text() + '">삭제</button>';
					html += '</td>';
					html += '</tr>';
					
					$( '#users tbody' ).append( html );
				});
				
				// 이벤트 추가
				$( 'td > button' ).button().on( 'click', function() {
					if( $(this).text() == '수정' ) {
						//modifyServer( $(this).attr( 'deptno' ) );
						//$( '#dialog-form-modify' ).dialog( 'open' );
						const deptno = $(this).attr('deptno');
						const dname = $(this).attr('dname');
						const loc = $(this).attr('loc');
			            $( '#deptno_modify' ).val(deptno);
			            $( '#dname_modify' ).val(dname);
			            $( '#loc_modify' ).val(loc);
			
			            // 다이얼로그 열기
			            $( '#dialog-form-modify' ).dialog( 'open' );
					} else if( $(this).text() == '삭제' ) {
						deleteServer( $(this).attr( 'deptno' ) );
					}
				});
			},
			error: function() {
				console.log( '[에러]');
			}
		});
	};
	
	const writeServer = function( deptno, dname, loc ) {
		console.log( 'writeServer ', deptno, dname, loc );
		$.ajax({
			url: './write_ok.do',
			type: 'get',
			data: {
				deptno: deptno,
				dname: dname,
				loc: loc
			},
			dataType: 'xml',
			success: function( xml ) {
				if( $( xml ).find( 'flag' ).text() == '0' ) {
					listServer();
					
					// Dialog 초기화
					$( '#deptno' ).val( '' );
					$( '#dname' ).val( '' );
					$( '#loc' ).val( '' );
					
					$( '#dialog-form' ).dialog( 'close' );
				} else {
					alert( '에러' );
				}
			},
			error: function() {
				console.log( '[에러]');
			}
		});
	};
	
	const modifyServer = function( deptno, dname, loc ) {
		$( '#deptno_modify' ).val(deptno);
		$.ajax({
			url: './modify_ok.do',
			type: 'get',
			data: {
				deptno: deptno,
				dname: dname,
				loc: loc
			},
			dataType: 'xml',
			success: function( xml ) {
				if( $( xml ).find( 'flag' ).text() == '0' ) {
					listServer();
					$( '#dialog-form-modify' ).dialog( 'close' );
				} else {
					alert( '에러' );
				}
			},
			error: function() {
				console.log( '[에러]');
			}
		});
	};
	
	const deleteServer = function( deptno ) {
		$.ajax({
			url: './delete_ok.do',
			type: 'get',
			data: {
				deptno: deptno
			},
			dataType: 'xml',
			success: function( xml ) {
				if( $( xml ).find( 'flag' ).text() == '0' ) {
					listServer();
				} else {
					alert( '에러' );
				}
			},
			error: function() {
				console.log( '[에러]');
			}
		});
	};
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
			<th>...</th>
		</tr>
	</thead>
	<tbody>
	
	</tbody>
	</table>
</div>

<!-- 입력 : 다이얼 로그 -->
<div id="dialog-form" title="새로운 부서입력">
	<fieldset>
		<label for="deptno">부서번호</label>
		<input type="text" id="deptno" value="" class="text ui-widget-content ui-corner-all">
		<label for="dname">부서이름</label>
		<input type="text" id="dname" value="" class="text ui-widget-content ui-corner-all">
		<label for="loc">부서위치</label>
		<input type="text" id="loc" value="" class="text ui-widget-content ui-corner-all">
	</fieldset>
</div>

<!-- 수정 : 다이얼 로그 -->
<div id="dialog-form-modify" title="부서정보 수정">
	<fieldset>
		<label for="deptno">부서번호</label>
		<input type="text" id="deptno_modify" value="" class="text ui-widget-content ui-corner-all" readonly="readonly">
		<label for="dname">부서이름</label>
		<input type="text" id="dname_modify" value="" class="text ui-widget-content ui-corner-all">
		<label for="loc">부서위치</label>
		<input type="text" id="loc_modify" value="" class="text ui-widget-content ui-corner-all">
	</fieldset>
</div>

</body>
</html>