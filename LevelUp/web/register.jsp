<%-- 
    Document   : register
    Created on : Feb 16, 2020, 12:47:46 AM
    Author     : 806547
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<style>

    body {
        background-image: linear-gradient(#eb3349, #f45c43);
        height: 100vh;
        text-align: center;
        font-family: 'Quicksand', sans-serif;
    }

    .outer-container {
        margin-top: 150;
        height: 100vh;
        display:flex;
        flex-direction: row;
        justify-content: center;
        align-content: center;
    }

    .container {
        display:flex;
        flex-direction: column;
        align-items: stretch;
        background-color: white;
        height: 50%;
        width:40%;
        border-radius: 25px;
    }
</style>
<link href="https://fonts.googleapis.com/css?family=Quicksand&display=swap" rel="stylesheet">
<form method="post" action="signUpServlet">
    <head>
        <title>Register</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <div class="outer-container">
            <div class="container">
                <div class="sign">
                <h3>Register</h3>
                Sign Up as:
                <input type="radio" name="userType" value="${EventOrganizer}" />EventOrganizer
                <input type="radio" name="userType" value="${EventVisitor}" />EventVisitor<br/>
                Username: <input type="text" name="username"/> <br/>
                Password: <input type="password" name="password"/> <br/>
                Confirm Password: <input type="password" name="passwordCopy"/> <br/>
                <input type="submit" value="Sign Up" /><br>
                </form>
                <a href="login.jsp">Already registered? Log in</a>
            </div>
        </div>
        </div>
    </body>
</html>
