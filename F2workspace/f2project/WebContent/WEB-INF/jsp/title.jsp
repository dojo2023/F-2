<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
<link rel="stylesheet" href="css/style.css">
<meta name="viewport" content="width=device-width">
<title>memoly</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

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
<table id="titlelist">
	<tr>
		<th class="text01" name="audio/target01.wav">1000歩達成！</th>
		<td><img src="img/bronzestar.png" alt="星" width="24" height="24"></td>
	</tr>
	<tr>
		<th class="text01" name="audio/target02.wav">5000歩達成！</th>
		<td><img src="img/silverstar.png" alt="星" width="24" height="24"></td>
	</tr>
	<tr>
		<th class="text01" name="audio/target03.wav">10000歩達成！</th>
		<td><img src="img/goldstar.png" alt="星" width="24" height="24"></td>
	</tr>
	<tr>
		<th class="text01" name="audio/target04.wav">スポット登録３０件達成！</th>
		<td><img src="img/bronzestar.png" alt="星" width="24" height="24"></td>
	</tr>
	<tr>
		<th>スポット登録１００件達成！</th>
		<td></td>
	</tr>
	<tr>
		<th>スポット登録５００件達成！</th>
		<td></td>
	</tr>
	<tr>
		<th class="text01" name="audio/target06.wav">通算ログイン日数１００日達成！</th>
		<td><img src="img/bronzestar.png" alt="星" width="24" height="24"></td>
	</tr>
	<tr>
		<th class="text01" name="audio/target07.wav">通算ログイン日数３６５日達成！</th>
		<td><img src="img/silverstar.png" alt="星" width="24" height="24"></td>
	</tr>
	<tr>
		<th>通算ログイン日数１０００日達成！</th>
		<td></td>
	</tr>
</table>
</div>
<div id="characterbtn">
	<img class = "character" src="img/character.png" alt="キャラクター" width="120" height="120">
</div>
<div class="balloon">
	<textarea class="message" readonly>こんにちは！今日はいい天気ですね！どこにいきましょうか？</textarea>
</div>
</div>

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

  $("#characterbtn").click(function () {//ボタンがクリックされたら
	  $(".balloon").toggleClass('active');//balloonに activeクラスを付与し
	});

  $(".balloon").click(function () {//ボタンがクリックされたら
	  $(this).removeClass('active');//balloonの activeクラスを除去し
	});
</script>

<script>

$('.text01').click(function(){

	const music = new Audio($(this).attr('name'));
	music.play();

});

</script>


</html>