<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
<link rel="stylesheet" href="css/style.css">
<meta name="viewport" content="width=device-width">
<title>memory</title>
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
<div class = "header">
	<img src="img/memolylogo.png" alt="メモリーロゴ">
</div>
<div class = "main" id="main">
                    <div class="usage-item">
                        <div class="usage-photo">
                            <img src="img/memolymap.png" alt="画像１" width="185" height="422">
                        </div>
                        <div class="usage-text">
                            <h3>
                                 マップの使い方
                            </h3>
                            <p>
                                 ①検索欄に地名を入力することで事前に入力したスポットを開くことができます。
                            </p>
                            <p>
                                 ②現在地に戻ることができます。
                            </p>
                            <p>
                                 ③キャラクターを押すことにより音声をもう一度流れます。
                            </p>
                        </div>
                    </div>
                    <div class="usage-item">
                        <div class="usage-photo">
                            <img src="img/memolymapopen.png" alt="画像１" width="185" height="422">
                        </div>
                        <div class="usage-text">
                            <h3>
                                 スポット登録の仕方
                            </h3>
                            <p>
                                 ④地図の部分を押すとピンが設定でき最後のピンに対して⑤の動作をすることにより登録することができます。
                            </p>
                            <p>
                                 ⑤＋ボタンを押すと下からドロワーが出てきます。
                                  入力欄をすべて埋めることでスポット登録することができます。
                            </p>
                        </div>
                    </div>
                    <div class="usage-item">
                        <div class="usage-photo">
                            <img src="img/memolylist.png" alt="画像１" width="185" height="422">
                        </div>
                        <div class="usage-text">
                            <h3>
                                 リストの使い方
                            </h3>
                            <p>
                                 ①登録したスポットの詳細が確認でき変更と削除ができます。
                            </p>
                            <p>
                                 ②登録したスポットの座標に飛ぶことができます。
                            </p>

                        </div>
                    </div>
                    <div class="usage-item">
                        <div class="usage-photo">
                            <img src="img/memolylistopen.png" alt="画像１" width="185" height="422">
                        </div>
                        <div class="usage-text">
                            <h3>
                                 リストの検索
                            </h3>
                            <p>
                                 ③登録したものを1つ以上入力する検索で探すことができます。
                            </p>
                        </div>
                    </div>
                    <div class="usage-item">
                        <div class="usage-photo">
                            <img src="img/memolystory.png" alt="画像１" width="185" height="422">
                        </div>
                        <div class="usage-text">
                            <h3>
                                 ストーリーの使い方
                            </h3>
                            <p>
                                 ①新しく自分だけのストーリーを作ることができます。
                            </p>
                            <p>
                                 ②過去に登録された画像がストーリーとしてみることができます。
                            </p>
                        </div>
                    </div>
                </div>
</body>
<script>
  $(".openbtn1").click(function () {//ボタンがクリックされたら
  $(this).toggleClass('active');//ボタン自身に activeクラスを付与し
  $("#g-nav1").toggleClass('panelactive');//ナビゲーションにpanelactiveクラスを付与
  let obj = document.getElementById("main");
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
  let obj = document.getElementById("main");
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

  $("#characterbtn").click(function () {//ボタンがクリックされたら
	  $(".balloon").toggleClass('active');//balloonに activeクラスを付与し
	});

  $(".balloon").click(function () {//ボタンがクリックされたら
	  $(this).removeClass('active');//balloonの activeクラスを除去し
	});
</script>
</html>