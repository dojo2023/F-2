<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="https://code.jquery.com/ui/1.12.0/jquery-ui.min.js"></script>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="css/style.css">
<meta name="viewport" content="width=device-width">
<title>memoly</title>

<style>
.pest-01 { display: none; }
.detail{
	display: none;
}
</style>

</head>
<body>
<div class="openbtn2">
		<span></span><span></span><span></span>
	</div>
	<nav id="g-nav2">
		<div id="g-nav-list2">
			<ul>
				<li><a href="MapServlet">マップ</a></li>
				<li><a href="listServlet">リスト</a></li>
				<li><a href="titleServlet">称号</a></li>
				<li><a href="storyServlet">ストーリー</a></li>
				<li><a href="usageServlet">使い方</a></li>
			</ul>
		</div>
	</nav>
<div class = "header">
	<img src="img/memolylogo.png" alt="メモリーロゴ">
</div>

<div class = "main">
<div class="tabletitle">


<table id="titlelist2">
<c:forEach var="e" items="${cardList}" >

	<tr class="nav-open">
		<td >
			<img src="${e.genre}" alt="アイコン" width="24px" height="24px">
		</td>
		<th><span>${e.name}</span></th>
		<td>
			<form method="GET" action="/f2project/MapServlet">
				<input type="image" name="img_data" src="img/destinationicon.png" alt="アイコン" width="18px" height="24px">
				<input id="img_data_x" type="hidden" name="img_data_x" value="x">
				<input id="img_data_y" type="hidden" name="img_data_y" value="y">
			</form>
			<script>
			console.log(<%= request.getParameter("img_data_x") %>);
			console.log(<%= request.getParameter("img_data_y") %>);
			$('#img_data_x').val(<%= request.getParameter("img_data_x") %>);
			$('#img_data_y').val(<%= request.getParameter("img_data_y") %>);
			</script>
		</td>
	</tr>


		<tr class="detail">
		<td colspan="3">

		<form method="POST" action="/f2project/listServlet">
		<input class="date1" type="text" name="DATE" size= "6" value="${e.date}">
	    <img src="${e.genre} + '.png'" alt="アイコン" width="24px" height="24px"><br>
	    <input class="name1" type="text" name="NAME" size= "36" maxlength="20" value="${e.name}"><br>
	    <input class="address1" type="text" name="ADDRESS" size= "36" maxlength="40" value="${e.address}"><br>
	    <img src="img/character.png" alt="アイコン" width="100px" height="150px">
	    <img src="img/character.png" alt="アイコン" width="100px" height="150px">
	    <img src="img/character.png" alt="アイコン" width="100px" height="150px"><br>
	    <textarea class="tarea" cols="37" rows="6" maxlength="100" placeholder="備考">${e.remarks}</textarea><br>
		<input id="update" type="submit" name="update" value="更新">
        <input id="delete" type="submit" name="delete" value="削除">
		</form>
		</td>
		</tr>



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

<!--
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
-->

  <script>

	$(function(){
		//クリックで動く
		$('tr.nav-open').click(function(){
			$(this).toggleClass('active');
			$(this).next('tr.detail').slideToggle();
		});
	});
  </script>


</body>
<script>
  $(".openbtn1").click(function () {//ボタンがクリックされたら
  $(this).toggleClass('active');//ボタン自身に activeクラスを付与し
  $("#g-nav1").toggleClass('panelactive');//ナビゲーションにpanelactiveクラスを付与
});

//$("#g-nav a").click(function () {//ナビゲーションのリンクがクリックされたら
//    $(".openbtn1").removeClass('active');//ボタンの activeクラスを除去し
//    $("#g-nav1").removeClass('panelactive');//ナビゲーションのpanelactiveクラスも除去
//});

  $(".openbtn2").click(function () {//ボタンがクリックされたら
  $(this).toggleClass('active');//ボタン自身に activeクラスを付与し
  $("#g-nav2").toggleClass('panelactive');//ナビゲーションにpanelactiveクラスを付与
});

  $("#g-nav2 a").click(function () {//ナビゲーションのリンクがクリックされたら
  $(".openbtn2").removeClass('active');//ボタンの activeクラスを除去し
  $("#g-nav2").removeClass('panelactive');//ナビゲーションのpanelactiveクラスも除去
});
</script>
</html>

