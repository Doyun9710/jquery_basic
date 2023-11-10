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
		let xml = 
			`<friends>
				<friend>
					<name>tester1</name>
					<language>Javascript</language>
				</friend>
				<friend>
					<name>tester2</name>
					<language>Java</language>
				</friend>
				<friend>
					<name>tester3</name>
					<language>Python</language>
				</friend>
			</friends>`;
			
		$( document ).ready( function() {
			console.log( xml );
			console.log( typeof xml );
			
			const xmlDoc = $.parseXML( xml );
			console.log( typeof xmlDoc );
			console.log( xmlDoc );
			
			// find
			$( xmlDoc ).find( 'friend' ).each( function(index, item) {
				console.log( this );
				console.log( item );
				
				console.log( $(item).find( 'name' ).text() );
				console.log( $(item).find( 'name' )[0].innerHTML );
				console.log( $(item).find( 'language' ).text() );
			});
		});
	});
</script>
</head>
<body>



</body>
</html>