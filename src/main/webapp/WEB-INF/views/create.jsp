<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
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
        <a class="btn" href="<c:url value='/login'/>">Авторизация</a>
    </div>
</nav>
<div class="container mt-5">
    <p class="text-center fs-2">Создать тему</p>
    <form class="fs-6" action="<c:url value='/save'/>" method='POST'>
        <div class="mb-3">
            <label for="name" class="form-label">Тема</label>
            <input type="text" class="form-control" id="name" aria-describedby="emailHelp" name='name'>
        </div>
        <div class="mb-3">
            <label for="description" class="form-label">Описание</label>
            <input type="text" class="form-control" id="description" name='description'>
        </div>
        <button>Сохранить</button>
    </form>
</div>
</body>
</html>
