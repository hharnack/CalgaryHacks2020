<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
    <style>

        body {
            background-image: linear-gradient(#eb3349, #f45c43);
            height: 100vh;
            font-family: 'Quicksand', sans-serif;
        }

        ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            overflow: hidden;
            background-color: #333;
        }

        li {
            float: left;
        }

        li a, .dropbtn {
            display: inline-block;
            color: white;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
        }

        li a:hover, .dropdown:hover .dropbtn {
            background-color: red;
        }

        li.dropdown {
            display: inline-block;
        }

        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #f45c43;
            min-width: 160px;
            box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
            z-index: 1;
        }

        .dropdown-content a {
            color: black;
            padding: 12px 16px;
            text-decoration: none;
            display: block;
            text-align: left;
        }

        .dropdown-content a:hover {background-color: #f45c43;}

        .dropdown:hover .dropdown-content {
            display: block;
        }

        h3 {
            color: white;
            padding: 0;
        }

        .row {
            color:white;
            display:flex;
            flex-direction: row;
            justify-content: space-between;
            text-decoration: none;
        }

        .title {
            font-size: 120%;
        }

        .username {
            align-self: flex-end;
        }

        .outer-container {
            margin-top: 200;
            height: 100%;
            display:flex;
            flex-direction: row;
            justify-content: center;
            align-content: center;
        }

        .container {
            background-color: white;
            height: 50%;
            width:60%;
            border-radius: 25px;
        }
        
        .center {
            color:white;
            text-align: center;
        }
    </style>
    <link href="https://fonts.googleapis.com/css?family=Quicksand&display=swap" rel="stylesheet">
</head>
<body>
    <div class="row">
        <div class="title">
            Calgary PPT
        </div>
        <div class="username">
            ${sessionScope.user.username}
        </div>
    </div>
    <ul>
        <li><a href="profile.jsp">Profile</a></li>
        <li class="dropdown">
            <a href="javascript:void(0)" class="dropbtn">Events</a>
            <div class="dropdown-content">
                <a href="organize.jsp">Organize an Event</a>
                <a href="events.jsp">My Events</a>
            </div>
        </li>
    </ul>
         <h1 class="center">Your Events</h1>
    <div class="outer-container">
        <div class="container">
        </div>
    </div>
</body>
</html>