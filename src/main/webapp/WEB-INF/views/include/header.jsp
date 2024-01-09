<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<head>
<meta charset="UTF-8">
 <link rel="icon" type="image/png" href="/resources/img/logo.png">
  <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900|Roboto+Slab:400,700" />
  <link href="/resources/css/nucleo-icons.css" rel="stylesheet" />
  <link href="/resources/css/nucleo-svg.css" rel="stylesheet" />
  <script src="https://kit.fontawesome.com/42d5adcbca.js" crossorigin="anonymous"></script>
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons+Round" rel="stylesheet">
  <link id="pagestyle" href="/resources/css/main.css" rel="stylesheet" />
  <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>
<!-- Navbar -->
<body class="g-sidenav-show  bg-gray-200">
<%@ include file="../include/aside.jsp" %>
<main class="main-content position-relative max-height-vh-100 h-100 border-radius-lg ">
<nav class="navbar navbar-main navbar-expand-lg px-0 mx-4 shadow-none border-radius-xl" id="navbarBlur" data-scroll="true">
	<div class="container-fluid py-1 px-3">
	  <nav aria-label="breadcrumb">
		<h6 class="font-weight-bolder mb-0">MAIN</h6>
	  </nav>
	  <ul class="navbar-nav justify-content-end">
		<li class="dropdown pe-2 d-flex align-items-center position-relative">
			<c:choose>
				<c:when test="${empty sessionScope.id}">
				  <a href="${path}/members/memberLogin" class="nav-link text-body font-weight-bold px-0">
					<i class="fa fa-user me-sm-1"></i>
					<span class="d-sm-inline d-none">로그인</span>
				  </a>
			  </c:when>
			  <c:otherwise>
				  <a href="javascript:;" class="nav-link text-body p-0" id="dropdownMenuButton" data-bs-toggle="dropdown" aria-expanded="false">
					<img class="img-profile rounded-circle" src="${sessionScope.photo }" style="position: relative; top: -3px; border: solid 1px black;">
					<span class="d-sm-inline d-none" style="font-size: 20px; margin-left: 10px;">${sessionScope.name }</span>
				  </a>
				  <ul class="dropdown-menu dropdown-menu-end px-2 py-3 me-sm-n4" aria-labelledby="dropdownMenuButton">
					<li class="mb-2">
					  <a class="dropdown-item border-radius-md" href="javascript:;">
						<div class="d-flex py-1">
						  <div class="d-flex flex-column justify-content-center">
							<h6 class="text-sm font-weight-normal mb-1">
							  <span class="font-weight-bold">내 정보</span>
							</h6>
						  </div>
						</div>
					  </a>
					</li>
					<li class="mb-2">
					  <a class="dropdown-item border-radius-md" href="javascript:;">
						<div class="d-flex py-1">
						  <div class="d-flex flex-column justify-content-center">
							<h6 class="text-sm font-weight-normal mb-1">
							  <span class="font-weight-bold">로그아웃</span>
							</h6>
						  </div>
						</div>
					  </a>
					</li>
				  </ul>
			  </c:otherwise>
			</c:choose>
		</li>
	  </ul>
	</div>
  </nav>