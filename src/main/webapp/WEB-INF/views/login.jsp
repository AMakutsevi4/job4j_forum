<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
    <title>Форум</title>
</head>
<body>
<nav class="navbar">
    <div class="container">
        <p class="text-center fs-2">Добро пожаловать на форум job4j</p>
    </div>
</nav>
<div class="container mt-5">
    <p class="text-center fs-2">Войди или зарегистрируйся</p>
    <a href="<c:url value='/reg'/>">Регистрация</a>
<c:if test="${not empty errorMessge}">
    <div style="color:red; font-weight: bold; margin: 30px 0px;">
            ${errorMessge}
    </div>
</c:if>
<form name='login' action="<c:url value='/login'/>" method='POST'>
    <table>
        <tr>
            <td>Логин:</td>
            <td><input type='text' name='username'></td>
        </tr>
        <tr>
            <td>Пароль:</td>
            <td><input type='password' name='password'/></td>
        </tr>
        <tr>
            <td colspan='2'><input name="submit" type="submit" value="submit" /></td>
        </tr>
    </table>
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
</form>
</body>
</html>