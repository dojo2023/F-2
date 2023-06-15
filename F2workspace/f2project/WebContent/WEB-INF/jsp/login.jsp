<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html id="back_img">
<div id="back_rgba">
</div>
<head>
<meta charset="UTF-8">
<title>ログイン</title>
<link rel="stylesheet" type="text/css" href="/f2project/css/user.css">
</head>
<body>
<h1>
<img src="/f2project/img/back-img.png">
</h1>
<div id="circle"></div>
<div id="login_form_all">
   <form id="login_form" method="POST" action="/f2project/LoginServlet">
    <table>
      <h2>ログイン</h2>

      <tr>
        <td>
          <label>&nbsp;&nbsp;ID<br>
          <input id="id" class="login_label" type="text" name="ID" placeholder="例）f2project" maxlength="20" required>
          </label>
        </td>
      </tr>

      <tr>
        <td>
          <label>&nbsp;&nbsp;PW<br>
          <input id="pw" class="login_label" type="password" name="PW" placeholder="例）f2password" maxlength="20" required>
          </label>
        </td>
      </tr>

      <tr>
        <td colspan="2">
          <input id="login" type="submit" name="LOGIN" value="ログイン">
          <input id="reset" type="reset" name="reset" value="リセット">
        <td>
      </tr>
    </table>
    </form>
    <form method="POST" action="/f2project/registServlet">
    <input id="new_regist" type="submit" name="user_regist" value="新規登録">
    </form>
    <form method="POST" action="/f2project/resetServlet">
    <input id="new_pw" type="submit" name="user_regist" value="パスワード忘れた方はこちら">
    </form>
  </div>
</body>
</html>