<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>   
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h1>Detail Page</h1>
    <hr>
    <div>
        <table border="1">
            <tr>
                <td>번호</td><td>제목</td><td>내용</td><td>작성자</td><td>작성일</td>
            </tr>
            <tr>
                <td>${dto.bno}</td>
                <td>${dto.title}</td>
                <td>${dto.content}</td>
                <td>${dto.writer}</td>
                <td>${dto.regdate}</td>
            </tr>
        </table>
    </div>

    <a href="delete?bno=${dto.bno}">삭제하기</a>
    <a href="list">목록보기</a><br>
</body>
</html>