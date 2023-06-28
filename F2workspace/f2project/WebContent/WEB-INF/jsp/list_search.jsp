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
<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
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
				<li><a href="LoginServlet">ログアウト</a></li>
			</ul>
		</div>
	</nav>
	<div class="openbtn8">
		<img src="img/虫眼鏡.png" alt="検索ボタン" width="50px" height="50px">
	</div>
	<nav id="g-nav8">
		<form action="/f2project/listServlet" method="post">
			<div id="g-nav-list8">
				<ul>
					<li class="left">日付</li>
					<li id="spotname">
						<input type="text" size= "7" name="date">
						<div class="text_underline"></div>
					</li>
				</ul>
				<ul>
					<li class="left">スポット名</li>
					<li id="spotname">
						<input type="text" size= "36" name="spotname">
						<div class="text_underline"></div>
					</li>
				</ul>
				<ul>
					<li class="left">スポット住所</li>
					<li class="spotarea">
						<textarea class="area" cols="37" rows="2" maxlength="40" name="spotaddress"></textarea>
						<div class="text_underline"></div>
					</li>
				</ul>
				<ul>
					<li class="right"><input type="submit" value="検索" class="submit" ></li>
				</ul>
			</div>
		</form>
	</nav>

<div class = "header">
	<img src="img/memolylogo.png" alt="メモリーロゴ">
</div>

<div class = "main">
<div class="tabletitle">


<table class="titlelist2">
<tr class="nav-open">
		<td>
			<img src="img/memoryicon.png" alt="アイコン" width="24px" height="24px">
		</td>
		<th><span>東京タワー</span></th>
		<td>
			<form method="POST" action="/f2project/MapServlet">
				<div class="pin_marker"><i class="fa fa-map-marker"></i></div>
				<div class="pin_submit"><input type="submit" name="tokyo_tower"></div>
				<input type="hidden" name="pin_data" value="tokyo_tower">
			</form>
		</td>
	</tr>
	<tr class="detail">
		<td colspan="3">
			<form method="POST" action="/f2project/UpdateDeleteServlet">
				<input class="date1" type="text" name="DATE" size= "6" value="2023-06-23">
	    		<img src="img/memoryicon.png" alt="アイコン" width="24px" height="24px"><br>
	    		<input class="name1" type="text" name="NAME" size= "36" maxlength="20" value="東京タワー"><br>
	    		<input class="address1" type="text" name="ADDRESS" size= "36" maxlength="40" value="東京都港区芝公園４丁目２−８"><br>
				<img src="spot_img/東京タワー.png" alt="スポット画像" width="300px">
	    		<textarea class="tarea" cols="37" rows="6" maxlength="100" placeholder="備考">東京タワーは、東京都港区芝公園にある総合電波塔である。日本電波塔とも呼ばれる。 1958年12月23日竣工。東京のシンボル、観光名所である。</textarea><br>
				<input id="update" type="submit" name="update" value="更新">
        		<input id="delete" type="submit" name="delete" value="削除">
			</form>
		</td>
	</tr>

	<tr class="nav-open">
		<td >
			<img src="img/memoryicon.png" alt="アイコン" width="24px" height="24px">
		</td>
		<th><span>東京スカイツリー</span></th>
		<td>
			<form method="POST" action="/f2project/MapServlet">
				<div class="pin_marker"><i class="fa fa-map-marker"></i></div>
				<div class="pin_submit"><input class="pin_submit" type="submit" name=""></div>
			</form>
		</td>
	</tr>
	<tr class="detail">
		<td colspan="3">
			<form method="POST" action="/f2project/UpdateDeleteServlet">
				<input class="date1" type="text" name="DATE" size= "6" value="2023-06-27">
	    		<img src="img/memoryicon.png" alt="アイコン" width="24px" height="24px"><br>
	    		<input class="name1" type="text" name="NAME" size= "36" maxlength="20" value="東京スカイツリー"><br>
	    		<input class="address1" type="text" name="ADDRESS" size= "36" maxlength="40" value="東京都墨田区押上一丁目1番1号"><br>
				<img src="spot_img/東京スカイツリー.png" alt="スポット画像" width="300px">
				<img src="spot_img/東京スカイツリー2.png" alt="スポット画像" width="300px">
	    		<textarea class="tarea" cols="37" rows="6" maxlength="100" placeholder="備考">東京のランドマークの一つ。高さは634 mで、タワーとしては世界第1位[注釈 1]。建築物としてはブルジュ・ハリファ、PNB118（ムルデカ118）に次ぐ世界第3位となる。</textarea><br>
				<input id="update" type="submit" name="update" value="更新">
        		<input id="delete" type="submit" name="delete" value="削除">
			</form>
		</td>
	</tr>

</table>

</div>
</div>
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
  $(".openbtn8").click(function () {//ボタンがクリックされたら
  $(this).toggleClass('active');//ボタン自身に activeクラスを付与し
  $("#g-nav8").toggleClass('panelactive');//ナビゲーションにpanelactiveクラスを付与
  let obj = document.getElementById("map");
  if( $(this).hasClass('active') ){
      obj.style.opacity = 0.5;
      //obj.style.background-color="#999";
  }else if( !$(this).hasClass('active') ){
  	obj.style.opacity = 1;
  	//obj.style.background-color="#fff";
  }
});

//$("#g-nav a").click(function () {//ナビゲーションのリンクがクリックされたら
//    $(".openbtn1").removeClass('active');//ボタンの activeクラスを除去し
//    $("#g-nav1").removeClass('panelactive');//ナビゲーションのpanelactiveクラスも除去
//});

  $(".openbtn2").click(function () {//ボタンがクリックされたら
  $(this).toggleClass('active');//ボタン自身に activeクラスを付与し
  $("#g-nav2").toggleClass('panelactive');//ナビゲーションにpanelactiveクラスを付与
  let obj = document.getElementById("map");
  if( $(this).hasClass('active') ){
      obj.style.opacity = 0.5;
      //obj.style.background-color="#999";
  }else if( !$(this).hasClass('active') ){
  	obj.style.opacity = 1;
  	//obj.style.background-color="#fff";
  }
});

  $("#g-nav2 a").click(function () {//ナビゲーションのリンクがクリックされたら
  $(".openbtn2").removeClass('active');//ボタンの activeクラスを除去し
  $("#g-nav2").removeClass('panelactive');//ナビゲーションのpanelactiveクラスも除去
});
</script>
</html>

