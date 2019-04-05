<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
    <h2><?$title?></h2>
    <h3>By: <?$user?></h3>
    <p><?$body?></p>

    <textarea rows="4" cols="50" name="comment" form="userform">
        Enter your reply here...
    </textarea>
    <br>
    <form action="/action_page.php" id="userform">
        <label for="username">Reply as: </label><br>
        <input type="text" name="username">
        <input type="submit">
    </form>
</body>
</html>