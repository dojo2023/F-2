<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html class="reset_back-color">
  <head>
    <meta charset="UTF-8">
    <title>パスワードリセット画面</title>
    <link rel="stylesheet" type="text/css" href="/f2project/css/user.css">
    <meta name="viewport" content="width=device-width">
  </head>

  <body>
    <div id="main" class="reset_main">
      <div id="all_form">
        <form id="reset_form" method="POST" action="/f2project/resetServlet">
          <table>
            <tr>
              <td>
                <div class="reset_text">
                  &nbsp;&nbsp;パスワードをリセットするアカウントのIDを入力してください。
                </div>
              </td>
            </tr>

            <tr>
              <td>
                <label>&nbsp;&nbsp;ID<br>
                  <input id="id" class="reset_label" type="text" name="ID" placeholder="例）f2project" maxlength="20" required>
                </label>
              </td>
            </tr>

            <tr>
              <td colspan="2">
                <input id="submit" type="submit" name="next" value="次へ">
                <a href="/f2project/LoginServlet">
                  <input id="back" type="button" name="back" value="戻る">
                </a>
              <td>
            </tr>
          </table>
        </form>
      </div>
    </div>
  </body>
</html>