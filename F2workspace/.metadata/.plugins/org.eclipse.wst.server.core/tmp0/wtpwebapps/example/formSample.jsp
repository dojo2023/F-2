<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ユーザー登録もどき</title>
</head>
<body>
	<form action="/example/FormSampleServlet" method="post">
	名前：<br>
	<input type="text" name="name"><br>
	性別：<br>
	男<input type="radio" name="gender" value="0">
	女<input type="radio" name="gender" value="1"><br>
	体重：<Br>
	<input type="text" name="weight" placeholder="例65.7のように入力"><br>
	身長：<br>
	<input type="text" name="tall" placeholder="例1.56のように入力"><br>
	<input type="submit" value="登録">
	</form>
</body>
</html>