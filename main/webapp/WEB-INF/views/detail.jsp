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
        <table border="1" width="500" cellpadding="0" cellspacing="0" style="text-align: center;">
            <thead>
                <tr>
                    <th>번호</th><th>제목</th><th>내용</th><th>작성자</th><th>작성일</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>${dto.bno}</td>
                    <td>${dto.title}</td>
                    <td>${dto.content}</td>
                    <td>${dto.writer}</td>
                    <td>${dto.regdate}</td>
                </tr>
            </tbody>
        </table>
    </div>

    <a href="delete?bno=${dto.bno}">삭제하기</a>
    <a href="list">목록보기</a><br>
</body>
</html>