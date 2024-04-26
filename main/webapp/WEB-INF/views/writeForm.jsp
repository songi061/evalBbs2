<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>       
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h1>WriteForm Page</h1>
    <hr>
    <form action="write" method="get" style="width: 400px;">
        <fieldset>
            <legend>게시글 등록</legend>
            제 목  : <input type="text" name="title"><br>
            내 용  : <input type="text" name="content"><br>
            작성자 : <input type="text" name="writer"><br>
            작성일 : <input type="date" name="regdate"><br>
            <input type="submit" value="등록">
        </fieldset>
    </form>
</body>
</html>