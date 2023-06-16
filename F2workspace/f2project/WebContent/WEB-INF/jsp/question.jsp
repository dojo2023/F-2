<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html class="reset_back-color">
  <head>
    <meta charset="UTF-8">
    <title>秘密の質問回答画面</title>
    <link rel="stylesheet" type="text/css" href="/f2project/css/user.css">
    <meta name="viewport" content="width=device-width">
  </head>

  <body>
    <div id="main" class="reset_main">
      <div id="all_form">
        <form id="reset_form" method="POST">
          <table>
            <tr>
              <td>
                <div class="reset_text">
                  &nbsp;&nbsp;秘密の質問にお答えください。
                </div>
              </td>
            </tr>

            <tr>
	          <td>
                <label>&nbsp;&nbsp;秘密の質問<br>
                  <select id="q" class="reset_label" name="QUESTION">
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
                  <input id="ans" class="regist_label" type="text" name="ANSWER" placeholder="例）ポチ" maxlength="30">
                </label>
              </td>
            </tr>

            <tr>
              <td>
                <input id="submit" type="submit" name="next" value="次へ" formaction="/f2project/questionServlet">
                <input id="back" type="submit" name="back" value="戻る" formaction="/f2project/resetServlet">
             <td>
            </tr>
          </table>
        </form>
      </div>
    </div>
  <script>
  'use strict';

  if (<%= request.getAttribute("answer") != null %>) {
	  alert('秘密の質問の回答が違います。');
  }
  </script>
  </body>
</html>