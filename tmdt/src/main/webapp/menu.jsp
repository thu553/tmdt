<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- Basic -->
<meta charset="utf-8" />

<link rel="shortcut icon" href="images/logo2.png">

<title>Menu</title>

<!-- bootstrap core css -->
<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />



<!-- font awesome style -->
<link href="css/font-awesome.min.css" rel="stylesheet" />

<!-- Custom styles for this template -->
<link href="css/style.css" rel="stylesheet" />
<!-- responsive style -->
<link href="css/responsive.css" rel="stylesheet" />
<style type="text/css"">
.pagination {
	display: inline-block;
}

.pagination a {
	color: black;
	font-size: 30px;
	float: left;
	padding: 2px 16px;
	text-decoration: none;
}
.active{

font-weight: bold;
}
.pagination a.active {
	background-color: blue;
	color: white;
}

.pagination a:hover:not(.active) {
	background-color: red;
}
</style>
<script type="text/javascript">
function doLogout() {
	if (confirm("Are you Logout?")) {
		window.location = "logout";
	}
	
}
</script>
</head>
<body class="sub_page">
	<fmt:setLocale value="${sessionScope.lang}" />
	<fmt:setBundle basename="languages.lang" />
	<c:set var="user" value="${sessionScope.user}" />

	<div class="hero_area">
		<div class="bg-box">
			<img src="images/bg.jpg" alt="">
		</div>
		<!-- header section strats -->
		<header class="header_section">
			<div class="container">
				<nav class="navbar navbar-expand-lg custom_nav-container ">
					<a class="navbar-brand" href="index.jsp"> <img alt="logo"
						style="width: 80px" src="images/logo.png">
					</a>



					<div class="collapse navbar-collapse" id="navbarSupportedContent">
						<ul class="navbar-nav  mx-auto ">
							<li class="nav-item "><a class="nav-link" href="index.jsp"><fmt:message>menu.home</fmt:message>
							</a></li>
							<li class="nav-item active"><a class="nav-link" href="menu"><fmt:message>menu.menu</fmt:message></a></li>
							<li class="nav-item"><a class="nav-link" href="about.jsp"><fmt:message>menu.about</fmt:message></a>
							</li>
							<li class="nav-item"><a class="nav-link" href="contact.jsp"><fmt:message>menu.contact</fmt:message></a>
							</li>
						</ul>
						<div class="user_option">
							<div class="language">
								<a href="?lang_local=vi_VN" class="lang">VN </a> <a
									href="?lang_local=en_US" class="lang"> EN</i>
								</a>
							</div>

							<a href="user?role=${user.role}" class="user_link"> <i
								class="fa fa-user" aria-hidden="true">${user.userName}</i>

							</a>

							<c:if test="${not empty user}">
								<a href="#" onclick="doLogout()" class="user_link"><img width="30px" alt=""
									src="images/logout3.png"> </a>
							</c:if>
							<a href="cart?shoppingCartId=${user.shoppingCartId}"
								class="user_link"><img width="30px" alt=""
								src="images/cart.png"> </a>

						</div>
					</div>
				</nav>
			</div>
		</header>
		<!-- end header section -->
	</div>

	<!-- food section -->

	<section class="food_section layout_padding">
		<div class="container">
			<div class="heading_container heading_center">
				<h2>
					<fmt:message>menu.menu</fmt:message>
				</h2>
			</div>

			<ul class="filters_menu">
				<li class="menu-all"><a class="${type2 == type?"
					active":"" }" href="menu?type=all"><fmt:message>all</fmt:message></a></li>
				<li class="menu-.chickenjoyz"><a class="${type2 eq Chickenjoy?"
					active":"" }" href="menu?type=Chickenjoy"><fmt:message>chickenjoy</fmt:message></a></li>
				<li class="menu-.burger"><a class="${type2 eq Burger?"
					active":"" }" href="menu?type=Burger"><fmt:message>burger</fmt:message></a></li>
				<li class="menu-spicynoodles"><a class="${type2 eq Noodles?"
					active":"" }" href="menu?type=Noodles"><fmt:message>spicynoodles</fmt:message></a></li>
				<li class="menu-drinks"><a class="${type2 eq Drinks?"
					active":"" }" href="menu?type=Drinks"><fmt:message>drinks</fmt:message></a></li>
			</ul>
			<c:set var="page" value="${requestScope.page }" />
			<div class="paginationn">

				<c:forEach begin="${1}" end="${requestScope.number }" var="stt">
					<a class="${stt==page?" active":"" }" href="menu?page=${stt}">
						${stt}</a>

				</c:forEach>
			</div>

			<c:set var="list" value="${ requestScope.listItem}" />
			<div class="filters-content">
				<div class="row grid">
					<c:forEach var="i" items="${list}">

						<div class="col-sm-6 col-lg-4 all pizza">
							<div class="box">
								<div>
									<div class="img-box">
										<img src="${i.imageName}" alt="">
									</div>
									<div class="detail-box">
										<h5>${i.name}</h5>
										<div class="options">
											<h6>${i.unitPrice}VND</h6>
											<a
												href="shopping?shoppingCartId=${user.shoppingCartId}&itemId=${i.id}">
												+ </a>

										</div>
									</div>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
	</section>

	<!-- end food section -->

	<!-- footer section -->
	<footer class="footer_section">
		<div class="container">
			<div class="row">
				<div class="col-md-4 footer-col">
					<div class="footer_contact">
						<h4>
							<fmt:message>menu.contact</fmt:message>
						</h4>
						<div class="contact_link_box">
							<a href=""> <i class="fa fa-map-marker" aria-hidden="true"></i>
								<span><fmt:message>university</fmt:message> </span>
							</a> <a href=""> <i class="fa fa-phone" aria-hidden="true"></i> <span>
									0364811595 </span>
							</a> <a href=""> <i class="fa fa-envelope" aria-hidden="true"></i>
								<span> 21130553@st.hcmuaf.edu.vn </span>
							</a>
						</div>
					</div>
				</div>
				<div class="col-md-4 footer-col">
					<div class="footer_detail">
						<a href="" class="footer-logo"><fmt:message>home.mr</fmt:message></a>

						<div class="footer_social">
							<a href=""> <i class="fa fa-facebook" aria-hidden="true"></i>
							</a> <a href=""> <i class="fa fa-twitter" aria-hidden="true"></i>
							</a> <a href=""> <i class="fa fa-linkedin" aria-hidden="true"></i>
							</a> <a href=""> <i class="fa fa-instagram" aria-hidden="true"></i>
							</a> <a href=""> <i class="fa fa-pinterest" aria-hidden="true"></i>
							</a>
						</div>
					</div>
				</div>
				<div class="col-md-4 footer-col">
					<h4>
						<fmt:message>openhour</fmt:message>
					</h4>
					<p>
						<fmt:message>Everyday</fmt:message>
					</p>
					<p>8.00 Am -10.00 Pm</p>
				</div>
			</div>
		</div>
	</footer>
</body>
</html>