<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
   <form method="POST" action="/f2project/completionServlet">
    <table>
      <tr>
        <td>
          <label>ID<br>
          <input type="textbox" value="${check_id}" name="ID" readonly>
          </label>
        </td>
      </tr>

      <tr>
        <td>
          <label>パスワード<br>
          <input type="textbox" value="${check_pw}" name="PW" readonly>
          </label>
        </td>
      </tr>

      <tr>
        <td>
          <label>秘密の質問<br>
          <input type="textbox" value="${check_question}" readonly>
          </label>
        </td>
      </tr>

      <tr>
        <td>
          <label>回答<br>
          <input type="textbox" value="${check_answer}" name="ANSWER" readonly>
          </label>
        </td>
      </tr>


      <tr>
        <td colspan="2">
          <input type="submit" name="regist" value="登録">
        <td>
      </tr>
    </table>
    </form>
</body>
</html>