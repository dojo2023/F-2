<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html class="regist_back-color">
<head>
  <meta charset="UTF-8">
  <title>memoly | 新規登録(確認)</title>
  <link rel="stylesheet" type="text/css" href="/f2project/css/user.css">
  <meta name="viewport" content="width=device-width">
</head>

<body>
  <div id="main" class="regist_main">
    <div id="all_form">
      <form id="regist_form" method="POST" action="/f2project/completionServlet">
        <table>
          <tr>
            <td>
              <div id="regist_text">
                &nbsp;&nbsp;こちらでお間違えないですか？
              </div>
            </td>
          </tr>

          <tr>
            <td>
              <label>&nbsp;&nbsp;ID<br>
                <input type="text" name="ID" value="${check_id}" readonly>
              </label>
            </td>
          </tr>

          <tr>
            <td>
              <label>&nbsp;&nbsp;PW<br>
                <input type="text" name="PW" value="${check_pw}" readonly>
              </label>
            </td>
          </tr>

          <tr>
            <td>
              <label>&nbsp;&nbsp;秘密の質問<br>
                <input id="read_q" type="text" value="${check_question}" readonly>
              </label>
            </td>
          </tr>

          <tr>
            <td>
              <label>&nbsp;&nbsp;回答<br>
                <input type="text" name="ANSWER" value="${check_answer}" readonly>
              </label>
            </td>
          </tr>

          <tr>
            <td>
              <input id="submit" type="submit" name="regist" value="登録">
            <td>
          </tr>
        </table>
      </form>

      <form method="GET" action="/f2project/registServlet">
        <input id="login_back" type="submit" value="戻る">
      </form>
    </div>
  </div>
</body>
</html>