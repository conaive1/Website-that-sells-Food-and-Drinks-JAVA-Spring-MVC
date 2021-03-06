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
			<div>
				<a href="admin/product/insert.html" class="btn btn-primary"><i
					class="fas fa-plus"></i> Th??m s???n ph???m m???i</a>
			</div>
			<c:if test="${listProduct.size() != 0}">
				<div class="text-center">
					<c:forEach var="i" begin="0" end="${totalPage-1}"
						varStatus="status">

						<c:if test="${status.index == 0 && currentPage > 1}">
							<a href="admin/product/${currentPage-1}.html"
								class="btn btn-outline-primary">&laquo</a>
						</c:if>

						<a class="btn btn-outline-primary"
							href="admin/product/${i+1}.html"
							${status.index + 1 == currentPage ? 'style="background-color: #007bff;"':''}>
							<span
							${status.index + 1 == currentPage ? 'style="color: white;"':''}>
								${i+1}</span>
						</a>

						<c:if
							test="${status.index == totalPage-1 && currentPage <= totalPage-1}">
							<a href="admin/product/${currentPage+1}.html"
								class="btn btn-outline-primary">&raquo;</a>
						</c:if>

					</c:forEach>
				</div>

			</c:if>

			<br>

			<%-- <c:if test="${listProduct.size() == 0}">
				<div class="text-center">
					<h3>Kh??ng t??m th???y s???n ph???m h???p l???!</h3>
				</div>

			</c:if> --%>

			<table class="table-striped table-bordered" style="width: 100%;">

				<tr>
					<th>H??nh ???nh</th>
					<th>T??n s???n ph???m<i class="fas fa-sort btn"></i></th>
					<th>Lo???i s???n ph???m<i class="fas fa-sort btn"></i></th>
					<th>????n gi??<i class="fas fa-sort btn"></i></th>
					<th>Gi???m gi??<i class="fas fa-sort btn"></i></th>
					<th>Ch???c n??ng</th>
				</tr>


				<c:forEach var="p" items="${listProduct}">

					<tr>
						<td><c:choose>
								<c:when test="${p.discount > 0 && p.discount <= 1}">
									<div class="image-icon">
										<a href="single/${p.id}.html"><img src="${p.image}"
											class="cart-thumb image" alt="${p.name}"></a> <span
											class="fa-stack fa-lg icon"> <i
											class="fa fa-tag fa-stack-2x"></i> <i
											class="fa fa-stack-1x fa-inverse">&nbsp;-<fmt:formatNumber
													value="${p.discount}" type="percent" /></i>
										</span>
									</div>
								</c:when>
								<c:otherwise>
									<a href="single/${p.id}.html"><img src="${p.image}"
										class="cart-thumb image" alt="${p.name}"></a>
								</c:otherwise>
							</c:choose></td>
						<td>${p.name}</td>
						<td>${p.category.cateName}</td>
						<td><c:choose>
								<c:when test="${p.discount > 0 && p.discount <= 1}">
									<div style="color: gray;">
										<del>
											<fmt:formatNumber value=" ${p.price}" type="number"
												pattern="###,###" />
											??
										</del>
									</div>
									<div>
										<fmt:formatNumber value=" ${p.price - p.price*p.discount}"
											type="number" pattern="###,###" />
										??
									</div>
								</c:when>
								<c:otherwise>
									<fmt:formatNumber value=" ${p.price}" type="number"
										pattern="###,###" /> ??
							</c:otherwise>
							</c:choose></td>
						<td><fmt:formatNumber value="${p.discount}" type="percent" /></td>
						<td><a class="btn btn-primary"
							href="admin/product/edit/${p.id}.html" title="S???a s???n ph???m"><i
								class="fas fa-edit"></i></a> <a
							class="btn btn-primary ${p.cartItems.size() == 0 ? '':'disabled'}"
							href="admin/product/delete/${p.id}.html" title="Xo?? s???n ph???m"
							onclick="return confirm('B???n c?? ch???c ch???n xo?? s???n ph???m n??y?')">
								<i class="fas fa-trash-alt"></i>
						</a> <a class="btn btn-primary"
							href="admin/product/display/${p.id}.html"
							title="${p.display == true ? '???n s???n ph???m':'Hi???n s???n ph???m'}">
								<i
								class="${p.display == true ? 'far fa-eye':'far fa-eye-slash'}"></i>
						</a></td>
					</tr>

				</c:forEach>

				<tfoot>
					<tr>
						<th>H??nh ???nh</th>
						<th>T??n s???n ph???m<i class="fas fa-sort btn"></i></th>
						<th>Lo???i s???n ph???m<i class="fas fa-sort btn"></i></th>
						<th>????n gi??<i class="fas fa-sort btn"></i></th>
						<th>Gi???m gi??<i class="fas fa-sort btn"></i></th>
						<th>Ch???c n??ng</th>
					</tr>
				</tfoot>
			</table>
			<br>
			<c:if test="${listProduct.size() != 0}">
				<div class="text-center">
					<c:forEach var="i" begin="0" end="${totalPage-1}"
						varStatus="status">

						<c:if test="${status.index == 0 && currentPage > 1}">
							<a href="admin/product/${currentPage-1}.html"
								class="btn btn-outline-primary">&laquo</a>
						</c:if>

						<a class="btn btn-outline-primary"
							href="admin/product/${i+1}.html"
							${status.index + 1 == currentPage ? 'style="background-color: #007bff;"':''}>
							<span
							${status.index + 1 == currentPage ? 'style="color: white;"':''}>
								${i+1}</span>
						</a>

						<c:if
							test="${status.index == totalPage-1 && currentPage <= totalPage-1}">
							<a href="admin/product/${currentPage+1}.html"
								class="btn btn-outline-primary">&raquo;</a>
						</c:if>

					</c:forEach>
				</div>

			</c:if>

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
	<!-- sort-table -->
	<script type="text/javascript">
	 const getCellValue = (tr, idx) => tr.children[idx].innerText || tr.children[idx].textContent;

	const comparer = (idx, asc) => (a, b) => ((v1, v2) => 
	    v1 !== '' && v2 !== '' && !isNaN(v1) && !isNaN(v2) ? v1 - v2 : v1.toString().localeCompare(v2)
	    )(getCellValue(asc ? a : b, idx), getCellValue(asc ? b : a, idx));

	// do the work...
	document.querySelectorAll('th').forEach(th => th.addEventListener('click', (() => {
	    const table = th.closest('table');
	    Array.from(table.querySelectorAll('tr:nth-child(n+2)'))
	        .sort(comparer(Array.from(th.parentNode.children).indexOf(th), this.asc = !this.asc))
	        .forEach(tr => table.appendChild(tr) );
	}))); 
	
	</script>
	<!-- sort-table -->
</body>
</html>