<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
<title>Mini Shop</title>
<base href="${pageContext.servletContext.contextPath}/">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf-8">
<meta name="keywords"
	content="Goggles a Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script>
	addEventListener("load", function() {
		setTimeout(hideURLbar, 0);
	}, false);

	function hideURLbar() {
		window.scrollTo(0, 1);
	}
</script>
<link href="css/discount-tag.css" rel='stylesheet' type='text/css' />
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="css/login_overlay.css" rel='stylesheet' type='text/css' />
<link href="css/style6.css" rel='stylesheet' type='text/css' />
<link rel="stylesheet" href="css/shop.css" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/checkout.css">
<link href="css/easy-responsive-tabs.css" rel='stylesheet'
	type='text/css' />
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link href="css/fontawesome-all.css" rel="stylesheet">
<link href="css/all.css" rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Pacifico&display=swap&subset=vietnamese"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Josefin+Sans:400,400i,700,700i&display=swap&subset=vietnamese"
	rel="stylesheet">
</head>

<body>
	<div class="banner-top container-fluid" id="home">
		<!-- header -->
		<jsp:include page="../header/header.jsp"></jsp:include>
	</div>
	<!-- banner -->
	<div class="banner_inner">
		<div class="services-breadcrumb">
			<div class="inner_breadcrumb">

				<ul class="short">
					<!-- <li><a href="index.html">Trang ch???</a> <i>|</i></li>
					<li><a href="checkout.html">Gi??? h??ng</a> <i>|</i></li> -->
					<li>Thanh to??n</li>
				</ul>
			</div>
		</div>

	</div>
	<!--//banner -->
	<!--// header_top -->
	<!--Payment-->
	<br>
	<div class="inner-sec-shop px-lg-5 px-3">
		<h3 class="tittle-w3layouts my-lg-5 mt-3">Thanh to??n</h3>
	</div>
	<section class="banner-bottom-wthreelayouts py-lg-5 py-3">
		<div class="container">
			<div class="col-md-6 infor-left-basket">
				<h4>Th??ng tin ng?????i nh???n</h4>
				<ul>
					<li>${cart.name}</li>
					<li>${cart.phone}</li>
					<%-- <li>${cart.email}</li> --%>
					<li>${cart.address}</li>
				</ul>
			</div>
			<div class="col-md-6 checkout-left-basket">
				<h4>Chi ti???t gi??? h??ng</h4>
				<ul>

					<c:forEach var="i" varStatus="status" items="${listCartItem}">
						<li>${i.product.name}<i></i> <span><fmt:formatNumber
									value=" ${i.unitPrice * i.quantity}" type="number"
									pattern="###,###" /> ??</span>
						</li>
					</c:forEach>
					<li>Thu??? VAT(10%) + PVC :<i></i> <span><fmt:formatNumber
								value=" ${totalPrice * 0.12}" type="number" pattern="###,###" />
							??</span>
					</li>
					<li>T???ng ti???n :<i></i> <span><fmt:formatNumber
								value="${totalPrice + totalPrice*0.12}" type="number"
								pattern="###,###" /> VN??</span>
					</li>
				</ul>
			</div>
		</div>

		<div class="inner-sec-shop px-lg-5 px-3">

			<!--/tabs-->
			<h3 class="tittle-w3layouts my-lg-5 mt-3">Ph????ng
				th???c thanh to??n</h3>

			<div class="responsive_tabs">
				<div id="horizontalTab">
					<ul class="resp-tabs-list">
						<li>Nh???n h??ng tr??? ti???n (COD)</li>
						<li>Th??? thanh to??n qu???c t??? (VISA/ MASTER CARD)</li>
						<li>Ng??n h??ng ??i???n t??? (Internet Banking)</li>
						<li>Paypal</li>
					</ul>
					<div class="resp-tabs-container">
						<!--/tab_one-->
						<div class="tab1">
							<div class="pay_info">
								<form:form action="payment.html" method="post"
									modelAttribute="cart">
									<form:hidden path="id" />
									<form:hidden path="user.id" />
									<form:hidden path="buyDate" />
									<form:hidden path="name" />
									<form:hidden path="phone" />
									<%-- <form:hidden path="email" /> --%>
									<form:hidden path="address" />
									<form:hidden path="note" />
									<form:hidden path="payment" value="COD" />
									<form:hidden path="status" value="0" />
									<div class="vertical_post check_box_agile">
										<h5>Thanh to??n sau khi nh???n v?? ki???m tra h??ng.</h5>
										<!-- <div class="checkbox">
												<div class="check_box_one cashon_delivery">
													<label class="anim"> <input type="checkbox"
														class="checkbox"> <span> We also accept
															Credit/Debit card on delivery. Please Check with the
															agent.</span>
													</label>
												</div>

											</div> -->
									</div>
									<div class="text-center">
										<form:button type="submit" class="btn btn-lg">
										Thanh to??n ngay
								</form:button>
									</div>
								</form:form>
							</div>

						</div>
						<!--//tab_one-->
						<div class="tab2">
							<div class="pay_info">
								<form:form action="payment.html" method="post"
									modelAttribute="cart">
								<%-- 	<form:hidden path="id" />
									<form:hidden path="user.id" />
									<form:hidden path="buyDate" />
									<form:hidden path="name" />
									<form:hidden path="phone" />
									<form:hidden path="email" />
									<form:hidden path="address" />
									<form:hidden path="note" />
									<form:hidden path="payment" value="VISA" />
									<form:hidden path="status" value="0" /> --%>
									<section class="creditly-wrapper wthree, w3_agileits_wrapper">
										<div class="credit-card-wrapper">
											<div class="first-row form-group">
												<div class="controls">
													<label class="control-label">T??n tr??n th???</label> <input
														class="billing-address-name form-control" type="text"
														name="name" placeholder="John Smith">
												</div>
												<div class="w3_agileits_card_number_grids">
													<div class="w3_agileits_card_number_grid_left">
														<div class="controls">
															<label class="control-label">S??? th???</label> <input
																class="number credit-card-number form-control"
																type="text" name="number" inputmode="numeric"
																autocomplete="cc-number" autocompletetype="cc-number"
																x-autocompletetype="cc-number"
																placeholder="&#149;&#149;&#149;&#149; &#149;&#149;&#149;&#149; &#149;&#149;&#149;&#149; &#149;&#149;&#149;&#149;">
														</div>
													</div>
													<div class="w3_agileits_card_number_grid_right">
														<div class="controls">
															<label class="control-label">M?? CVV</label> <input
																class="security-code form-control" ????????
																inputmode="numeric" type="text" name="security-code"
																placeholder="&#149;&#149;&#149;">
														</div>
													</div>
													<div class="clear"></div>
												</div>
												<div class="controls">
													<label class="control-label">Ng??y h???t h???n</label> <input
														class="expiration-month-and-year form-control" type="text"
														name="expiration-month-and-year" placeholder="MM / YY">
												</div>
											</div>
										</div>
									</section>
									<div class="text-center">
										<form:button type="submit" class="btn btn-lg">
										Thanh to??n ngay
								</form:button>
									</div>
								</form:form>

							</div>
						</div>
						<div class="tab3">

							<div class="pay_info">
								<div class="vertical_post">
									<form:form action="payment.html" method="post"
										modelAttribute="cart">
										<%-- <form:hidden path="id" />
										<form:hidden path="user.id" />
										<form:hidden path="buyDate" />
										<form:hidden path="name" />
										<form:hidden path="phone" />
										<form:hidden path="email" />
										<form:hidden path="address" />
										<form:hidden path="note" />
										<form:hidden path="payment" value="IB" />
										<form:hidden path="status" value="0" /> --%>
										<h5>Ch???n ng??n h??ng:</h5>
										<div class="swit-radio">
											<div class="check_box_one">
												<div class="radio_one">
													<label> <input type="radio" name="radio" checked="">
														<i></i>Techcombank - Ng??n h??ng TMCP K??? Th????ng Vi???t Nam
													</label>
												</div>
											</div>
											<div class="check_box_one">
												<div class="radio_one">
													<label> <input type="radio" name="radio"> <i></i>MB
														- Ng??n h??ng TMCP Qu??n ?????i
													</label>
												</div>
											</div>
											<div class="check_box_one">
												<div class="radio_one">
													<label> <input type="radio" name="radio"> <i></i>Vietinbank
														??? Ng??n H??ng TMCP C??ng Th????ng Vi???t Nam
													</label>
												</div>
											</div>
											<div class="check_box_one">
												<div class="radio_one">
													<label> <input type="radio" name="radio"> <i></i>Vietcombank
														??? Ng??n H??ng TMCP Ngo???i Th????ng Vi???t Nam
													</label>
												</div>
											</div>
											<div class="clearfix"></div>
										</div>
										<h5>Ng??n h??ng kh??c</h5>
										<div class="">
											<select class="year">
												<option value="">=== Other Banks ===</option>
												<option value="ACB">ACB ??? Ng??n H??ng TMCP ?? Ch??u</option>
												<option value="TPB">TPBank ??? Ng??n H??ng TMCP Ti??n
													Phong</option>
												<option value="VTB">VIB ??? Ng??n h??ng TMCP Qu???c T???
													Vi???t Nam</option>
												<option value="VPB">VPBank ??? Ng??n h??ng TMCP Vi???t
													Nam Th???nh V?????ng</option>
												<option value="SB">Sacombank ??? Ng??n H??ng TMCP S??i
													G??n Th????ng T??n</option>
												<option value="LVPB">LienVietPostBank ??? Ng??n h??ng
													TMCP B??u ??i???n Li??n Vi???t</option>
												<option value="ABB">ABBANK ??? Ng??n H??ng TMCP An B??nh</option>
												<option value="AB">Agribank ??? Ng??n h??ng N??ng nghi???p
													v?? Ph??t tri???n N??ng th??n Vi???t Nam</option>
												<option value="SCB">Standard Chartered ??? Ng??n h??ng
													TNHH MTV Standard Chartered Vi???t Nam</option>
												<option value="BIDV">BIDV ??? Ng??n h??ng TMCP ?????u t??
													v?? Ph??t tri???n Vi???t Nam</option>
											</select>
										</div>
										<!-- <input type="submit" value="PAY NOW"> -->
										<div class="text-center">
											<form:button type="submit" class="btn btn-lg">
										Thanh to??n ngay
								</form:button>
										</div>
									</form:form>
								</div>
							</div>
						</div>
						<div class="tab4">
							<div class="pay_info row">
								<div class="col-md-6 tab-grid">
									<img class="pp-img" src="images/paypal.png"
										alt="Image Alternative text" title="Image Title">
									<p>Important: You will be redirected to PayPal's website to
										securely complete your payment.</p>
									<a class="btn btn-primary">Thanh to??n v???i Paypal</a>
								</div>
								<div class="col-md-6">
									<form:form action="payment.html" method="post"
										modelAttribute="cart">
										<%-- <form:hidden path="id" />
										<form:hidden path="user.id" />
										<form:hidden path="buyDate" />
										<form:hidden path="name" />
										<form:hidden path="phone" />
										<form:hidden path="email" />
										<form:hidden path="address" />
										<form:hidden path="note" />
										<form:hidden path="payment" value="PAYPAL" />
										<form:hidden path="status" value="0" /> --%>
										<div class="clearfix">
											<div class="form-group form-group-cc-number">
												<label>S??? th???</label> <input class="form-control"
													placeholder="xxxx xxxx xxxx xxxx" type="text"> <span
													class="cc-card-icon"></span>
											</div>
											<div class="form-group form-group-cc-cvc">
												<label>M?? CVV</label> <input class="form-control"
													placeholder="xxxx" type="text">
											</div>
										</div>
										<div class="clearfix">
											<div class="form-group form-group-cc-name">
												<label>T??n tr??n th???</label> <input class="form-control"
													type="text">
											</div>
											<div class="form-group form-group-cc-date">
												<label>Ng??y h???t h???n</label> <input class="form-control"
													placeholder="mm/yy" type="text">
											</div>
										</div>
										<!-- <div class="checkbox checkbox-small mt-4">
												<label> <input class="i-check" type="checkbox"
													checked="">Add to My Cards
												</label>
											</div> -->
										<!-- <input class="btn btn-primary submit mt-4" type="submit"
													value="Proceed Payment"> -->
										<div class="text-center">
											<form:button type="submit" class="btn btn-lg">
												Thanh to??n ngay
											</form:button>
										</div>

									</form:form>
								</div>
								<div class="clearfix"></div>
							</div>
						</div>

					</div>
				</div>
			</div>
			<!--//tabs-->
		</div>


		<!-- //payment -->
	</section>


	<!--//Payment-->
	<!--footer -->
	<jsp:include page="../footer/footer.jsp"></jsp:include>
	<!-- //footer -->
	<!--jQuery-->
	<script src="js/jquery-2.2.3.min.js"></script>
	<!-- newsletter modal -->
	<!--search jQuery-->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<script src="js/classie-search.js"></script>
	<script src="js/demo1-search.js"></script>
	<!--//search jQuery-->
	<!-- cart-js -->
	<script src="js/minicart.js"></script>
	<script>
		googles.render();

		googles.cart.on('googles_checkout', function(evt) {
			var items, len, i;

			if (this.subtotal() > 0) {
				items = this.items();

				for (i = 0, len = items.length; i < len; i++) {
				}
			}
		});
	</script>
	<!-- //cart-js -->
	<script>
		$(document).ready(function() {
			$(".button-log a").click(function() {
				$(".overlay-login").fadeToggle(200);
				$(this).toggleClass('btn-open').toggleClass('btn-close');
			});
		});
		$('.overlay-close1').on(
				'click',
				function() {
					$(".overlay-login").fadeToggle(200);
					$(".button-log a").toggleClass('btn-open').toggleClass(
							'btn-close');
					open = false;
				});
	</script>
	<!-- carousel -->
	<!-- easy-responsive-tabs -->
	<script src="js/easy-responsive-tabs.js"></script>
	<script>
		$(document).ready(function() {
			$('#horizontalTab').easyResponsiveTabs({
				type : 'default', //Types: default, vertical, accordion           
				width : 'auto', //auto or any width like 600px
				fit : true, // 100% fit in a container
				closed : 'accordion', // Start closed if in accordion view
				activate : function(event) { // Callback function if tab is switched
					var $tab = $(this);
					var $info = $('#tabInfo');
					var $name = $('span', $info);
					$name.text($tab.text());
					$info.show();
				}
			});
			$('#verticalTab').easyResponsiveTabs({
				type : 'vertical',
				width : 'auto',
				fit : true
			});
		});
	</script>

	<!-- credit-card -->
	<script type="text/javascript" src="js/creditly.js"></script>
	<link rel="stylesheet" href="css/creditly.css" type="text/css"
		media="all" />

	<script type="text/javascript">
		$(function() {
			var creditly = Creditly.initialize(
					'.creditly-wrapper .expiration-month-and-year',
					'.creditly-wrapper .credit-card-number',
					'.creditly-wrapper .security-code',
					'.creditly-wrapper .card-type');

			$(".creditly-card-form .submit").click(function(e) {
				e.preventDefault();
				var output = creditly.validate();
				if (output) {
					// Your validated credit card output
					console.log(output);
				}
			});
		});
	</script>
	<!-- //credit-card -->
	<!-- dropdown nav -->
	<script>
		$(".dropdown").hover(function() {
			$('.dropdown-menu', this).stop().slideDown(100);
		}, function() {
			$('.dropdown-menu', this).stop().slideUp(100);
		});
	</script>
	<!-- //dropdown nav -->
	<script src="js/move-top.js"></script>
	<script src="js/easing.js"></script>
	<script>
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event) {
				event.preventDefault();
				$('html,body').animate({
					scrollTop : $(this.hash).offset().top
				}, 900);
			});
		});
	</script>
	<script>
		$(document).ready(function() {
			/*
									var defaults = {
										  containerID: 'toTop', // fading element id
										containerHoverID: 'toTopHover', // fading element hover id
										scrollSpeed: 1200,
										easingType: 'linear' 
									 };
			 */

			$().UItoTop({
				easingType : 'easeOutQuart'
			});

		});
	</script>
	<!--// end-smoth-scrolling -->


	<!-- //smooth-scrolling-of-move-up -->
	<script src="js/bootstrap.js"></script>
	<!-- js file -->
</body>

</html>