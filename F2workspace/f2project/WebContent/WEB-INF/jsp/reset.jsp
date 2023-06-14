<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css" href="/f2project/css/user.css">
<!doctype html>
<html class="reset_back-color">
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<!-- <h2>PWリセット</h2> -->
<form id="reset_form" method="POST" action="/f2project/resetServlet">

  <table>
      <tr>
        <td>
          <input id="reset_text" type="text" value="パスワードをリセットするアカウントのIDを入力してください。" readonly>
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
</body>
</html>