<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<style type="text/css">

</style>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>
<script type="text/javascript">

</script>
</head>
<body>

	<div class="container mt-3">
		<h2>Accordion Example</h2>
		<p>
			<strong>Note:</strong> The <strong>data-bs-parent</strong> attribute
			makes sure that all collapsible elements under the specified parent
			will be closed when one of the collapsible item is shown.
		</p>
		<div id="accordion">
			<div class="card">
				<div class="card-header">
					<a class="btn" data-bs-toggle="collapse" href="#collapseOne">
						Collapsible Group Item #1 </a>
				</div>
				<div id="collapseOne" class="collapse show"
					data-bs-parent="#accordion">
					<div class="card-body">Lorem ipsum dolor sit amet,
						consectetur adipisicing elit, sed do eiusmod tempor incididunt ut
						labore et dolore magna aliqua. Ut enim ad minim veniam, quis
						nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
						consequat.</div>
				</div>
			</div>
			<div class="card">
				<div class="card-header">
					<a class="collapsed btn" data-bs-toggle="collapse"
						href="#collapseTwo"> Collapsible Group Item #2 </a>
				</div>
				<div id="collapseTwo" class="collapse" data-bs-parent="#accordion">
					<div class="card-body">Lorem ipsum dolor sit amet,
						consectetur adipisicing elit, sed do eiusmod tempor incididunt ut
						labore et dolore magna aliqua. Ut enim ad minim veniam, quis
						nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
						consequat.</div>
				</div>
			</div>
			<div class="card">
				<div class="card-header">
					<a class="collapsed btn" data-bs-toggle="collapse"
						href="#collapseThree"> Collapsible Group Item #3 </a>
				</div>
				<div id="collapseThree" class="collapse" data-bs-parent="#accordion">
					<div class="card-body">Lorem ipsum dolor sit amet,
						consectetur adipisicing elit, sed do eiusmod tempor incididunt ut
						labore et dolore magna aliqua. Ut enim ad minim veniam, quis
						nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
						consequat.</div>
				</div>
			</div>
		</div>
	</div>

<br /><hr /><br />

</body>
</html>