<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="model.Health" %>
<%
// リクエストスコープに保存されたHealthを取得
Health health = (Health) request.getAttribute("health");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>スッキリ健康診断</title>
</head>
<body>
<h1>スッキリ健康診断の結果</h1>
<p>
身長：${health.height}<br>
体重：${health.weight}<br>
BMI：${health.bmi}<br>
体格：${health.bodyType}<br>
理想体重：${health.perfectweight}
</p>
<a href="/example/HealthCheck">戻る</a>
</body>
</html>