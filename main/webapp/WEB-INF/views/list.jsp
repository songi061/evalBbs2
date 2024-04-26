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
    <h1>List Page</h1>
    <div>
        <a href="writeForm">글 작성하기</a>
    </div>
    <div>
        <table border="1">
            <tr>
                <td>번호</td><td>제목</td><td>작성자</td><td>작성일</td>
            </tr>
            <c:forEach var="dto" items="${list}" >
                <tr>
                    <td>${dto.bno}</td>
                    <td><a href="detail?bno=${dto.bno}">${dto.title}</a></td>
                    <td>${dto.writer}</td>
                    <td>${dto.regdate}</td>
                </tr>
            </c:forEach>
        </table>
    </div>
</body>
</html>