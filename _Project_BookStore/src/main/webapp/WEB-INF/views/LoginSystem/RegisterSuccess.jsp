<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>註冊成功</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
<style>
	body{
		font-family:微軟正黑體!important;
	}
	
	.login-form {
		width: 340px;
    	margin: 30px auto;
	}
    .login-form form {
    	margin-bottom: 5px;
        background: white;
        box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
        padding: 30px;
    }
    .login-form h3 {
        margin: 30px auto;
    }
    h5 {
    	margin: 30px auto;
    }

    .form-control, .btn {
        min-height: 38px;
        border-radius: 2px;
    }
    .login-btn {       
        font-size: 15px;
        font-weight: bold;
    }
</style>
</head>
<body>
<jsp:include page="/fragment/topMVC.jsp" />
<div class="wrapper">
<div class="login-form">
    <form action="<c:url value='Login' />" method="get">
        <h3 class="text-center">註冊成功!</h3>	 
        <div class="text-center">
        	<div class="glyphicon glyphicon-ok-circle" style="font-size: 80px ;color:#2b2f4c; margin:30px auto"></div>  
        </div>   
        <div class="form-group">
            <h5 class="text-center">將在<span id="test" style="color: #f55d2c">5</span>秒後回到登入畫面</h5>
        </div> 
        <div class="form-group">
            <button type="submit" class="login-btn hover-btn">回到購物網站</button>
        </div>    
    </form>
</div></div>
<script type="text/javascript">
	window.onload =function() {
	var i = 4;
	setInterval(function(){
	if(i == 0) {
	location.href = "http://localhost:8080/_07_SalesPromotion/Login";
	}
	document.getElementById("test").innerHTML = i--; },1000);
	};
</script>
</body>
</html>