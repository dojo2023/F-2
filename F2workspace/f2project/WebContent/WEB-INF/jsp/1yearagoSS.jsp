<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
<meta name="viewport" content="width=device-width">
<title>memoly</title>
<script type="text/javascript">
        $(document).ready(function(){
            $('.slider').bxSlider({
                auto: true,
                pause: 4000,
            });
        });
</script>
</head>
<body class="body2">
<div class = "header2">
	<br><br><br><br><br>
</div>
<div class = "main2">
	<div class="slider" >
		<img src="spot_img/上野動物園.png" alt="スライドショー画像">
		<img src="spot_img/109.png" alt="スライドショー画像">
		<img src="spot_img/銀座三越.png" alt="スライドショー画像">
	</div>
</div>

<script>
	const music = new Audio("voice/${random}.mp3");
	music.play();
</script>


</body>
</html>