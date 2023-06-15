<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>memoly</title>
    <link rel="stylesheet" type="text/css" href="/f2project/css/user.css">
    <meta name="viewport" content="width=device-width">
  </head>

  <body>
    <div id="main" class="login_main">
      <div id="back_rgba">
        <h1>
          <img src="/f2project/img/back-img.png">
        </h1>
        <div id="circle"></div>

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
                <td colspan="2">
                  <input id="login" type="submit" name="login" value="ログイン">
                  <input id="reset" type="reset" name="reset" value="リセット">
                <td>
              </tr>
            </table>
          </form>

          <form method="POST" action="/f2project/registServlet">
            <table>
              <tr>
                <td>
                  <input id="new_regist" type="submit" name="user_regist" value="新規登録">
                </td>
              </tr>
            </table>
          </form>

          <form method="POST" action="/f2project/resetServlet">
            <table>
              <tr>
                <td>
                  <input id="new_pw" type="submit" name="user_regist" value="パスワード忘れた方はこちら">
                </td>
              </tr>
            </table>
          </form>
        </div>
      </div>
    </div>
  </body>
</html>