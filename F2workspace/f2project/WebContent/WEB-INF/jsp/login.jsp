<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css" href="/f2project/css/user.css">
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body id="login_body">
<h1>
<img src="/f2project/img/back-img.png">
</h1>
<div id="circle"></div>
<div class="back_design">
<!-- <h2>ログイン</h2> -->
   <form id="login_form" method="POST" action="/f2project/LoginServlet">
    <table>
      <tr>
        <td>
          <label>ID<br>
          <input id="id" class="login_label" type="text" name="ID" placeholder="例）f2project" maxlength="20" required>
          </label>
        </td>
      </tr>

      <tr>
        <td>
          <label>PW<br>
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