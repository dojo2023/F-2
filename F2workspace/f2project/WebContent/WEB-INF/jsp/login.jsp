<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
   <h2>ログイン</h2>
   <form method="POST" action="/f2project/LoginServlet">
    <table>
      <tr>
        <td>
          <label>ユーザーID<br>
          <input type="text" name="ID" required>
          </label>
        </td>
      </tr>

      <tr>
        <td>
          <label>パスワード<br>
          <input type="password" name="PW" required>
          </label>
        </td>
      </tr>

      <tr>
        <td colspan="2">
          <input type="submit" name="LOGIN" value="ログイン">
          <input type="reset" name="reset" value="リセット">
        <td>
      </tr>
    </table>
    </form>
    <form method="POST" action="/f2project/registServlet">
    <input type="submit" name="user_regist" value="新規登録">
    </form>
    <form method="POST" action="/f2project/resetServlet">
    <input type="submit" name="user_regist" value="パスワード忘れた方はこちら">
    </form>
</body>
</html>