<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0">
<title>Insert title here</title>
<link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
<style type="text/css">
	body { font-size: 80%; }
	
	#accordion > div > div:last-child { text-align: right; }
	#accordion-resizer {
		margin: 0 60px;
		max-width: 1500px;
	}
	#btngroup {
		text-align: right;
	}
	#btngroup button {
		margin: 3px;
		padding: 3px;
		width: 100px;
	}
	label.header {
		font-size: 10pt;
		margin-right: 5px;
	}
	input.text {
		width: 80%;
		margin-bottom: 12px;
		padding: 0.4em;
	}
	input.mail1 {
		width: 45%;
		margin-bottom: 12px;
		padding: 0.4em;
	}
	input.mail2 {
		width: 30%;
		margin-bottom: 12px;
		padding: 0.4em;
	}
	fieldset {
		margin-left: 15px;
		margin-top: 15px;
		border: 0;
	}
</style>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/jquery@3.7.0/dist/jquery.min.js"></script>
<script type="text/javascript" src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
<script type="text/javascript">
	$( document ).ready( function() {
		$( '#accordion' ).accordion({
			collapsible: 'true',
			heightStyle: 'content'
		});
		
		$( '#writeDialog' ).css( 'display', 'none' );
		$( '#modifyDialog' ).css( 'display', 'none' );
		$( '#deleteDialog' ).css( 'display', 'none' );
	
		$( 'button.action' ).button();
		
		$( document ).on( 'click', 'button.action', function() {
			if( $( this ).attr( 'action' ) == 'write' ) {
				$( '#writeDialog' ).dialog ({
					width: 700,
					height: 500,
					modal: true,
					buttons: {
						'쓰기': function() {
							$( this ).dialog( 'close' );
						},
						'취소': function() {
							$( this ).dialog( 'close' );
						}
					}
				});
			} else if( $( this ).attr( 'action' ) == 'modify' ) {
				$( '#modifyDialog' ).dialog({
					width: 700,
					height: 500,
					modal: true,
					buttons: {
						'수정': function() {
							$( this ).dialog( 'close' );
						},
						'취소': function() {
							$( this ).dialog( 'close' );
						}
					}
				});
			} else if( $( this ).attr( 'action' ) == 'delete' ) {
				$( '#deleteDialog' ).dialog({
					width: 700,
					height: 200,
					modal: true,
					buttons: {
						'삭제': function() {
							$( this ).dialog( 'close' );
						},
						'취소': function() {
							$( this ).dialog( 'close' );
						}
					}
				});
			} else {
			}
		});
	});
</script>
</head>
<body>

<div id="accordion-resizer">
	<hr noshade="noshade" />
	<div id="accordion">
		<h3>1 : 글쓴이(0) new</h3>
		<div>
			<div>2016-02-01</div>
			<div>제목 1</div>
			<br />
			<hr noshade="noshade" />
			<div>내용 1</div>
			<br />
			<hr noshade="noshade" />
			<br />
			<div>
				<button idx="1" action="modify" class="action">수정</button>
				<button idx="1" action="delete" class="action">삭제</button>
			</div>       
		</div>
		<h3>2 : 글쓴이(0) new</h3>
		<div>
			<div>2016-02-01</div>
			<div>제목 2</div>
			<br />
			<hr noshade="noshade" />
			<div>내용 2</div>
			<br />
			<hr noshade="noshade" />
			<br />
			<div>
				<button idx="2" action="modify" class="action">수정</button>
				<button idx="2" action="delete" class="action">삭제</button>
			</div>       
		</div>
	</div>
	<hr />
	<div id="btngroup">
		<button action="write" class="action">글쓰기</button>
	</div>
</div>
<div id="writeDialog" title="글쓰기">   
	<fieldset>
		<div>
			<label for="subject" class="header">제&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;목</label>
			<input type="text" id="w_subject" class="text ui-widget-content ui-corner-all"/>
		</div>
		<div>
			<label for="writer" class="header">이&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;름</label>
			<input type="text" id="w_writer" class="text ui-widget-content ui-corner-all"/>
		</div>
		<div>
			<label for="mail" class="header">메&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;일</label>
			<input type="text" id="w_mail1" class="mail1 ui-widget-content ui-corner-all"/>
			@
			<input type="text" id="w_mail2" class="mail2 ui-widget-content ui-corner-all"/>
		</div>
		<div>
			<label for="password" class="header">비밀&nbsp;번호</label>
			<input type="password" id="w_password" class="text ui-widget-content ui-corner-all"/>
		</div>
		<div>
			<label for="content" class="header">본&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;문</label>
			<br /><br />
			<textarea rows="15" cols="100" id="w_content" class="text ui-widget-content ui-corner-all"></textarea>
		</div>
	</fieldset>
</div>
<div id="modifyDialog" title="글수정">   
	<fieldset>
		<div>
			<label for="subject" class="header">제&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;목</label>
			<input type="text" id="m_subject" class="text ui-widget-content ui-corner-all"/>
		</div>
		<div>
			<label for="writer" class="header">이&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;름</label>
			<input type="text" id="m_writer" class="text ui-widget-content ui-corner-all" readonly="readonly"/>
		</div>
		<div>
			<label for="mail" class="header">메&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;일</label>
			<input type="text" id="m_mail1" class="mail1 ui-widget-content ui-corner-all"/>
			@
			<input type="text" id="m_mail2" class="mail2 ui-widget-content ui-corner-all"/>
		</div>
		<div>
			<label for="password" class="header">비밀&nbsp;번호</label>
			<input type="password" id="m_password" class="text ui-widget-content ui-corner-all"/>
		</div>
		<div>
			<label for="content" class="header">본&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;문</label>
			<br /><br />
			<textarea rows="15" cols="100" id="m_content" class="text ui-widget-content ui-corner-all"></textarea>
		</div>
	</fieldset>
</div>
<div id="deleteDialog" title="글삭제">   
	<fieldset>
		<div>
			<label for="subject" class="header">제&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;목</label>
			<input type="text" id="d_subject" class="text ui-widget-content ui-corner-all" readonly="readonly"/>
		</div>
		<div>
			<label for="password" class="header">비밀&nbsp;번호</label>
			<input type="password" id="d_password" class="text ui-widget-content ui-corner-all"/>
		</div>
	</fieldset>
</div>

</body>
</html>
