<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
      <h2>クイズ（スタートボタンでクイズを開始します）</h2>
      <form method="POST" action="/simpleBC/QuizServlet">
      <input type="submit" class="startbutton" value="スタート">
      </form>
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