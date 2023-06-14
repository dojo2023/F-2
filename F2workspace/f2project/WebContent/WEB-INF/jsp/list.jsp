<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/style.css">
<meta name="viewport" content="width=device-width">
<title>memoly</title>


</head>
<body>
<div class = "header">

</div>

<div class = "main">
<div class="centertable">
<table border="1" width="85%">
<c:forEach var="e" items="${cardList}" >
	<tr>
		<td><input type="text" name="GENRE" value="${e.genre}"></td>
		<td><input type="text" name="NAME" value="${e.name}"></td>
	</tr>
	<div class="pest-${count}">
	    <span class="genre1">${e.genre}</span>
	    <span class="name1">${e.name}</span>
	    <span class="date1">${e.date}</span>
	    <span class="address1">${e.address}</span>
	    <span class="remarks1">${e.remarks}</span>
	</div>
</c:forEach>
</table>
</div>
</div>

<section class="accordion">
<input id="block-01" type="checkbox" class="toggle">
<p id="pest-01"><br>
アリスは川辺でおねえさんのよこにすわって、なんにもすることがないのでとても退屈（たいくつ）しはじめていました。
一、二回はおねえさんの読んでいる本をのぞいてみたけれど、そこには絵も会話もないのです。
「絵や会話のない本なんて、なんの役にもたたないじゃないの」とアリスは思いました。</p>
</section>


<script>

var tbl=document.getElementById("click01");
var menu=document.getElementById("pest-01");
var flag = 0;
tbl.addEventListener('click',function(){
	if( flag == 0 )	{
		menu.style.display="block";
		flag = 1;
	}
	else if (flag == 1){
		menu.style.display="none";
		flag = 0;
	}

});
</script>


</body>
</html>

