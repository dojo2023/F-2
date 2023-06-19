<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
    <link rel="stylesheet" href="style.css" />
<title>Memoly</title>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>

<script type="text/javascript">
        $(document).ready(function(){
            $('.slider').bxSlider({
                auto: true,
                pause: 3000,
            });
        });
</script>


</head>
<body>
<h1><center>テストの表示です</center></h1>


<div class="slider" text-align:center;>
<img src="img/1.png" style="display: block; margin: auto;">
<img src="img/2.png" style="display: block; margin: auto;">
<img src="img/3.png" style="display: block; margin: auto;">

</div>

</body>


</html>