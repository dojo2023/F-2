<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>新規登録画面</title>
    <link rel="stylesheet" type="text/css" href="/f2project/css/user.css">
    <meta name="viewport" content="width=device-width">
  </head>

  <body>
    <div id="main" class="regist_main">
      <div id="all_form">
        <form id="regist_form" method="POST" action="/f2project/confirmServlet">
          <table>
            <tr>
              <td>
                <div class="regist_text">
                  &nbsp;&nbsp;IDは8～20文字<br>
                  &nbsp;&nbsp;PWは8～20文字の英数字<br>
                  &nbsp;&nbsp;秘密の質問はパスワードお忘れの際に<br>
                  &nbsp;&nbsp;ご利用になります。
                </div>
              </td>
            </tr>

            <tr>
              <td>
                <label>&nbsp;&nbsp;ID<br>
                  <input id="id" type="text" name="ID" placeholder="例）f2project" maxlength="20" required>
                </label>
               </td>
            </tr>

            <tr>
              <td>
                <label>&nbsp;&nbsp;PW<br>
                  <input id="pw" type="password" name="PW" placeholder="例）f2password" maxlength="20" required>
                </label>
              </td>
            </tr>

            <tr>
              <td>
                <label>&nbsp;&nbsp;秘密の質問<br>
                  <select id="q" name="QUESTION">
                    <option value="1">飼っていたペットの名前は？</option>
                    <option value="2">通っていた小学校の名前は？</option>
                    <option value="3">母親の旧姓は？</option>
                  </select>
                </label>
              </td>
            </tr>

            <tr>
              <td>
                <label>&nbsp;&nbsp;回答<br>
                  <input id="ans" type="text" name="ANSWER" placeholder="例）ポチ" maxlength="30" required>
                </label>
              </td>
            </tr>

            <tr>
              <td colspan="2">
                <input id="check" type="submit" name="check" value="確認画面へ">
                <input id="reset" type="reset" name="reset" value="リセット">
              <td>
            </tr>
            <tr>
              <td colspan="2">
                <a href="/f2project/LoginServlet">
                  <input id="backa" type="button" name="back" value="戻る">
                </a>
              <td>
            </tr>
          </table>
       </form>
      </div>
    </div>
  <script>
  'use strict';

  document.getElementById('regist_form').onsubmit = function(event) {
	  var id = document.getElementById('regist_form').ID.value;
	  var pw = document.getElementById('regist_form').PW.value;

	  if (((id.length < 8) || (id.length > 20)) || ((pw.length < 8) || (pw.length > 20))) {
		  alert('ID,PWは8字以上20字以内で入力してください。');
		  event.preventDefault();
	  }
  }

  if (<%= request.getAttribute("check_id") != null %>) {
	  alert('入力されたIDが他に存在しています。');
	  event.preventDefault();
  }
  </script>
  </body>
</html>