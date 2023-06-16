<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="reset_back-color">
  <head>
    <meta charset="UTF-8">
    <title>新規パスワード入力画面</title>
    <link rel="stylesheet" type="text/css" href="/f2project/css/user.css">
    <meta name="viewport" content="width=device-width">
  </head>

  <body>
    <div id="main" class="reset_main">
      <div id="all_form">
        <form id="reset_form" name="reset_form" method="POST">
          <table>
            <tr>
              <td>
                <div class="reset_text">
                  &nbsp;&nbsp;新しいパスワードを入力してください。
                </div>
              </td>
            </tr>

            <tr>
              <td>
                <label>&nbsp;&nbsp;新しいパスワードを入力<br>
                  <input id="pw" class="reset_label" type="password" name="PW" placeholder="例）f2password" maxlength="20">
                </label>
              </td>
            </tr>

            <tr>
              <td>
                <label>&nbsp;&nbsp;パスワードの確認入力<br>
                  <input id="pw2" class="reset_label" type="password" name="PW2" maxlength="20">
                </label>
              </td>
            </tr>

            <tr>
              <td>
                <input id="submit" type="submit" name="pw_regist" value="登録" formaction="/f2project/completionServlet">
                <input id="back" type="submit" name="back" value="戻る" formaction="/f2project/questionServlet">
              </td>
            </tr>
          </table>
        </form>
      </div>
    </div>
  <script>
  'use strict';

  document.getElementById('reset_form').onsubmit = function(event) {
	  const PW = document.forms['reset_form'].elements['PW'].value;
	  const PW2 = document.forms['reset_form'].elements['PW2'].value;

	  if ((pw.length < 8) || (pw.length > 20)) {
		  alert('ID,PWは8字以上20字以内で入力してください。');
		  event.preventDefault();
	  }

	  if (PW !== PW2) {
		  alert('パスワードが一致しません。');
  	      event.preventDefault();
  	  } else if (!PW || !PW2) {
  		alert('パスワードが入力されていません。');
  		event.preventDefault();
  	  }
  }
  </script>
  </body>
</html>