<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html class="reset_back-color">
<head>
  <meta charset="UTF-8">
  <title>memoly | パスワードリセット(秘密の質問)</title>
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
                <input type="text" name="ANSWER" placeholder="例）ポチ" maxlength="30" required>
              </label>
            </td>
          </tr>

          <input type="hidden" name="ID" value="${check_id}">

          <tr>
            <td>
              <input id="submit" type="submit" value="次へ" formaction="/f2project/questionServlet">
            <td>
          </tr>
        </table>
      </form>

      <form method="GET" action="/f2project/resetServlet">
        <input id="q_back" type="submit" value="戻る">
      </form>
    </div>
  </div>
</body>
</html>