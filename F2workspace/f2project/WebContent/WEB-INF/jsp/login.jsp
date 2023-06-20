<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
  <meta charset="UTF-8">
  <title>memoly | ログイン</title>
  <link rel="stylesheet" type="text/css" href="/f2project/css/user.css">
  <meta name="viewport" content="width=device-width">
</head>

<body>
  <div id="main" class="login_main">
    <h1>
      <img src="/f2project/img/back-img.png">
    </h1>

    <div id="all_form">
      <form id="login_form" method="POST" action="/f2project/LoginServlet">
        <table>
          <tr>
            <td>
              <label>&nbsp;&nbsp;ID<br>
                <input type="text" name="ID" placeholder="例）f2project" maxlength="20" required>
              </label>
            </td>
          </tr>

          <tr>
            <td>
              <label>&nbsp;&nbsp;PW<br>
                <input type="password" name="PW" placeholder="例）f2password" maxlength="20" required>
              </label>
            </td>
          </tr>

          <tr>
            <td>
              <input id="login" type="submit" value="ログイン">
              <input id="reset" type="reset" value="リセット">
            <td>
          </tr>
        </table>
      </form>

      <form method="GET" action="/f2project/registServlet">
        <table>
          <tr>
            <td>
              <input id="new_regist" type="submit" value="新規登録">
            </td>
          </tr>
        </table>
      </form>

      <form method="GET" action="/f2project/resetServlet">
        <table>
          <tr>
            <td>
              <input id="new_pw" type="submit" value="パスワード忘れた方はこちら">
            </td>
          </tr>
        </table>
      </form>
    </div>
  </div>
<script>
'use strict'

document.getElementById('login_form').onsubmit = function(event) {
	const ID = document.forms['login_form'].elements['ID'].value;
	const PW = document.forms['login_form'].elements['PW'].value;

	if (((ID.length < 8) || (ID.length > 20)) && ((ID.length < 8) || (ID.length > 20))) {
		alert('ID,PWは8字以上20字以内で入力してください。');
		event.preventDefault();
	}
}
</script>
</body>
</html>