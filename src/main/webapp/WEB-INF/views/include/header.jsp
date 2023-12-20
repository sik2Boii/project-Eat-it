<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
<meta charset="UTF-8">
<link rel="icon" type="image/png" href="${path}/resources/img/logo.png">
<link rel="stylesheet" type="text/css"
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900|Roboto+Slab:400,700" />
<link href="/resources/css/nucleo-icons.css" rel="stylesheet" />
<link href="/resources/css/nucleo-svg.css" rel="stylesheet" />
<script src="https://kit.fontawesome.com/42d5adcbca.js"
	crossorigin="anonymous"></script>
<link
	href="https://fonts.googleapis.com/icon?family=Material+Icons+Round"
	rel="stylesheet">
<link id="pagestyle" href="/resources/css/main.css" rel="stylesheet" />
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>
<body class="g-sidenav-show  bg-gray-200">
<%@ include file="../include/aside.jsp"%>
	<main
		class="main-content position-relative max-height-vh-100 h-100 border-radius-lg ">
		<!-- Navbar -->
		<nav
			class="navbar navbar-main navbar-expand-lg px-0 mx-4 shadow-none border-radius-xl"
			id="navbarBlur" data-scroll="true">
			<div class="container-fluid py-1 px-3">
				<nav aria-label="breadcrumb">
					<h6 class="font-weight-bolder mb-0">MAIN</h6>
				</nav>
				<div class="collapse navbar-collapse mt-sm-0 mt-2 me-md-0 me-sm-4"
					id="navbar">
					<div class="ms-md-auto pe-md-3 d-flex align-items-center"></div>
					<ul class="navbar-nav  justify-content-end">
						<li class="nav-item d-flex align-items-center">
							<c:choose>
							  <c:when test="${empty sessionScope.id}">
								  <a href="${path}/members/memberLogin" class="nav-link text-body font-weight-bold px-0">
									  <i class="fa fa-user me-sm-1"></i>
									  <span class="d-sm-inline d-none">로그인</span>
								  </a>
							  </c:when>
							  <c:otherwise>
								  <a href="#" class="nav-link text-body font-weight-bold px-0">
									  <i class="fa fa-user me-sm-1"></i>
									  <span class="d-sm-inline d-none">${sessionScope.name}님</span>
								  </a>
								  <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in show" aria-labelledby="userDropdown">
										<a class="dropdown-item" onclick="openProfile('${sessionScope.name}')">
											<i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i> 내 정보
										</a>
										<div class="dropdown-divider"></div>
										<a class="dropdown-item" href="/keypoint/employee/logout"> <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
											로그아웃
										</a>
								  </div>
							  </c:otherwise>
						  </c:choose> 
						</li>
					</ul>
				</div>
			</div>
		</nav>
		<!-- End Navbar -->