<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>メイシー</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<div class="wrapper">
  <!-- ヘッダー（ここから） -->
  <h1 id="logo">
    <a href="/simpleBC/MenuServlet"><img src="images/meisi-.png" width="260" height="90" alt="メイシー"></a>
  </h1>
  <ul id="nav">
    <li><a href="/simpleBC/MenuServlet">一覧</a></li>
    <li><a href="/simpleBC/SearchServlet">検索</a></li>
    <li><a href="/simpleBC/RegistServlet">登録</a></li>
    <li><a href="/simpleBC/LogoutServlet">ログアウト</a></li>
    <li><a href="/simpleBC/QuizServlet">クイズ</a></li>
  </ul>
</div>
  <!-- ヘッダー（ここまで） -->
  <!-- メイン（ここから） -->
  <div class="contents">
    <div class="left_contents">

    </div>
    <div class="center_contents">
    <c:forEach var="e" items="${cardList}" >
	番号<input type="text" name="NUMBER" value="${e.number}"><br>
	<% // 氏名<input type="text" name="NAME" value="${e.name}"><br> %>
	会社<input type="text" name="COMPANY" value="${e.company}"><br>
	部署<input type="text" name="DEPARTMENT" value="${e.department}"><br>
	会社所在地<input type="text" name="COMPANYADDRESS" value="${e.companyaddress}"><br>
	電話<input type="text" name="TEL" value="${e.tel}"><br>
	メール<input type="text" name="EMAIL" value="${e.email}"><br>
	<hr>
	<form method="POST" action="/simpleBC/DiscriminationServlet">
	<input type="hidden" name="NAME" value="${e.name}">
	<input type="text" name="ANSNAME" placeholder="この名刺の名前は？">
	<input type="submit" name="SUBMIT" value="回答">
	</form>
	</c:forEach>
    </div>
  <div class="right_contents">

  </div>
  </div>
  <!-- フッター（ここから） -->
  <div class="wrapper">
  <div id="footer">
    <p>&copy;Copyright Itsuki Yamashita. All rights reserved.</p>
  </div>
  </div>
  <!-- フッター（ここまで） -->
</body>
</html>