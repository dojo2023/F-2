<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
   <h2>PWリセット</h2>
   <form method="POST" action="/f2project/questionServlet">
    <table>
      <tr>
	    <td>
          <label>秘密の質問<br>
          <select name="QUESTION">
          	<option value="1">しつもん１</option>
          	<option value="2">しつもん２</option>
          	<option value="3">しつもん３</option>
          </select>
          </label>
        </td>
      </tr>

      <tr>
        <td>
          <label>
          <input type="text" name="ANSWER">
          </label>
        </td>
      </tr>


      <tr>
        <td colspan="2">
          <input type="submit" name="next" value="次へ">
          <a href="/f2project/resetServlet">
          <input type="button" name="back" value="戻る">
          </a>
        <td>
      </tr>
    </table>
    </form>
</body>
</html>