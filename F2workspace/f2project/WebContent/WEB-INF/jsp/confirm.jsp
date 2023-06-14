<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css" href="/f2project/css/user.css">
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
          <input id="regist_text" type="text" value="こちらでお間違いないですか？" readonly>
        </td>
      </tr>

      <tr>
        <td>
          <label>ID<br>
          <input id="id" class="regist_label" type="text" value="${check_id}" name="ID" readonly>
          </label>
        </td>
      </tr>

      <tr>
        <td>
          <label>PW<br>
          <input id="pw" class="regist_label" type="text" value="${check_pw}" name="PW" readonly>
          </label>
        </td>
      </tr>

      <tr>
        <td>
          <label>秘密の質問<br>
          <input id="q" class="regist_label" type="text" value="${check_question}" readonly>
          </label>
        </td>
      </tr>

      <tr>
        <td>
          <label>回答<br>
          <input id="ans" class="regist_label" type="text" value="${check_answer}" name="ANSWER" readonly>
          </label>
        </td>
      </tr>


      <tr>
        <td colspan="2">
          <input id="submit" type="submit" name="regist" value="登録">
          <a href="/f2project/registServlet">
            <input id="back" type="button" name="back" value="戻る">
          </a>
        <td>
      </tr>
    </table>
    </form>
</body>
</html>