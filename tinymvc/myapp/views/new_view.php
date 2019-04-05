<?php
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <title>New Post View</title>
    <style>
        body{
    font-family: 'Roboto Mono', monospace;
    width: 1000px;
    padding-left: 300px;
    text-align: center;
    background: grey;
    padding-top: 50px;
}

form{
    color: #4CAF50;
    text-transform: uppercase;
    letter-spacing: 0.5rem;
    font-size: 2em;
    font-weight: bolder;
    margin: 15px;
}
    </style>
</head>
<body>

<h2>New post view</h2>
<form>
  <div class="form-group">
    <label for="exampleInputtitel">titel</label>
    <input type="titel" class="form-control" id="exampleInputtitel" aria-describedby="titelHelp" placeholder="Enter titel">
      </div>
  <div class="form-group">
    <label for="exampleInputnaam">naam</label>
    <input type="naam" class="form-control" id="exampleInputnaam" placeholder="naam">
  </div>
  <div class="form-group">
    <label for="exampleInputemail1">email</label>
    <input type="email" class="form-control" id="exampleInputemail1" aria-describedby="emailHelp" placeholder="Enter email">
  </div>
  <div class="form-group">
    <label for="exampleInputtekst">tekst</label>
    <input type="tekst" class="form-control" id="exampleInputtekst" placeholder="tekst">
  </div>
  <button type="submit" class="btn btn-primary">Submit</button>
</form>  
</body>
</html>
<?php
?>