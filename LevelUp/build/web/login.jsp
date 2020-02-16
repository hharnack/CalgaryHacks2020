<%-- 
    Document   : login
    Created on : Feb 16, 2020, 12:43:02 AM
    Author     : 806547
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <style>

body {
        background-image: linear-gradient(#eb3349, #f45c43);
        height: 100vh;
        text-align: center;
        font-family: 'Quicksand', sans-serif;
}

.outer-container {
    margin-top: 150;
    height: 100%;
    display:flex;
    flex-direction: row;
    justify-content: center;
    align-content: center;
}

.container {
    background-color: white;
    height: 50%;
    width:40%;
    border-radius: 25px;
}
</style>
<link href="https://fonts.googleapis.com/css?family=Quicksand&display=swap" rel="stylesheet">
    <head>
        <title>Calgary PPT</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <div class="outer-container">
        <div class="container">
        <h1>Welcome to Calgary PPT</h1>
        <h3>Login</h3>
        <form action="login" method="POST">
            Username:<input name="username" type="text" value="${username}"/><br><br>
            Password:<input name="password" type="password" value="${password}"/><br><br>
            <button type="submit" name="log-in">Log in</button>
            <div>${message}</div>
        </form><br><br>
        <a href="register.jsp">New user? Sign in</a>
        <br>
        </div>
        </div>
    </body>
</html>
