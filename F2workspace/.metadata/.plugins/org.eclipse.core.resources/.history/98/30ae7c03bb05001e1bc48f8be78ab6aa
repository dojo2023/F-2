<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>メイシー</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
  <div class="wrapper_login">
    <h1 id="logo">
      <a href="/simpleBC/loginServlet"><img src="./images/meisi-.png" width="260" height="90" alt="メイシー"></a>
    </h1>
  </div>
  <!-- メイン（ここから） -->
<div class="contents">
  <div class="left_contents">

  </div>
  <div class="center_contents">
   <h2>ログイン</h2>
   <form method="POST" action="/simpleBC/LoginServlet">
    <table>
      <tr>
        <td>
          <label>ユーザーID<br>
          <input type="text" name="ID">
          </label>
        </td>
      </tr>
      <tr>
        <td>
          <label>パスワード<br>
          <input type="password" name="PW">
          </label>
        </td>
      <tr>
      <tr>
        <td colspan="2">
          <input type="submit" name="LOGIN" value="ログイン">
          <input type="reset" name="reset" value="リセット">
          <span id="error_message"></span>
        <td>
      </tr>
    </table>
  </form>
</div>
    <div class="right_contents">

    </div>
</div>
  <!-- メイン（ここまで） -->
  <!-- フッター（ここから） -->
  <div class="wrapper_login">
    <div id="footer">
      <p>&copy;Copyright Itsuki Yamashita. All rights reserved.</p>
    </div>
  </div>
  <!-- フッター（ここまで） -->
<!-- JavaScript（ここから） -->
<script>
/* [ログイン]ボタンをクリックしたときの処理 */
var formObj = document.getElementById('login_form');
var errorMessageObj = document.getElementById('error_message');
formObj.onsubmit = function() {
  if (!formObj.user_id.value || !formObj.password.value) {
    errorMessageObj.textContent = '※IDとパスワードを入力してください！';
    return false;
  }
  errorMessageObj.textContent = null;
};

/* [リセット]ボタンをクリックしたときの処理 */
formObj.onreset = function() {
  errorMessageObj.textContent = null;
};
</script>
<!-- JavaScript（ここまで） -->
</body>
</html>