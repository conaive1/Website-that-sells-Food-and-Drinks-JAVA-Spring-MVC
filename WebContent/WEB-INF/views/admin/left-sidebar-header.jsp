<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<base href="${pageContext.servletContext.contextPath}/">
<meta charset="UTF-8">
<title>Mini Shop</title>
<style>
.pic {
	object-fit: cover;
	width: 50px;
	height: 50px;
	border-radius: 50%;
	border: 2px solid #FF4E00;
	align-items: center;
	justify-content: center;
}

*[id$=errors], .error {
	color: red;
	font-style: italic;
}

.success {
	color: green;
	font-style: italic;
}

table {
	border-collapse: collapse;
	width: 100%;
}
th, .fa-sort{
	background: #222D32;
	color: #b8c7ce;
}
.fa-sort:hover{
	color:white;
}
th, td {
	line-height: 25px;
	text-align: left;
	padding: 5px;
}

.cart-thumb {
	border: 1px solid #ddd; /* Gray border */
	border-radius: 4px; /* Rounded border */
	width: 150px; /* Set a small width */
}

.cart-thumb:hover {
	box-shadow: 0 0 2px 1px rgba(0, 140, 186, 0.5);
}

.image-icon {
	position: relative;
}

.image-icon .imgage {
	display: block;
}

.image-icon .icon {
	position: absolute;
	top: 0;
	right: 0;
}

.floating {
	width: 65%;
	height: auto;
	/* float: left; */
    position: absolute;
    left: 20%;
    top: 25%;
    background-color: #F1F1F1;
    box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
    padding: 30px;
}
</style>
</head>
<body>

	<div class="cbp-spmenu cbp-spmenu-vertical cbp-spmenu-left"
		id="cbp-spmenu-s1">
		<!--left-fixed -navigation-->
		<aside class="sidebar-left">
			<nav class="navbar navbar-inverse">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target=".collapse"
						aria-expanded="false">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<h1>
						<a class="navbar-brand" href="index.html"><span
							class="fa fa-area-chart"></span> Mini Shop<span
							class="dashboard_text">Qu???n l??</span></a>
					</h1>
				</div>
				<div class="collapse navbar-collapse"
					id="bs-example-navbar-collapse-1">
					<ul class="sidebar-menu">
						<li class="header">Ch???c n??ng ch??nh</li>
						<li><a href="index.html"> <i class="fas fa-home"></i> <span>
									Trang ch???</span>
						</a></li>
						<br>
						<li><a href="admin/user/1.html"> <i class="fas fa-users"></i>
								<span> Ng?????i d??ng</span>
						</a></li>
						<li><a href="admin/category/1.html"> <i
								class="fas fa-list-ul"></i> <span> Lo???i s???n ph???m</span>
						</a></li>
						<li><a href="admin/product/1.html"> <i
								class="fas fa-boxes"></i> <span> S???n ph???m</span>
						</a></li>
						<li><a href="admin/order/1.html"> <i
								class="fas fa-clipboard-list"></i> <span> ????n h??ng</span>
						</a></li>

					</ul>
				</div>
				<!-- /.navbar-collapse -->
			</nav>
		</aside>
	</div>
	<!--left-fixed -navigation-->

	<!-- header-starts -->



	<div class="sticky-header header-section ">
		<div class="header-left" style="margin-top: 15px;">

			<c:if test="${adminBaseURL == 'admin/user'}">
				<h3>
					<i class="fas fa-users"></i> Qu???n l?? t??i kho???n
				</h3>
			</c:if>
			<c:if test="${adminBaseURL == 'admin/user/edit'}">
				<h3>
					<i class="fas fa-user-edit"></i> S???a t??i kho???n
				</h3>
			</c:if>
			<c:if test="${adminBaseURL == 'admin/user/insert'}">
				<h3>
					<i class="fas fa-user-plus"></i> Th??m t??i kho???n m???i
				</h3>
			</c:if>
			<c:if test="${adminBaseURL == 'admin/category'}">
				<h3>
					<i class="fas fa-list-ul"></i> Qu???n l?? lo???i s???n ph???m
				</h3>
			</c:if>
			<c:if test="${adminBaseURL == 'admin/category/edit'}">
				<h3>
					<i class="fas fa-edit"></i> S???a lo???i s???n ph???m
				</h3>
			</c:if>
			<c:if test="${adminBaseURL == 'admin/category/insert'}">
				<h3>
					<i class="fas fa-plus"></i> Th??m lo???i s???n ph???m m???i
				</h3>
			</c:if>
			<c:if test="${adminBaseURL == 'admin/product'}">
				<h3>
					<i class="fas fa-boxes"></i> Qu???n l?? s???n ph???m
				</h3>
			</c:if>
			<c:if test="${adminBaseURL == 'admin/product/edit'}">
				<h3>
					<i class="fas fa-edit"></i> S???a s???n ph???m
				</h3>
			</c:if>
			<c:if test="${adminBaseURL == 'admin/product/insert'}">
				<h3>
					<i class="fas fa-plus"></i> Th??m s???n ph???m m???i
				</h3>
			</c:if>
			<c:if test="${adminBaseURL == 'admin/order'}">
				<h3>
					<i class="fas fa-clipboard-list"></i> Qu???n l?? ????n h??ng
				</h3>
			</c:if>
			<c:if test="${adminBaseURL == 'admin/order/edit'}">
				<h3>
					<i class="fas fa-edit"></i> S???a ????n h??ng
				</h3>
			</c:if>
			<c:if test="${adminBaseURL == 'admin/order/insert'}">
				<h3>
					<i class="fas fa-plus"></i> Th??m ????n h??ng m???i
				</h3>
			</c:if>
			
		</div>
		<div class="header-right">

			<span class="btn"> ${adminLogin.username}</span>
			<a href="signout.html" style="width:10%">
				<h4>
					<i class="fas fa-sign-out-alt"></i>LogOut
				</h4>
			</a>
		</div>
	</div>

</body>
</html>