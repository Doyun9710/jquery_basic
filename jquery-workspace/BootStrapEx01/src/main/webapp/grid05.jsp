<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>

<div class="container-fluid mt-3">
  <h2>Nested Columns</h2>
  <p>Add columns inside other columns:</p>
</div>

<div class="container-fluid">
  <div class="row">
    <div class="col-8 bg-warning p-4">
      .col-8
      <div class="row">
        <div class="col-6 bg-light p-2">.col-6</div>
        <div class="col-6 bg-secondary p-2">.col-6</div>
      </div>
    </div>
    <div class="col-4 bg-success p-4">.col-4</div>
  </div>
</div>

</body>
</html>