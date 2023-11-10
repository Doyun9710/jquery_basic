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
	span {
	    display: inline-block;
	    width: 70px;
	    height: 70px;
	    margin: 6px;
	    background-color: #f9f9f9;
	}
	
	#border3 {
		background-color: #555;
	}
</style>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>
<script type="text/javascript">

</script>
</head>
<body>

<div class="container mt-3">
  <h2>Borders</h2>
  <p>Use the border classes to add or remove borders from an element:</p> 

  <span class="border"></span>
  <span class="border border-0"></span>
  <span class="border border-top-0"></span>
  <span class="border border-end-0"></span>
  <span class="border border-bottom-0"></span>
  <span class="border border-start-0"></span>
  <br>
  
  <span class="border-top"></span>
  <span class="border-end"></span>
  <span class="border-bottom"></span>
  <span class="border-start"></span>
</div>

<br /><hr /><br />

<div class="container mt-3">
  <h2>Borders</h2>
  <p>Use a contextual border color to add a color to the border:</p> 
  <span class="border border-primary"></span>
  <span class="border border-secondary"></span>
  <span class="border border-success"></span>
  <span class="border border-danger"></span>
  <span class="border border-warning"></span>
  <span class="border border-info"></span>
  <span class="border border-light"></span>
  <span class="border border-dark"></span>
  <span class="border border-white"></span>
</div>

<br /><hr /><br />

<div id="border3" class="container mt-3">
  <h2>Borders</h2>
  <p>Round the corner of an element with the rounded classes:</p> 
  <span class="rounded"></span>
  <span class="rounded-top"></span>
  <span class="rounded-end"></span>
  <span class="rounded-bottom"></span>
  <span class="rounded-start"></span>
  <span class="rounded-circle"></span>
  <span class="rounded-pill" style="width:130px"></span>
  <br>
  <span class="rounded-0"></span>
  <span class="rounded-1"></span>
  <span class="rounded-2"></span>
  <span class="rounded-3"></span>
  <span class="rounded-4"></span>
  <span class="rounded-5"></span>
</div>

<br /><hr /><br />

<div class="container mt-3">
  <h1>Visibility</h1>
  <p>Use the .visible or .invisible classes to control the visibility of elements. Note: These classes do not change the CSS display value. They only add visibility:visible or visibility:hidden to an element:</p>
  <div class="visible bg-success">I am visible</div>
  <div class="invisible bg-warning">I am invisible</div>
</div>

</body>
</html>