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
        <form id="reset_form" name="reset_form">
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
            <input type="hidden" name="ID" value="${check_id}">
            <input type="hidden" name="ANSWER" value="${check_answer}">
          </table>
        </form>

        <table>
          <tr>
            <td>
              <form id="submit_form" name="submit_form" method="POST" action="/f2project/completionServlet">
                <input id="submit" type="submit" name="pw_regist" value="登録">
              </form>

              <form id="back_form" name="back_form" method="POST" action="/f2project/questionServlet">
                <input id="back" type="submit" name="back" value="戻る">
              </form>
            </td>
          </tr>
        </table>
      </div>
    </div>
  <script>
  'use strict';

  document.getElementById('submit_form').onsubmit = function(event) {
		  const PW = document.forms['reset_form'].elements['PW'].value;
		  const PW2 = document.forms['reset_form'].elements['PW2'].value;

		  if ((PW.length < 8) || (PW2.length > 20)) {
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