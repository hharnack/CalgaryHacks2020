<%-- 
    Document   : player
    Created on : Feb 16, 2020, 12:56:18 AM
    Author     : 806547
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
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

        .title {  
            font-size: 120%;
        }

        .row {
            display:flex;
            flex-direction: row;
            justify-content: space-between;
            text-decoration: none;
            color:white;
        }

        .username {
            align-self: flex-end;
        }

        .outer-container {
            margin-top:200;
            display:flex;
            flex-direction: row;
            justify-content: center;
            align-content: center;
        }

        .container {
            background-color: white;
            width:90%;
            border-radius: 25px;
        }

        .center {
            color:white;
            text-align: center;
        }

        .event {
            display:flex;
            flex-direction: row;
            justify-content: space-around;
            padding-top: 50;
            padding-bottom: 50;
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
        <li><a href="#home">Profile</a></li>
        <li class="dropdown">
            <a href="javascript:void(0)" class="dropbtn">Events</a>
            <div class="dropdown-content">
                <a href="#">Calendar</a>
                <a href="#">My Events</a>
            </div>
        </li>
    </ul>
    <h2 class="center">Your Points: ${sessionScope.user.points}</h2>
    <h1 class="center">Events</h1>
    <div class="outer-container">
        <div class="container">
            <table>
                <tr>
                <div class="event">
                    <th>Event Name</th>
                    <th>Description</th>
                    <th>Points</th>
                    <th>Start Time</th>
                    <th>End Time</th>
                </div>
                </tr>
                <c:forEach var="event" items="${events}">
                    <tr>
                    <div class="event">
                        <td><div class="padding">${event.eventName}</div></td>
                        <td><div class="padding">${event.description}</div></td>
                        <td><div class="padding">${event.points}</div></td>
                        <td><div> <fmt:formatDate value="${event.startTime}" type="both"/>/></div></td>
                        <td><div><fmt:formatDate value="${event.endTime}" type="both"/>/></div></td>
                        <td>
                            <form action="player" method="post" >
                                <input type="submit" value="Add Points">
                                <input type="hidden" name="action" value="register">
                                <input type="hidden" name="chosenEvent" value="${event.eventId}">
                            </form>
                        </td>
                    </div>
                    </tr>

                </c:forEach>
                     <c:if test="${chosen!=null}">
                    <form action="player" method="post">
                        <input type="text" name="code">
                        <input type="submit" value="Check Code">
                        <input type="hidden" name="action" value="codeCheck">
                        <input type="hidden" name="chosenEvent" value="${chosen.eventId}">
                    </form>  
                </c:if>
            </table>
        </div>
    </div>
</body>
</html>
