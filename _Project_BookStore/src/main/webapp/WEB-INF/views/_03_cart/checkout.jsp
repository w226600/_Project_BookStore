﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, shrink-to-fit=9">
<meta name="description" content="Gambolthemes">
<meta name="author" content="Gambolthemes">
<title>書果店 - 結帳</title>

<!-- Favicon Icon -->
<link rel="icon" type="image/png"
	href="${pageContext.request.contextPath}/images/fav.png">

<!-- Stylesheets -->
<link href="https://fonts.googleapis.com/css2?family=Rajdhani:wght@300;400;500;600;700&display=swap" rel="stylesheet">
<link href='${pageContext.request.contextPath}/vendor/unicons-2.0.1/css/unicons.css' rel='stylesheet'>
<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/responsive.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/night-mode.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/step-wizard.css" rel="stylesheet">

<!-- Vendor Stylesheets -->
<link href="${pageContext.request.contextPath}/vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/vendor/OwlCarousel/assets/owl.carousel.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/vendor/OwlCarousel/assets/owl.theme.default.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/vendor/semantic/semantic.min.css">

<script>
localStorage.setItem('openleft','');
function order_placed() {
	console.log('======================================================');
	console.log(document.getElementById('name').value);
	console.log(document.getElementById('email1').value);
	console.log(document.getElementById('flat').value);
	console.log(document.getElementById('cashondelivery1').value);
	console.log(document.getElementById('card1').value);
	console.log(selectedOption);
	console.log(document.getElementById('holdername').value);
	console.log(document.getElementById('cardnumber').value);
	console.log(document.getElementById('cardexpire-month').value);
	console.log(document.getElementById('cardexpire-year').value);
	console.log(document.getElementById('cardcvc').value);
	console.log(document.getElementById('phone').value);
	
	console.log('======================================================');
	var name = document.getElementById('name').value;
	var email = document.getElementById('email1').value;
	var flat = document.getElementById('flat').value;
	var holdername = document.getElementById('holdername').value;
	var cardnumber = document.getElementById('cardnumber').value;
	var cardexpiremonth = document.getElementById('cardexpire-month').value;
	var cardexpireyear = document.getElementById('cardexpire-year').value;
	var cardcvc = document.getElementById('cardcvc').value;
	var phone = document.getElementById('phone').value;
	var selectedOption = $("input:radio[name=paymentmethod]:checked").val();

	document.forms[0].action="<c:url value='order_placed?name=" + name + "&email=" + email + "&holdername=" + holdername + "&cardnumber=" + cardnumber + "&cardexpiremonth=" + cardexpiremonth + "&cardexpireyear=" + cardexpireyear + "&cardcvc=" + cardcvc + "&selectedOption=" + selectedOption + "&flat=" + flat + "&phone=" + phone +"' />" ;
	document.forms[0].method="POST";
	document.forms[0].submit();
	
}


</script>

</head>

<body>
<jsp:include page="/fragment/topMVC.jsp" />
	<!-- Category Model Start-->
<!-- 	<div id="category_model" class="header-cate-model main-gambo-model modal fade" tabindex="-1" role="dialog" aria-modal="false"> -->
<!--         <div class="modal-dialog category-area" role="document"> -->
<!--             <div class="category-area-inner"> -->
<!--                 <div class="modal-header"> -->
<!--                     <button type="button" class="close btn-close" data-dismiss="modal" aria-label="Close"> -->
<!-- 						<i class="uil uil-multiply"></i> -->
<!--                     </button> -->
<!--                 </div> -->
<!--                 <div class="category-model-content modal-content">  -->
<!-- 					<div class="cate-header"> -->
<!-- 						<h4>Select Category</h4> -->
<!-- 					</div> -->
<!--                     <ul class="category-by-cat"> -->
<!-- 						<li> -->
<!-- 							<a href="#" class="single-cat-item"> -->
<!-- 								<div class="icon"> -->
<%-- 									<img src="${pageContext.request.contextPath}/images/category/icon-1.svg" alt=""> --%>
<!-- 							    </div> -->
<!-- 								<div class="text"> Fruits and Vegetables </div> -->
<!-- 							</a> -->
<!-- 						</li> -->
<!-- 						<li> -->
<!-- 							<a href="#" class="single-cat-item"> -->
<!-- 								<div class="icon"> -->
<%-- 									<img src="${pageContext.request.contextPath}/images/category/icon-2.svg" alt=""> --%>
<!-- 								</div> -->
<!-- 								<div class="text"> Grocery & Staples </div> -->
<!-- 							</a> -->
<!-- 						</li> -->
<!-- 						<li> -->
<!-- 							<a href="#" class="single-cat-item"> -->
<!-- 								<div class="icon"> -->
<%-- 									<img src="${pageContext.request.contextPath}/images/category/icon-3.svg" alt=""> --%>
<!-- 								</div> -->
<!-- 								<div class="text"> Dairy & Eggs </div> -->
<!-- 							</a> -->
<!-- 						</li> -->
<!-- 						<li> -->
<!-- 							<a href="#" class="single-cat-item"> -->
<!-- 								<div class="icon"> -->
<%-- 									<img src="${pageContext.request.contextPath}/images/category/icon-4.svg" alt=""> --%>
<!-- 								</div> -->
<!-- 								<div class="text"> Beverages </div> -->
<!-- 							</a> -->
<!-- 						</li> -->
<!-- 						<li> -->
<!-- 							<a href="#" class="single-cat-item"> -->
<!-- 								<div class="icon"> -->
<%-- 									<img src="${pageContext.request.contextPath}/images/category/icon-5.svg" alt=""> --%>
<!-- 								</div> -->
<!-- 								<div class="text"> Snacks </div> -->
<!-- 							</a> -->
<!-- 						</li> -->
<!-- 						<li> -->
<!-- 							<a href="#" class="single-cat-item"> -->
<!-- 								<div class="icon"> -->
<%-- 									<img src="${pageContext.request.contextPath}/images/category/icon-6.svg" alt=""> --%>
<!-- 								</div> -->
<!-- 								<div class="text"> Home Care </div> -->
<!-- 							</a> -->
<!-- 						</li> -->
<!-- 						<li> -->
<!-- 							<a href="#" class="single-cat-item"> -->
<!-- 								<div class="icon"> -->
<%-- 									<img src="${pageContext.request.contextPath}/images/category/icon-7.svg" alt=""> --%>
<!-- 								</div> -->
<!-- 								<div class="text"> Noodles & Sauces </div> -->
<!-- 							</a> -->
<!-- 						</li> -->
<!-- 						<li> -->
<!-- 							<a href="#" class="single-cat-item"> -->
<!-- 								<div class="icon"> -->
<%-- 									<img src="${pageContext.request.contextPath}/images/category/icon-8.svg" alt=""> --%>
<!-- 								</div> -->
<!-- 								<div class="text"> Personal Care </div> -->
<!-- 							</a> -->
<!-- 						</li> -->
<!-- 						<li> -->
<!-- 							<a href="#" class="single-cat-item"> -->
<!-- 								<div class="icon"> -->
<%-- 									<img src="${pageContext.request.contextPath}/images/category/icon-9.svg" alt=""> --%>
<!-- 								</div> -->
<!-- 								<div class="text"> Pet Care </div> -->
<!-- 							</a> -->
<!-- 						</li> -->
<!--                     </ul> -->
<!-- 					<a href="#" class="morecate-btn"><i class="uil uil-apps"></i>More Categories</a> -->
<!--                 </div> -->
<!--             </div> -->
<!--         </div> -->
<!--     </div> -->
<!-- 	<!-- Category Model End--> -->
<!-- 	<!-- Search Model Start--> -->
<!-- 	<div id="search_model" class="header-cate-model main-gambo-model modal fade" tabindex="-1" role="dialog" aria-modal="false"> -->
<!--         <div class="modal-dialog search-ground-area" role="document"> -->
<!--             <div class="category-area-inner"> -->
<!--                 <div class="modal-header"> -->
<!--                     <button type="button" class="close btn-close" data-dismiss="modal" aria-label="Close"> -->
<!-- 						<i class="uil uil-multiply"></i> -->
<!--                     </button> -->
<!--                 </div> -->
<!--                 <div class="category-model-content modal-content">  -->
<!-- 					<div class="search-header"> -->
<%-- 						<form action="#"> --%>
<!-- 							<input type="search" placeholder="Search for products..."> -->
<!-- 							<button type="submit"><i class="uil uil-search"></i></button> -->
<%-- 						</form> --%>
<!-- 					</div> -->
<!-- 					<div class="search-by-cat"> -->
<!--                         <a href="#" class="single-cat"> -->
<!--                             <div class="icon"> -->
<%-- 								<img src="${pageContext.request.contextPath}/images/category/icon-1.svg" alt=""> --%>
<!--                             </div> -->
<!--                             <div class="text"> -->
<!--                                 Fruits and Vegetables -->
<!--                             </div> -->
<!--                         </a> -->
<!-- 						<a href="#" class="single-cat"> -->
<!-- 							<div class="icon"> -->
<%-- 								<img src="${pageContext.request.contextPath}/images/category/icon-2.svg" alt=""> --%>
<!-- 							</div> -->
<!-- 							<div class="text"> Grocery & Staples </div> -->
<!-- 						</a> -->
<!-- 						<a href="#" class="single-cat"> -->
<!-- 							<div class="icon"> -->
<%-- 								<img src="${pageContext.request.contextPath}/images/category/icon-3.svg" alt=""> --%>
<!-- 							</div> -->
<!-- 							<div class="text"> Dairy & Eggs </div> -->
<!-- 						</a> -->
<!-- 						<a href="#" class="single-cat"> -->
<!-- 							<div class="icon"> -->
<%-- 								<img src="${pageContext.request.contextPath}/images/category/icon-4.svg" alt=""> --%>
<!-- 							</div> -->
<!-- 							<div class="text"> Beverages </div> -->
<!-- 						</a> -->
<!-- 						<a href="#" class="single-cat"> -->
<!-- 							<div class="icon"> -->
<%-- 								<img src="${pageContext.request.contextPath}/images/category/icon-5.svg" alt=""> --%>
<!-- 							</div> -->
<!-- 							<div class="text"> Snacks </div> -->
<!-- 						</a> -->
<!-- 						<a href="#" class="single-cat"> -->
<!-- 							<div class="icon"> -->
<%-- 								<img src="${pageContext.request.contextPath}/images/category/icon-6.svg" alt=""> --%>
<!-- 							</div> -->
<!-- 							<div class="text"> Home Care </div> -->
<!-- 						</a> -->
<!-- 						<a href="#" class="single-cat"> -->
<!-- 							<div class="icon"> -->
<%-- 								<img src="${pageContext.request.contextPath}/images/category/icon-7.svg" alt=""> --%>
<!-- 							</div> -->
<!-- 							<div class="text"> Noodles & Sauces </div> -->
<!-- 						</a> -->
<!-- 						<a href="#" class="single-cat"> -->
<!-- 							<div class="icon"> -->
<%-- 								<img src="${pageContext.request.contextPath}/images/category/icon-8.svg" alt=""> --%>
<!-- 							</div> -->
<!-- 							<div class="text"> Personal Care </div> -->
<!-- 						</a> -->
<!-- 						<a href="#" class="single-cat"> -->
<!-- 							<div class="icon"> -->
<%-- 								<img src="${pageContext.request.contextPath}/images/category/icon-9.svg" alt=""> --%>
<!-- 							</div> -->
<!-- 							<div class="text"> Pet Care </div> -->
<!-- 						</a> -->
<!--                     </div> -->
<!--                 </div> -->
<!--             </div> -->
<!--         </div> -->
<!--     </div> -->
<!-- 	<!-- Search Model End--> -->
<!-- 	<!-- Cart Sidebar Offset Start--> -->
<!-- 	<div class="bs-canvas bs-canvas-left position-fixed bg-cart h-100"> -->
<!-- 		<div class="bs-canvas-header side-cart-header p-3 "> -->
<!-- 			<div class="d-inline-block  main-cart-title"> -->
<%-- 				My Cart <span>${Cart.itemNumber}項</span> --%>
<!-- 			</div> -->
<!-- 			<button type="button" class="bs-canvas-close close" -->
<!-- 				aria-label="Close"> -->
<!-- 				<i class="uil uil-multiply"></i> -->
<!-- 			</button> -->
<!-- 		</div> -->
<%-- 		<c:set var="sum" value="${0}" /> --%>
<%-- 					<c:forEach var='ct' items='${Cart.content}'> --%>
<%-- 						<c:set var="sum" value="${sum + (ct.value.qty * ct.value.price)}" /> --%>
<%-- 						<c:set var="discount_sum" value="${discount_sum + (ct.value.qty * ct.value.price * ct.value.discount/100)}" /> --%>
<%-- 					</c:forEach> --%>
<%-- 		<c:set var="VAT" value="${cartMasterBean.divident}" /> --%>
<!-- 		<div class="bs-canvas-body"> -->
<!-- 			<div class="cart-top-total"> -->
<!-- 				<div class="cart-total-dil"> -->
<!-- 					<h4>合計金額：</h4> -->
<%-- 					<span>$<fmt:formatNumber value="${sum}" pattern="#,###,###" /></span> --%>
<!-- 				</div> -->
<!-- 				<div class="cart-total-dil pt-2"> -->
<!-- 					<h4>折扣金額：</h4> -->
<%-- 					<span>$<fmt:formatNumber value="${VAT}" pattern="#,###,###" /></span> --%>
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 			<div class="side-cart-items"> -->
<%-- 			<c:forEach items='${Cart.content}' var='entry' varStatus='status'> --%>
<!-- 				<div class="cart-item"> -->
<!-- 					<div class="cart-product-img"> -->
<%-- 					<img width='60' height='80' src="<c:url value='/getPicture/${entry.value.productId}' />" /> --%>
<!-- <!-- 						<img --> -->
<%-- <%-- 							src="${pageContext.request.contextPath}/images/product/img-1.jpg" --%> --%>
<!-- <!-- 							alt=""> --> -->
<%-- 						<div class="offer-badge"><fmt:formatNumber value="${(100 - entry.value.discount)}" pattern="###" /> %OFF</div> --%>
<!-- 					</div> -->
<!-- 					<div class="cart-text"> -->
<%-- 						<h4>${entry.value.productName}</h4> --%>
<!-- 						<div class="cart-radio"> -->
<!-- 							<ul class="kggrm-now"> -->
<!-- 								<li><input type="radio" id="a1" name="cart1"> <label -->
<!-- 									for="a1">0.50</label></li> -->
<!-- 								<li><input type="radio" id="a2" name="cart1"> <label -->
<!-- 									for="a2">1kg</label></li> -->
<!-- 								<li><input type="radio" id="a3" name="cart1"> <label -->
<!-- 									for="a3">2kg</label></li> -->
<!-- 								<li><input type="radio" id="a4" name="cart1"> <label -->
<!-- 									for="a4">3kg</label></li> -->
<!-- 							</ul> -->
<!-- 						</div> -->
<!-- 						<div class="qty-group"> -->
<!-- 							<div class="quantity buttons_added"> -->
<!-- 								<input type="button" value="-" class="minus minus-btn"> -->
<%-- 								<input type="number" step="1" name="quantity" value="${entry.value.qty}" class="input-text qty text">  --%>
<!-- 								<input type="button" value="+" class="plus plus-btn"> -->
<!-- 							</div> -->
<!-- 							<div class="cart-item-price"> -->
<%-- 								$<fmt:formatNumber value="${entry.value.price * entry.value.discount }" pattern="###" /> <span>$<fmt:formatNumber value="${entry.value.price}" pattern="###" /></span> --%>
<!-- 							</div> -->
<!-- 						</div> -->

<!-- 						<button type="button" class="cart-close-btn"> -->
<!-- 							<i class="uil uil-multiply"></i> -->
<!-- 						</button> -->
<!-- 					</div> -->
<!-- 				</div> -->
<%-- 				</c:forEach> --%>
<!-- 			</div> -->
<!-- 		</div> -->
<!-- 		<div class="bs-canvas-footer"> -->
<!-- 			<div class="cart-total-dil saving-total "> -->
<!-- 				<h4>折扣金額 :</h4> -->
<%-- 				<span>$<fmt:formatNumber value="${sum - discount_sum + VAT}" pattern="#,###,###" /></span> --%>
<!-- 			</div> -->
<!-- 			<div class="main-total-cart"> -->
<!-- 				<h2>總計金額：</h2> -->
<%-- 				<span><fmt:formatNumber value="${discount_sum - VAT }" pattern="#,###,###" /></span> --%>
<!-- 			</div> -->
<!-- 			<div class="checkout-cart"> -->
<!-- 				<a href="#" class="promo-code">Have a promocode?</a>  -->
<!-- 				<a href="checkout" class="cart-checkout-btn hover-btn">Proceed to Checkout</a> -->
<!-- 			</div> -->
<!-- 		</div> -->
<!-- 	</div> -->
<!-- 	<!-- Cart Sidebar Offsetl End--> -->
<!-- 	<!-- Header Start --> -->
<!-- 	<header class="header clearfix"> -->
<!-- 		<div class="top-header-group"> -->
<!-- 			<div class="top-header"> -->
<!-- 				<div class="res_main_logo"> -->
<%-- 					<a href="index.html"><img src="${pageContext.request.contextPath}/images/dark-logo-1.svg" alt=""></a> --%>
<!-- 				</div> -->
<!-- 				<div class="main_logo" id="logo"> -->
<%-- 					<a href="index.html"><img src="${pageContext.request.contextPath}/images/logo.svg" alt=""></a> --%>
<%-- 					<a href="index.html"><img class="logo-inverse" src="${pageContext.request.contextPath}/images/dark-logo.svg" alt=""></a> --%>
<!-- 				</div> -->
<!-- 				<div class="select_location"> -->
<!-- 					<div class="ui inline dropdown loc-title"> -->
<!-- 						<div class="text"> -->
<!-- 						  <i class="uil uil-location-point"></i> -->
<!-- 						  Gurugram -->
<!-- 						</div> -->
<!-- 						<i class="uil uil-angle-down icon__14"></i> -->
<!-- 						<div class="menu dropdown_loc"> -->
<!-- 							<div class="item channel_item"> -->
<!-- 								<i class="uil uil-location-point"></i> -->
<!-- 								Gurugram -->
<!-- 							</div> -->
<!-- 							<div class="item channel_item"> -->
<!-- 								<i class="uil uil-location-point"></i> -->
<!-- 								New Delhi -->
<!-- 							</div> -->
<!-- 							<div class="item channel_item"> -->
<!-- 								<i class="uil uil-location-point"></i> -->
<!-- 								Bangaluru -->
<!-- 							</div> -->
<!-- 							<div class="item channel_item"> -->
<!-- 								<i class="uil uil-location-point"></i> -->
<!-- 								Mumbai -->
<!-- 							</div> -->
<!-- 							<div class="item channel_item"> -->
<!-- 								<i class="uil uil-location-point"></i> -->
<!-- 								Hyderabad -->
<!-- 							</div> -->
<!-- 							<div class="item channel_item"> -->
<!-- 								<i class="uil uil-location-point"></i> -->
<!-- 								Kolkata -->
<!-- 							</div> -->
<!-- 							<div class="item channel_item"> -->
<!-- 								<i class="uil uil-location-point"></i> -->
<!-- 								Ludhiana -->
<!-- 							</div> -->
<!-- 							<div class="item channel_item"> -->
<!-- 								<i class="uil uil-location-point"></i> -->
<!-- 								Chandigrah -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 				<div class="search120"> -->
<!-- 					<div class="ui search"> -->
<!-- 					  <div class="ui left icon input swdh10"> -->
<!-- 						<input class="prompt srch10" type="text" placeholder="Search for products.."> -->
<!-- 						<i class='uil uil-search-alt icon icon1'></i> -->
<!-- 					  </div> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 				<div class="header_right"> -->
<!-- 					<ul> -->
<!-- 						<li> -->
<!-- 							<a href="#" class="offer-link"><i class="uil uil-phone-alt"></i>1800-000-000</a> -->
<!-- 						</li> -->
<!-- 						<li> -->
<!-- 							<a href="offers.html" class="offer-link"><i class="uil uil-gift"></i>Offers</a> -->
<!-- 						</li> -->
<!-- 						<li> -->
<!-- 							<a href="faq.html" class="offer-link"><i class="uil uil-question-circle"></i>Help</a> -->
<!-- 						</li> -->
<!-- 						<li> -->
<!-- 							<a href="dashboard_my_wishlist.html" class="option_links" title="Wishlist"><i class='uil uil-heart icon_wishlist'></i><span class="noti_count1">3</span></a> -->
<!-- 						</li>	 -->
<!-- 						<li class="ui dropdown"> -->
<!-- 							<a href="#" class="opts_account"> -->
<%-- 								<img src="${pageContext.request.contextPath}/images/avatar/img-5.jpg" alt=""> --%>
<!-- 								<span class="user__name">John Doe</span> -->
<!-- 								<i class="uil uil-angle-down"></i> -->
<!-- 							</a> -->
<!-- 							<div class="menu dropdown_account"> -->
<!-- 								<div class="night_mode_switch__btn"> -->
<!-- 									<a href="#" id="night-mode" class="btn-night-mode"> -->
<!-- 										<i class="uil uil-moon"></i> Night mode -->
<!-- 										<span class="btn-night-mode-switch"> -->
<!-- 											<span class="uk-switch-button"></span> -->
<!-- 										</span> -->
<!-- 									</a> -->
<!-- 								</div>	 -->
<!-- 								<a href="dashboard_overview.html" class="item channel_item"><i class="uil uil-apps icon__1"></i>Dashbaord</a>								 -->
<!-- 								<a href="dashboard_my_orders.html" class="item channel_item"><i class="uil uil-box icon__1"></i>My Orders</a> -->
<!-- 								<a href="dashboard_my_wishlist.html" class="item channel_item"><i class="uil uil-heart icon__1"></i>My Wishlist</a> -->
<!-- 								<a href="dashboard_my_wallet.html" class="item channel_item"><i class="uil uil-usd-circle icon__1"></i>My Wallet</a> -->
<!-- 								<a href="dashboard_my_addresses.html" class="item channel_item"><i class="uil uil-location-point icon__1"></i>My Address</a> -->
<!-- 								<a href="offers.html" class="item channel_item"><i class="uil uil-gift icon__1"></i>Offers</a> -->
<!-- 								<a href="faq.html" class="item channel_item"><i class="uil uil-info-circle icon__1"></i>Faq</a> -->
<!-- 								<a href="sign_in.html" class="item channel_item"><i class="uil uil-lock-alt icon__1"></i>Logout</a> -->
<!-- 							</div> -->
<!-- 						</li> -->
<!-- 					</ul> -->
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 		</div> -->
<!-- 		<div class="sub-header-group"> -->
<!-- 			<div class="sub-header"> -->
<!-- 				<div class="ui dropdown"> -->
<!-- 					<a href="#" class="category_drop hover-btn" data-toggle="modal" data-target="#category_model" title="Categories"><i class="uil uil-apps"></i><span class="cate__icon">Select Category</span></a> -->
<!-- 				</div> -->
<!-- 				<nav class="navbar navbar-expand-lg navbar-light py-3"> -->
<!-- 					<div class="container-fluid"> -->
<!-- 						<button class="navbar-toggler menu_toggle_btn" type="button" data-target="#navbarSupportedContent"><i class="uil uil-bars"></i></button> -->
<!-- 						<div class="collapse navbar-collapse d-flex flex-column flex-lg-row flex-xl-row justify-content-lg-end bg-dark1 p-3 p-lg-0 mt1-5 mt-lg-0 mobileMenu" id="navbarSupportedContent"> -->
<!-- 							<ul class="navbar-nav main_nav align-self-stretch"> -->
<!-- 								<li class="nav-item"><a href="index.html" class="nav-link active" title="Home">Home</a></li> -->
<!-- 								<li class="nav-item"><a href="shop_grid.html" class="nav-link new_item" title="New Products">New Products</a></li> -->
<!-- 								<li class="nav-item"><a href="shop_grid.html" class="nav-link" title="Featured Products">Featured Products</a></li> -->
<!-- 								<li class="nav-item"> -->
<!-- 									<div class="ui icon top left dropdown nav__menu"> -->
<!-- 										<a class="nav-link" title="Pages">Pages <i class="uil uil-angle-down"></i></a> -->
<!-- 										<div class="menu dropdown_page"> -->
<!-- 											<a href="dashboard_overview.html" class="item channel_item page__links">Account</a> -->
<!-- 											<a href="about_us.html" class="item channel_item page__links">About Us</a> -->
<!-- 											<a href="shop_grid.html" class="item channel_item page__links">Shop Grid</a> -->
<!-- 											<a href="single_product_view.html" class="item channel_item page__links">Single Product View</a> -->
<!-- 											<a href="checkout.html" class="item channel_item page__links">Checkout</a> -->
<!-- 											<a href="request_product.html" class="item channel_item page__links">Product Request</a>										 -->
<!-- 											<a href="order_placed.html" class="item channel_item page__links">Order Placed</a>										 -->
<!-- 											<a href="bill.html" class="item channel_item page__links">Bill Slip</a>										 -->
<!-- 											<a href="sign_in.html" class="item channel_item page__links">Sign In</a> -->
<!-- 											<a href="sign_up.html" class="item channel_item page__links">Sign Up</a> -->
<!-- 											<a href="forgot_password.html" class="item channel_item page__links">Forgot Password</a> -->
<!-- 											<a href="contact_us.html" class="item channel_item page__links">Contact Us</a> -->
<!-- 										</div> -->
<!-- 									</div> -->
<!-- 								</li> -->
<!-- 								<li class="nav-item"> -->
<!-- 									<div class="ui icon top left dropdown nav__menu"> -->
<!-- 										<a class="nav-link" title="Blog">Blog <i class="uil uil-angle-down"></i></a> -->
<!-- 										<div class="menu dropdown_page"> -->
<!-- 											<a href="our_blog.html" class="item channel_item page__links">Our Blog</a> -->
<!-- 											<a href="blog_no_sidebar.html" class="item channel_item page__links">Our Blog Two No Sidebar</a> -->
<!-- 											<a href="blog_left_sidebar.html" class="item channel_item page__links">Our Blog with Left Sidebar</a> -->
<!-- 											<a href="blog_right_sidebar.html" class="item channel_item page__links">Our Blog with Right Sidebar</a> -->
<!-- 											<a href="blog_detail_view.html" class="item channel_item page__links">Blog Detail View</a> -->
<!-- 											<a href="blog_left_sidebar_single_view.html" class="item channel_item page__links">Blog Detail View with Sidebar</a> -->
<!-- 										</div> -->
<!-- 									</div> -->
<!-- 								</li>	 -->
<!-- 								<li class="nav-item"><a href="contact_us.html" class="nav-link" title="Contact">Contact Us</a></li> -->
<!-- 							</ul> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 				</nav> -->
<!-- 				<div class="catey__icon"> -->
<!-- 					<a href="#" class="cate__btn" data-toggle="modal" data-target="#category_model" title="Categories"><i class="uil uil-apps"></i></a> -->
<!-- 				</div> -->
<!-- 				<div class="header_cart order-1"> -->
<!-- 					<a href="#" class="cart__btn hover-btn pull-bs-canvas-left" title="Cart"><i class="uil uil-shopping-cart-alt"></i><span>Cart</span><ins>2</ins><i class="uil uil-angle-down"></i></a> -->
<!-- 				</div> -->
<!-- 				<div class="search__icon order-1"> -->
<!-- 					<a href="#" class="search__btn hover-btn" data-toggle="modal" data-target="#search_model" title="Search"><i class="uil uil-search"></i></a> -->
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 		</div> -->
	</header>
	<!-- Header End -->
	<!-- Body Start -->
	<div class="wrapper">
		<div class="gambo-Breadcrumb">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<nav aria-label="breadcrumb">
							<ol class="breadcrumb">
								<li class="breadcrumb-item"><a href="index">Home</a></li>
								<li class="breadcrumb-item active" aria-current="page">Checkout</li>
							</ol>
						</nav>
					</div>
				</div>
			</div>
		</div>
		<div class="all-product-grid">
			<div class="container">
				<div class="row">
<%-- 				    <form:form method="POST" action="order_placed" modelAttribute="cartMasterBean"> --%>
					<div class="col-lg-8 col-md-7">
						<div id="checkout_wizard" class="checkout accordion left-chck145">
							<div class="checkout-step">
								<div class="checkout-card" id="headingOne">
									<span class="checkout-step-number">1</span>
									<h4 class="checkout-step-title">
										<button class="wizard-btn" type="button"
											data-toggle="collapse" data-target="#collapseOne"
											aria-expanded="true" aria-controls="collapseOne">
											手機號碼確認</button>
									</h4>
								</div>
								<div id="collapseOne" class="collapse in show"
									data-parent="#checkout_wizard">
									<div class="checkout-step-body">
										<p>會員手機號碼 : ${memberBean.tel}</p>
										<p class="phn145">
											若需調整手機號碼請重新輸入 :  <span></span><a
												class="edit-no-btn hover-btn" data-toggle="collapse"
												href="#edit-number">重新輸入</a>
										</p>
										<div class="collapse" id="edit-number">
											<div class="row">
												<div class="col-lg-8">
													<div class="checkout-login">
														<form>
															<div class="login-phone">
																<input type="text" class="form-control"
																	placeholder="Phone Number" name="phone" id="phone">
															</div>
<!-- 															<a class="chck-btn hover-btn" role="button" -->
<!-- 																data-toggle="collapse" href="#otp-verifaction">傳送驗證碼</a> -->
														</form>
													</div>
												</div>
											</div>
										</div>
<!-- 										<div class="otp-verifaction"> -->
<!-- 											<div class="row"> -->
<!-- 												<div class="col-lg-12"> -->
<!-- 													<div class="form-group mb-0"> -->
<!-- 														<label class="control-label">輸入驗證碼</label> -->
<!-- 														<ul class="code-alrt-inputs"> -->
<!-- 															<li><input id="code[1]" name="number" type="text" -->
<!-- 																placeholder="" class="form-control input-md" required=""> -->
<!-- 															</li> -->
<!-- 															<li><input id="code[2]" name="number" type="text" -->
<!-- 																placeholder="" class="form-control input-md" required=""> -->
<!-- 															</li> -->
<!-- 															<li><input id="code[3]" name="number" type="text" -->
<!-- 																placeholder="" class="form-control input-md" required=""> -->
<!-- 															</li> -->
<!-- 															<li><input id="code[4]" name="number" type="text" -->
<!-- 																placeholder="" class="form-control input-md" required=""> -->
<!-- 															</li> -->
<!-- 															<li><a class="collapsed chck-btn hover-btn" -->
<!-- 																role="button" data-toggle="collapse" -->
<!-- 																data-parent="#checkout_wizard" href="#collapseTwo">Next</a> -->
<!-- 															</li> -->
<!-- 														</ul> -->
<!-- 														<a href="#" class="resend-link">重新傳送驗證碼</a> -->
<!-- 													</div> -->
<!-- 												</div> -->
<!-- 											</div> -->
<!-- 										</div> -->
									</div>
								</div>
							</div>
							<div class="checkout-step">
								<div class="checkout-card" id="headingTwo">
									<span class="checkout-step-number">2</span>
									<h4 class="checkout-step-title">
										<button class="wizard-btn collapsed" type="button"
											data-toggle="collapse" data-target="#collapseTwo"
											aria-expanded="false" aria-controls="collapseTwo">
											運送資料確認</button>
									</h4>
								</div>
								<div id="collapseTwo" class="collapse"
									aria-labelledby="headingTwo" data-parent="#checkout_wizard">
									<div class="checkout-step-body">
										<div class="checout-address-step">
											<div class="row">
												<div class="col-lg-12">
													<form class="">
														<!-- Multiple Radios (inline) -->
<!-- 														<div class="form-group"> -->
<!-- 															<div class="product-radio"> -->
<!-- 																<ul class="product-now"> -->
<!-- 																	<li><input type="radio" id="ad1" name="address1" -->
<!-- 																		checked> <label for="ad1">住家</label></li> -->
<!-- 																	<li><input type="radio" id="ad2" name="address1"> -->
<!-- 																		<label for="ad2">辦公地點</label></li> -->
<!-- 																	<li><input type="radio" id="ad3" name="address1"> -->
<!-- 																		<label for="ad3">其他</label></li> -->
<!-- 																</ul> -->
<!-- 															</div> -->
<!-- 														</div> -->
														<div class="address-fieldset">
															<div class="row">
																<div class="col-lg-6 col-md-12">
																	<div class="form-group">
																		<label class="control-label">姓名*</label> <input
																			id="name" name="name" type="text" placeholder="${memberBean.name }"
																			class="form-control input-md" required="">
																	</div>
																</div>
																<div class="col-lg-6 col-md-12">
																	<div class="form-group">
																		<label class="control-label">Email Address*</label> <input
																			id="email1" name="email1" type="text"
																			placeholder="${memberBean.email }"
																			class="form-control input-md" required="">
																	</div>
																</div>
																<div class="col-lg-12 col-md-12">
																	<div class="form-group">
																		<label class="control-label">運送地址
																			*</label> <input id="flat" name="flat" type="text"
																			placeholder="${memberBean.address}" class="form-control input-md"
																			required="">
																	</div>
																</div>
<!-- 																<div class="col-lg-12 col-md-12"> -->
<!-- 																	<div class="form-group"> -->
<!-- 																		<label class="control-label">Street / Society -->
<!-- 																			/ Office Name*</label> <input id="street" name="street" -->
<!-- 																			type="text" placeholder="Street Address" -->
<!-- 																			class="form-control input-md"> -->
<!-- 																	</div> -->
<!-- 																</div> -->
<!-- 																<div class="col-lg-6 col-md-12"> -->
<!-- 																	<div class="form-group"> -->
<!-- 																		<label class="control-label">Pincode*</label> <input -->
<!-- 																			id="pincode" name="pincode" type="text" -->
<!-- 																			placeholder="Pincode" class="form-control input-md" -->
<!-- 																			required=""> -->
<!-- 																	</div> -->
<!-- 																</div> -->
<!-- 																<div class="col-lg-6 col-md-12"> -->
<!-- 																	<div class="form-group"> -->
<!-- 																		<label class="control-label">Locality*</label> <input -->
<!-- 																			id="Locality" name="locality" type="text" -->
<!-- 																			placeholder="Enter City" -->
<!-- 																			class="form-control input-md" required=""> -->
<!-- 																	</div> -->
<!-- 																</div> -->
<!-- 																<div class="col-lg-12 col-md-12"> -->
<!-- 																	<div class="form-group"> -->
<!-- 																		<div class="address-btns"> -->
<!-- 																			<button class="save-btn14 hover-btn">Save</button> -->
<!-- 																			<a class="collapsed ml-auto next-btn16 hover-btn" -->
<!-- 																				role="button" data-toggle="collapse" -->
<!-- 																				data-parent="#checkout_wizard" href="#collapseThree"> -->
<!-- 																				Next </a> -->
<!-- 																		</div> -->
<!-- 																	</div> -->
<!-- 																</div> -->
															</div>
														</div>
													</form>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
<!-- 							<div class="checkout-step"> -->
<!-- 								<div class="checkout-card" id="headingThree"> -->
<!-- 									<span class="checkout-step-number">3</span> -->
<!-- 									<h4 class="checkout-step-title"> -->
<!-- 										<button class="wizard-btn collapsed" type="button" -->
<!-- 											data-toggle="collapse" data-target="#collapseThree" -->
<!-- 											aria-expanded="false" aria-controls="collapseThree"> -->
<!-- 											Delivery Time & Date</button> -->
<!-- 									</h4> -->
<!-- 								</div> -->
<!-- 								<div id="collapseThree" class="collapse" -->
<!-- 									aria-labelledby="headingThree" data-parent="#checkout_wizard"> -->
<!-- 									<div class="checkout-step-body"> -->
<!-- 										<div class="row"> -->
<!-- 											<div class="col-md-12"> -->
<!-- 												<div class="form-group"> -->
<!-- 													<label class="control-label">Select Date and Time*</label> -->
<!-- 													<div class="date-slider-group"> -->
<!-- 														<div class="owl-carousel date-slider owl-theme"> -->
<!-- 															<div class="item"> -->
<!-- 																<div class="date-now"> -->
<!-- 																	<input type="radio" id="dd1" name="address1" checked=""> -->
<!-- 																	<label for="dd1">Today</label> -->
<!-- 																</div> -->
<!-- 															</div> -->
<!-- 															<div class="item"> -->
<!-- 																<div class="date-now"> -->
<!-- 																	<input type="radio" id="dd2" name="address1"> <label -->
<!-- 																		for="dd2">Tomorrow</label> -->
<!-- 																</div> -->
<!-- 															</div> -->
<!-- 															<div class="item"> -->
<!-- 																<div class="date-now"> -->
<!-- 																	<input type="radio" id="dd3" name="address1"> <label -->
<!-- 																		for="dd3">10 May 2020</label> -->
<!-- 																</div> -->
<!-- 															</div> -->
<!-- 															<div class="item"> -->
<!-- 																<div class="date-now"> -->
<!-- 																	<input type="radio" id="dd4" name="address1"> <label -->
<!-- 																		for="dd4">11 May 2020</label> -->
<!-- 																</div> -->
<!-- 															</div> -->
<!-- 															<div class="item"> -->
<!-- 																<div class="date-now"> -->
<!-- 																	<input type="radio" id="dd5" name="address1"> <label -->
<!-- 																		for="dd5">12 May 2020</label> -->
<!-- 																</div> -->
<!-- 															</div> -->
<!-- 															<div class="item"> -->
<!-- 																<div class="date-now"> -->
<!-- 																	<input type="radio" id="dd6" name="address1"> <label -->
<!-- 																		for="dd6">13 May 2020</label> -->
<!-- 																</div> -->
<!-- 															</div> -->
<!-- 															<div class="item"> -->
<!-- 																<div class="date-now"> -->
<!-- 																	<input type="radio" id="dd7" name="address1"> <label -->
<!-- 																		for="dd7">14 May 2020</label> -->
<!-- 																</div> -->
<!-- 															</div> -->
<!-- 															<div class="item"> -->
<!-- 																<div class="date-now"> -->
<!-- 																	<input type="radio" id="dd8" name="address1"> <label -->
<!-- 																		for="dd8">15 May 2020</label> -->
<!-- 																</div> -->
<!-- 															</div> -->
<!-- 														</div> -->
<!-- 													</div> -->
<!-- 													<div class="time-radio"> -->
<!-- 														<div class="ui form"> -->
<!-- 															<div class="grouped fields"> -->
<!-- 																<div class="field"> -->
<!-- 																	<div class="ui radio checkbox chck-rdio"> -->
<!-- 																		<input type="radio" name="fruit" checked="" -->
<!-- 																			tabindex="0" class="hidden"> <label>8.00AM -->
<!-- 																			- 10.00AM</label> -->
<!-- 																	</div> -->
<!-- 																</div> -->
<!-- 																<div class="field"> -->
<!-- 																	<div class="ui radio checkbox chck-rdio"> -->
<!-- 																		<input type="radio" name="fruit" tabindex="0" -->
<!-- 																			class="hidden"> <label>10.00AM - -->
<!-- 																			12.00PM</label> -->
<!-- 																	</div> -->
<!-- 																</div> -->
<!-- 																<div class="field"> -->
<!-- 																	<div class="ui radio checkbox chck-rdio"> -->
<!-- 																		<input type="radio" name="fruit" tabindex="0" -->
<!-- 																			class="hidden"> <label>12.00PM - -->
<!-- 																			2.00PM</label> -->
<!-- 																	</div> -->
<!-- 																</div> -->
<!-- 																<div class="field"> -->
<!-- 																	<div class="ui radio checkbox chck-rdio"> -->
<!-- 																		<input type="radio" name="fruit" tabindex="0" -->
<!-- 																			class="hidden"> <label>2.00PM - -->
<!-- 																			4.00PM</label> -->
<!-- 																	</div> -->
<!-- 																</div> -->
<!-- 																<div class="field"> -->
<!-- 																	<div class="ui radio checkbox chck-rdio"> -->
<!-- 																		<input type="radio" name="fruit" tabindex="0" -->
<!-- 																			class="hidden"> <label>4.00PM - -->
<!-- 																			6.00PM</label> -->
<!-- 																	</div> -->
<!-- 																</div> -->
<!-- 															</div> -->
<!-- 														</div> -->
<!-- 													</div> -->
<!-- 												</div> -->
<!-- 											</div> -->
<!-- 										</div> -->
<!-- 										<a class="collapsed next-btn16 hover-btn" role="button" -->
<!-- 											data-toggle="collapse" href="#collapseFour"> Proccess to -->
<!-- 											payment </a> -->
<!-- 									</div> -->
<!-- 								</div> -->
<!-- 							</div> -->
							<div class="checkout-step">
								<div class="checkout-card" id="headingThree">
									<span class="checkout-step-number">3</span>
									<h4 class="checkout-step-title">
										<button class="wizard-btn collapsed" type="button"
											data-toggle="collapse" data-target="#collapseFour"
											aria-expanded="false" aria-controls="collapseFour">付款方式</button>
									</h4>
								</div>
								<div id="collapseFour" class="collapse"
									aria-labelledby="headingThree" data-parent="#checkout_wizard">
									<div class="checkout-step-body">
										<div class="payment_method-checkout">
											<div class="row">
												<div class="col-md-12">
													<div class="rpt100">
														<ul class="radio--group-inline-container_1">
															<li>
																<div class="radio-item_1">
																	<input id="cashondelivery1" value="cashondelivery"
																		name="paymentmethod" type="radio" data-minimum="50.0">
																	<label for="cashondelivery1" class="radio-label_1">
																		貨到付款</label>
																</div>
															</li>
															<li>
																<div class="radio-item_1">
																	<input id="card1" value="card" name="paymentmethod"
																		type="radio" data-minimum="50.0"> <label
																		for="card1" class="radio-label_1">信用卡扣款
																		</label>
																</div>
															</li>
														</ul>
													</div>
													<div class="form-group return-departure-dts"
														data-method="cashondelivery">
														<div class="row">
															<div class="col-lg-12">
																<div class="pymnt_title">
																	<h4>貨到付款</h4>
<!-- 																	<p>金額若高於$1,000元，則不能使用貨到付款方式</p> -->
																</div>
															</div>
														</div>
													</div>
													<div class="form-group return-departure-dts"
														data-method="card">
														<div class="row">
															<div class="col-lg-12">
																<div class="pymnt_title mb-4">
																	<h4>信用卡扣款</h4>
																</div>
															</div>
															<div class="col-lg-6">
																<div class="form-group mt-1">
																	<label class="control-label">持有人*</label>
																	<div class="ui search focus">
																		<div class="ui left icon input swdh11 swdh19">
																			<input class="prompt srch_explore" type="text"
																				name="holdername" value="" id="holdername"
																				required="" maxlength="64" placeholder="${memberBean.name }">
																		</div>
																	</div>
																</div>
															</div>
															<div class="col-lg-6">
																<div class="form-group mt-1">
																	<label class="control-label">信用卡號碼*</label>
																	<div class="ui search focus">
																		<div class="ui left icon input swdh11 swdh19">
																			<input class="prompt srch_explore" type="text"
																				name="cardnumber" value="" id="cardnumber"
																				required="" maxlength="64" placeholder="信用卡號碼">
																		</div>
																	</div>
																</div>
															</div>
															<div class="col-lg-4">
																<div class="form-group mt-1">
																	<label class="control-label">到期月*</label>
																	<select class="ui fluid search dropdown form-dropdown"
																		name="cardexpire-month" id="cardexpire-month">
																		<option value="">Month</option>
																		<option value="1">January</option>
																		<option value="2">February</option>
																		<option value="3">March</option>
																		<option value="4">April</option>
																		<option value="5">May</option>
																		<option value="6">June</option>
																		<option value="7">July</option>
																		<option value="8">August</option>
																		<option value="9">September</option>
																		<option value="10">October</option>
																		<option value="11">November</option>
																		<option value="12">December</option>
																	</select>
																</div>
															</div>
															<div class="col-lg-4">
																<div class="form-group mt-1">
																	<label class="control-label">到期西元年*</label>
																	<div class="ui search focus">
																		<div class="ui left icon input swdh11 swdh19">
																			<input class="prompt srch_explore" type="text"
																				name="card[expire-year]" maxlength="4"
																				placeholder="Year" id='cardexpire-year'>
																		</div>
																	</div>
																</div>
															</div>
															<div class="col-lg-4">
																<div class="form-group mt-1">
																	<label class="control-label">CVV*</label>
																	<div class="ui search focus">
																		<div class="ui left icon input swdh11 swdh19">
																			<input class="prompt srch_explore" name="card[cvc]"
																				maxlength="3" placeholder="CVV" id='cardcvc'>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</div>
<!-- 													<a href="order_placed" class="next-btn16 hover-btn">訂單確認</a> --> 
													<Input type='submit' class="next-btn16 hover-btn" value='訂單確認' onclick='order_placed()'>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
<%-- 					</form:form> --%>
					<div class="col-lg-4 col-md-5">
						<div class="pdpt-bg mt-0">
							<div class="pdpt-title">
								<h4>訂單摘要</h4>
							</div>
							<c:forEach items='${Cart.content}' var='entry'>
							<div class="right-cart-dt-body">
								<div class="cart-item border_radius">
									<div class="cart-product-img">
										<img width='100' height='120' src="<c:url value='/getPicture/${entry.value.productId}' />" />
<%-- 										<img src="${pageContext.request.contextPath}/images/product/img-11.jpg" alt=""> --%>
										<div class="offer-badge"><fmt:formatNumber value="${(100 - entry.value.discount)}" pattern="###" /> %OFF</div>
									</div>
									<div class="cart-text">
										<h4>${entry.value.productName}</h4>
										<div class="cart-item-price">
											$<fmt:formatNumber value="${entry.value.price * entry.value.discount/100 }" pattern="###" /> <span>$<fmt:formatNumber value="${entry.value.price}" pattern="###" /></span>
										</div>
										<div><span>購買數量 * ${entry.value.qty}</span> </div>
										<button type="button" class="cart-close-btn">
											<i class="uil uil-multiply"></i>
										</button>
									</div>
								</div>
							</div>
							</c:forEach>
							<c:set var="sum" value="${0}" />
							<c:set var="discount_sum" value="${0}" />
					        <c:forEach var='ct' items='${Cart.content}'>
						        <c:set var="sum" value="${sum + (ct.value.qty * ct.value.price)}" />
						        <c:set var="discount_sum" value="${discount_sum + (ct.value.qty * ct.value.price * ct.value.discount/100)}" />
					        </c:forEach>
		                    <c:set var="VAT" value="${cartMasterBean.divident}" />
							<div class="total-checkout-group">
								<div class="cart-total-dil">
									<h4>金額合計</h4>
									<span>$<fmt:formatNumber value="${sum}" pattern="#,###,###" /></span>
								</div>
								<div class="cart-total-dil pt-3">
									<h4>購物車折扣</h4>
									<span>$<fmt:formatNumber value="${VAT}" pattern="#,###,###" /></span>
								</div>
							</div>
							<div class="cart-total-dil saving-total ">
								<h4>商品折扣 :</h4>
								<span>$<fmt:formatNumber value="${sum - discount_sum}" pattern="#,###,###" /></span>
							</div>
							<div class="main-total-cart">
								<h2>金額總計</h2>
								<span><fmt:formatNumber value="${discount_sum + VAT }" pattern="#,###,###" /></span>
							</div>
<!-- 							<div class="payment-secure"> -->
<!-- 								<i class="uil uil-padlock"></i>Secure checkout -->
<!-- 							</div> -->
								<div class="pdpt-title">
								    <h4>可獲得贈品 : </h4>
								</div>
								<div class="pdpt-title" style='text-align:right'>
										<c:forEach items='${mapDiscountTable}' var='entry1'>
											<span><h4 style='color:orange'>${entry1.value.freeBies}</h4></span>
										</c:forEach>
								</div>
						</div>
<!-- 						<a href="#" class="promo-link45">Have a promocode?</a> -->
<!-- 						<div class="checkout-safety-alerts"> -->
<!-- 							<p> -->
<!-- 								<i class="uil uil-sync"></i>100% Replacement Guarantee -->
<!-- 							</p> -->
<!-- 							<p> -->
<!-- 								<i class="uil uil-check-square"></i>100% Genuine Products -->
<!-- 							</p> -->
<!-- 							<p> -->
<!-- 								<i class="uil uil-shield-check"></i>Secure Payments -->
<!-- 							</p> -->
<!-- 						</div> -->
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Body End -->
	<!-- Footer Start -->
<!-- 	<footer class="footer"> -->
<!-- 		<div class="footer-first-row"> -->
<!-- 			<div class="container"> -->
<!-- 				<div class="row"> -->
<!-- 					<div class="col-md-6 col-sm-6"> -->
<!-- 						<ul class="call-email-alt"> -->
<!-- 							<li><a href="#" class="callemail"><i -->
<!-- 									class="uil uil-dialpad-alt"></i>1800-000-000</a></li> -->
<!-- 							<li><a href="#" class="callemail"><i -->
<!-- 									class="uil uil-envelope-alt"></i>info@gambosupermarket.com</a></li> -->
<!-- 						</ul> -->
<!-- 					</div> -->
<!-- 					<div class="col-md-6 col-sm-6"> -->
<!-- 						<div class="social-links-footer"> -->
<!-- 							<ul> -->
<!-- 								<li><a href="#"><i class="fab fa-facebook-f"></i></a></li> -->
<!-- 								<li><a href="#"><i class="fab fa-twitter"></i></a></li> -->
<!-- 								<li><a href="#"><i class="fab fa-google-plus-g"></i></a></li> -->
<!-- 								<li><a href="#"><i class="fab fa-linkedin-in"></i></a></li> -->
<!-- 								<li><a href="#"><i class="fab fa-instagram"></i></a></li> -->
<!-- 								<li><a href="#"><i class="fab fa-pinterest-p"></i></a></li> -->
<!-- 							</ul> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 		</div> -->
<!-- 		<div class="footer-second-row"> -->
<!-- 			<div class="container"> -->
<!-- 				<div class="row"> -->
<!-- 					<div class="col-lg-3 col-md-6 col-sm-6"> -->
<!-- 						<div class="second-row-item"> -->
<!-- 							<h4>Categories</h4> -->
<!-- 							<ul> -->
<!-- 								<li><a href="#">Fruits and Vegetables</a></li> -->
<!-- 								<li><a href="#">Grocery & Staples</a></li> -->
<!-- 								<li><a href="#">Dairy & Eggs</a></li> -->
<!-- 								<li><a href="#">Beverages</a></li> -->
<!-- 								<li><a href="#">Snacks</a></li> -->
<!-- 								<li><a href="#">Home Care</a></li> -->
<!-- 								<li><a href="#">Noodles & Sauces</a></li> -->
<!-- 								<li><a href="#">Personal Care</a></li> -->
<!-- 								<li><a href="#">Pet Care</a></li> -->
<!-- 								<li><a href="#">Meat & Seafood</a></li> -->
<!-- 								<li><a href="#">Electronics</a></li> -->
<!-- 							</ul> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 					<div class="col-lg-3 col-md-6 col-sm-6"> -->
<!-- 						<div class="second-row-item"> -->
<!-- 							<h4>Useful Links</h4> -->
<!-- 							<ul> -->
<!-- 								<li><a href="about_us.html">About US</a></li> -->
<!-- 								<li><a href="shop_grid.html">Featured Products</a></li> -->
<!-- 								<li><a href="offers.html">Offers</a></li> -->
<!-- 								<li><a href="our_blog.html">Blog</a></li> -->
<!-- 								<li><a href="faq.html">Faq</a></li> -->
<!-- 								<li><a href="career.html">Careers</a></li> -->
<!-- 								<li><a href="contact_us.html">Contact Us</a></li> -->
<!-- 							</ul> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 					<div class="col-lg-3 col-md-6 col-sm-6"> -->
<!-- 						<div class="second-row-item"> -->
<!-- 							<h4>Top Cities</h4> -->
<!-- 							<ul> -->
<!-- 								<li><a href="#">Gurugram</a></li> -->
<!-- 								<li><a href="#">New Delhi</a></li> -->
<!-- 								<li><a href="#">Bangaluru</a></li> -->
<!-- 								<li><a href="#">Mumbai</a></li> -->
<!-- 								<li><a href="#">Hyderabad</a></li> -->
<!-- 								<li><a href="#">Kolkata</a></li> -->
<!-- 								<li><a href="#">Ludhiana</a></li> -->
<!-- 								<li><a href="#">Chandigrah</a></li> -->
<!-- 							</ul> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 					<div class="col-lg-3 col-md-6 col-sm-6"> -->
<!-- 						<div class="second-row-item-app"> -->
<!-- 							<h4>Download App</h4> -->
<!-- 							<ul> -->
<!-- 								<li><a href="#"><img class="download-btn" -->
<%-- 										src="${pageContext.request.contextPath}/images/download-1.svg" alt=""></a></li> --%>
<!-- 								<li><a href="#"><img class="download-btn" -->
<%-- 										src="${pageContext.request.contextPath}/images/download-2.svg" alt=""></a></li> --%>
<!-- 							</ul> -->
<!-- 						</div> -->
<!-- 						<div class="second-row-item-payment"> -->
<!-- 							<h4>Payment Method</h4> -->
<!-- 							<div class="footer-payments"> -->
<!-- 								<ul id="paypal-gateway" class="financial-institutes"> -->
<!-- 									<li class="financial-institutes__logo"><img alt="Visa" -->
<%-- 										title="Visa" src="${pageContext.request.contextPath}/images/footer-icons/pyicon-6.svg"></li> --%>
<!-- 									<li class="financial-institutes__logo"><img alt="Visa" -->
<%-- 										title="Visa" src="${pageContext.request.contextPath}/images/footer-icons/pyicon-1.svg"></li> --%>
<!-- 									<li class="financial-institutes__logo"><img -->
<!-- 										alt="MasterCard" title="MasterCard" -->
<%-- 										src="${pageContext.request.contextPath}/images/footer-icons/pyicon-2.svg"></li> --%>
<!-- 									<li class="financial-institutes__logo"><img -->
<!-- 										alt="American Express" title="American Express" -->
<%-- 										src="${pageContext.request.contextPath}/images/footer-icons/pyicon-3.svg"></li> --%>
<!-- 									<li class="financial-institutes__logo"><img alt="Discover" -->
<%-- 										title="Discover" src="${pageContext.request.contextPath}/images/footer-icons/pyicon-4.svg"> --%>
<!-- 									</li> -->
<!-- 								</ul> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 						<div class="second-row-item-payment"> -->
<!-- 							<h4>Newsletter</h4> -->
<!-- 							<div class="newsletter-input"> -->
<!-- 								<input id="email" name="email" type="text" -->
<!-- 									placeholder="Email Address" class="form-control input-md" -->
<!-- 									required=""> -->
<!-- 								<button class="newsletter-btn hover-btn" type="submit"> -->
<!-- 									<i class="uil uil-telegram-alt"></i> -->
<!-- 								</button> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 		</div> -->
<!-- 		<div class="footer-last-row"> -->
<!-- 			<div class="container"> -->
<!-- 				<div class="row"> -->
<!-- 					<div class="col-md-12"> -->
<!-- 						<div class="footer-bottom-links"> -->
<!-- 							<ul> -->
<!-- 								<li><a href="about_us.html">About</a></li> -->
<!-- 								<li><a href="contact_us.html">Contact</a></li> -->
<!-- 								<li><a href="privacy_policy.html">Privacy Policy</a></li> -->
<!-- 								<li><a href="term_and_conditions.html">Term & -->
<!-- 										Conditions</a></li> -->
<!-- 								<li><a href="refund_and_return_policy.html">Refund & -->
<!-- 										Return Policy</a></li> -->
<!-- 							</ul> -->
<!-- 						</div> -->
<!-- 						<div class="copyright-text"> -->
<!-- 							<i class="uil uil-copyright"></i>Copyright 2020 <b>Gambolthemes</b> -->
<!-- 							. All rights <a href="http://www.bootstrapmb.com" title="">researved</a> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 		</div> -->
<!-- 	</footer> -->
	<!-- Footer End -->

	<!-- Javascripts -->
	<script src="${pageContext.request.contextPath}/js/jquery-3.3.1.min.js"></script>
	<script src="${pageContext.request.contextPath}/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="${pageContext.request.contextPath}/vendor/OwlCarousel/owl.carousel.js"></script>
	<script src="${pageContext.request.contextPath}/vendor/semantic/semantic.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/product.thumbnail.slider.js"></script>
	<script src="${pageContext.request.contextPath}/js/custom.js"></script>
	<script src="${pageContext.request.contextPath}/js/offset_overlay.js"></script>
	<script src="${pageContext.request.contextPath}/js/night-mode.js"></script>
	

</body>
</html>