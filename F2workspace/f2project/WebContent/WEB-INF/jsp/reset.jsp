<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
   <h2>PWリセット</h2>

<form method="POST" action="/f2project/resetServlet">

  <table>
      <tr>
        <td>
          <label>ID<br>
          <input type="text" name="ID" required>
          </label>
        </td>
      </tr>

      <tr>
        <td colspan="2">
          <input type="submit" name="next" value="次へ">
          <a href="/f2project/LoginServlet">
          <input type="button" name="back" value="戻る">
          </a>
        <td>
      </tr>
    </table>
    </form>
</body>
</html>