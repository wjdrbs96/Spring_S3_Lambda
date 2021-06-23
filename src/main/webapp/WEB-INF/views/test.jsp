<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML>
<html>
<head>
    <title> SpringBoot & AWS S3</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    <script
            src="https://code.jquery.com/jquery-3.3.1.js"
            integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
            crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</head>
<style>
    table {
        width: 30px;
    }
</style>
<body>
<h1>
    S3 이미지 업로더
</h1>
<div class="col-md-12">
    <div class="col-md-2">
        <form method="post" action="http://localhost:8080/images" enctype="multipart/form-data">
            <div class="form-group">
                <label for="img">파일 업로드</label>
                <input multiple="multiple" name="images" type="file" id="img">
            </div>
            <button type="submit" class="btn btn-primary" id="btn-save">저장</button>
        </form>
    </div>
    <div class="col-md-10">
        <form>
            <p><strong>결과 이미지입니다.</strong></p>
            <table class="table table-hover table table-striped">
                <c:forEach var="image" items="${image}">
                    <tr>
                        <th>${image.id}번 이미지</th>
                    </tr>
                    <tr>
                        <th><img src="${image.originUrl}" width="400" height="400" id="result-image1"></th>
                    </tr>
                    <tr>
                        <a href="http://localhost:8080/hello/id=${image.id}" class="btn btn-warning" onclick="confirm('삭제하시겠습니까?')">삭제</a>
<%--                        <button type="submit" class="btn btn-primary" id="btn-delete">삭제</button>--%>
                    </tr>
                </c:forEach>
            </table>
        </form>
    </div>
</div>
</body>
</html>