<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE HTML>
<html>
<head>
<title>Mini Shop</title>
<base href="${pageContext.servletContext.contextPath}/">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Glance Design Dashboard Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript">

	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
</script>
<link href="css/discount-tag.css" rel='stylesheet' type='text/css' />
<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />

<!-- Custom CSS -->
<link href="css/style-admin.css" rel='stylesheet' type='text/css' />

<!-- font-awesome icons CSS -->
<link href="css/all.css" rel="stylesheet">
<!-- //font-awesome icons CSS-->

<!-- side nav css file -->
<link href='css/SidebarNav.min.css' media='all' rel='stylesheet'
	type='text/css' />
<!-- //side nav css file -->

<!-- js-->
<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/modernizr.custom.js"></script>

<!--webfonts-->
<link
	href="//fonts.googleapis.com/css?family=PT+Sans:400,400i,700,700i&amp;subset=cyrillic,cyrillic-ext,latin-ext"
	rel="stylesheet">
<!--//webfonts-->

<!-- Metis Menu -->
<script src="js/metisMenu.min.js"></script>
<script src="js/custom.js"></script>
<link href="css/custom.css" rel="stylesheet">
<!--//Metis Menu -->


</head>
<body class="cbp-spmenu-push">
	<div class="main-content">
		<jsp:include page="../left-sidebar-header.jsp"></jsp:include>
		<div id="page-wrapper">
			<div class="main-page"></div>
			<!-- content -->

			<div class="error">${msg}</div>
			<div class="success" style="">${message}</div>

			<form:form action="admin/user/edit/${id}.html" modelAttribute="user"
				enctype="multipart/form-data" method="post">
				
				<div class="form-group">
					<label>Quy???n: </label>
					<form:select path="roleId" class="form-control" value="${roleId}">
						<%-- <option value="1" label="admin"
							${user.roleId == 1 ? 'selected' : ''} />
						<option value="0" label="user"
							${user.roleId == 0 ? 'selected' : ''} /> --%>
							<!-- <option  value="1">admin</option> -->
							<option  value="${user.roleId}">${user.roleId == 1 ? 'admin' : 'user'}</option>
					</form:select>
				</div>

				<form:hidden path="id" />
				<form:hidden path="lock" />
				<form:hidden path="username" />
				<form:hidden path="password" />
				
				
			<%-- 	<div class="form-group">
					<label>H??? t??n: </label>
					<form:input path="name" value="${name}" class="form-control"
						maxlength="50" required="required" oninvalid="this.setCustomValidity('H??? t??n kh??ng h???p l???!')"
						oninput="this.setCustomValidity('')"/>
				</div> --%>
				<%-- <div class="form-group">
					<label>M???t kh???u: </label>
					<form:input type="text" path="password" class="form-control" value="${password}"
						required="required" pattern="([a-z]|[A-Z]|[0-9]){1,8}"
						oninvalid="this.setCustomValidity('M???t kh???u bao g???m 8 k?? t??? ch???, s???!')"
						oninput="this.setCustomValidity('')" />
				</div> --%>
				<div class="form-group">
					<label>Email: </label>
					<form:input path="email" value="${email}" class="form-control"
						type="email" required="required"
						pattern="^[a-z][a-z0-9_\.]{5,32}@[a-z0-9]{2,}(\.[a-z0-9]{2,4}){1,2}$"
						oninvalid="this.setCustomValidity('Email sai ?????nh d???ng!')"
						oninput="this.setCustomValidity('')" />
				</div>
			<%-- 	<div class="form-group">
					<label>S??? ??i???n tho???i: </label>
					<form:input path="phone" value="${phone}" type="tel"
						class="form-control" required="required"
						pattern="(03|05|07|08|09)+([0-9]{8})\b"
						oninvalid="this.setCustomValidity('S??? ??i???n tho???i sai ?????nh d???ng!')"
						oninput="this.setCustomValidity('')" />
				</div>
				<div class="form-group">
					<label>?????a ch???: </label>
					<form:input path="address" value="${address}" type="text"
						class="form-control" required="required" />
				</div> --%>
				<%-- <div class="form-group">
					<label>M???t kh???u: </label>
					<form:input path="password" type="password"
						class="form-control"/>
				</div> --%>

				<div>
					<form:button class="btn btn-primary" type="submit"
						onclick="return confirm('B???n c?? ch???c ch???n s???a t??i kho???n n??y?')">S???a</form:button>
				</div>
				
			</form:form>


			<!-- content -->
		</div>
	</div>


	<!--scrolling js-->
	<script src="js/jquery.nicescroll.js"></script>
	<script src="js/scripts.js"></script>
	<!--//scrolling js-->

	<!-- side nav js -->
	<script src='js/SidebarNav.min.js' type='text/javascript'></script>
	<script>
		$('.sidebar-menu').SidebarNav()
	</script>
	<!-- //side nav js -->

	<!-- Bootstrap Core JavaScript -->
	<script src="js/bootstrap.js">
		
	</script>
	<!-- //Bootstrap Core JavaScript -->

</body>
</html>