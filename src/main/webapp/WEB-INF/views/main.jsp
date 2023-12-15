<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <link rel="icon" type="image/png" href="${path}/resources/img/logo.png">
  <title>
    	디저트의 모든 것 EatIt
  </title>
  <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900|Roboto+Slab:400,700" />
  <link href="/resources/css/nucleo-icons.css" rel="stylesheet" />
  <link href="/resources/css/nucleo-svg.css" rel="stylesheet" />
  <script src="https://kit.fontawesome.com/42d5adcbca.js" crossorigin="anonymous"></script>
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons+Round" rel="stylesheet">
  <link id="pagestyle" href="/resources/css/main.css" rel="stylesheet" />
  <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>

<body class="g-sidenav-show  bg-gray-200">
  <aside class="sidenav navbar navbar-vertical navbar-expand-xs border-0 border-radius-xl my-3 fixed-start ms-3   bg-gradient-dark" id="sidenav-main">
    <div class="sidenav-header">
      <i class="fas fa-times p-3 cursor-pointer text-white opacity-5 position-absolute end-0 top-0 d-none d-xl-none" aria-hidden="true" id="iconSidenav"></i>
      <a class="navbar-brand m-0" href="/">
        <span class="ms-1 font-weight-bold text-white">디저트카페 EatIt</span>
      </a>
    </div>
    <hr class="horizontal light mt-0 mb-2">
    <div class="collapse navbar-collapse  w-auto " id="sidenav-collapse-main">
      <ul class="navbar-nav">
        <li class="nav-item ignore-click" id="mn_main">
          <a class="nav-link text-white bg-gradient-primary" href="/">
            <span class="nav-link-text ms-1">메인</span>
          </a>
        </li>
        <li class="nav-item " id="mn_info">
          	<span class="nav-link text-white " style="cursor: default;">기준정보 관리</span>
          <!-- 기준정보 관리 서브메뉴 -->
		  <ul class="navbar-nav" id="sm1">
		    <li class="nav-item">
		      <a class="nav-link text-white sm-hv" href="/submenu1.html">
		        <span class="nav-link-text ms-1">서브메뉴 1</span>
		      </a>
		    </li>
		    <li class="nav-item">
		      <a class="nav-link text-white sm-hv" href="/submenu2.html">
		        <span class="nav-link-text ms-1">서브메뉴 2</span>
		      </a>
		    </li>
		    <li class="nav-item">
		      <a class="nav-link text-white sm-hv" href="/submenu3.html">
		        <span class="nav-link-text ms-1">서브메뉴 3</span>
		      </a>
		    </li>
		  </ul>
		</li>
        <li class="nav-item" id="mn_material">
          <span class="nav-link text-white" style="cursor: default;">자재 관리</span>
  		  <ul class="navbar-nav" id="sm2">
		    <li class="nav-item">
		      <a class="nav-link text-white sm-hv" href="/submenu1.html">
		        <span class="nav-link-text ms-1">서브메뉴 1</span>
		      </a>
		    </li>
		    <li class="nav-item">
		      <a class="nav-link text-white sm-hv" href="${path}/submenu2.html">
		        <span class="nav-link-text ms-1">서브메뉴 2</span>
		      </a>
		    </li>
		    <li class="nav-item">
		      <a class="nav-link text-white sm-hv" href="${path}/submenu3.html">
		        <span class="nav-link-text ms-1">서브메뉴 3</span>
		      </a>
		    </li>
		  </ul>
        </li>
        <li class="nav-item" id="mn_production">
            <span class="nav-link text-white" style="cursor: default;">설비&생산 관리</span>
   		    <ul class="navbar-nav" id="sm3">
		    <li class="nav-item">
		      <a class="nav-link text-white sm-hv" href="${path}/submenu1.html">
		        <span class="nav-link-text ms-1">서브메뉴 1</span>
		      </a>
		    </li>
		    <li class="nav-item">
		      <a class="nav-link text-white sm-hv" href="${path}/submenu2.html">
		        <span class="nav-link-text ms-1">서브메뉴 2</span>
		      </a>
		    </li>
		    <li class="nav-item">
		      <a class="nav-link text-white sm-hv" href="${path}/submenu3.html">
		        <span class="nav-link-text ms-1">서브메뉴 3</span>
		      </a>
		    </li>
		  </ul>
        </li>
        <li class="nav-item" id="mn_warehouse">
            <span class="nav-link text-white" style="cursor: default;">창고 관리</span>
  		    <ul class="navbar-nav" id="sm4">
		    <li class="nav-item">
		      <a class="nav-link text-white sm-hv" href="${path}/submenu1.html">
		        <span class="nav-link-text ms-1">서브메뉴 1</span>
		      </a>
		    </li>
		    <li class="nav-item">
		      <a class="nav-link text-white sm-hv" href="${path}/submenu2.html">
		        <span class="nav-link-text ms-1">서브메뉴 2</span>
		      </a>
		    </li>
		    <li class="nav-item">
		      <a class="nav-link text-white sm-hv" href="${path}/submenu3.html">
		        <span class="nav-link-text ms-1">서브메뉴 3</span>
		      </a>
		    </li>
		  </ul>
        </li>
        <li class="nav-item" id="mn_delivery">
            <span class="nav-link text-white" style="cursor: default;">납품 관리</span>
          	<ul class="navbar-nav" id="sm5">
		    <li class="nav-item">
		      <a class="nav-link text-white sm-hv" href="${path}/submenu1.html">
		        <span class="nav-link-text ms-1">서브메뉴 1</span>
		      </a>
		    </li>
		    <li class="nav-item">
		      <a class="nav-link text-white sm-hv" href="${path}/submenu2.html">
		        <span class="nav-link-text ms-1">서브메뉴 2</span>
		      </a>
		    </li>
		    <li class="nav-item">
		      <a class="nav-link text-white sm-hv" href="${path}/submenu3.html">
		        <span class="nav-link-text ms-1">서브메뉴 3</span>
		      </a>
		    </li>
		  </ul>
        </li>
        <li class="nav-item" id="mn_hr">
          <span class="nav-link text-white" style="cursor: default;">인사 관리</span>
  		  <ul class="navbar-nav" id="sm6">
		    <li class="nav-item">
		      <a class="nav-link text-white sm-hv" href="${path}/submenu1.html">
		        <span class="nav-link-text ms-1">서브메뉴 1</span>
		      </a>
		    </li>
		    <li class="nav-item">
		      <a class="nav-link text-white sm-hv" href="${path}/submenu2.html">
		        <span class="nav-link-text ms-1">서브메뉴 2</span>
		      </a>
		    </li>
		    <li class="nav-item">
		      <a class="nav-link text-white sm-hv" href="${path}/submenu3.html">
		        <span class="nav-link-text ms-1">서브메뉴 3</span>
		      </a>
		    </li>
		  </ul>
        </li>
      </ul>
    </div>
  </aside>
  <main class="main-content position-relative max-height-vh-100 h-100 border-radius-lg ">
    <!-- Navbar -->
    <nav class="navbar navbar-main navbar-expand-lg px-0 mx-4 shadow-none border-radius-xl" id="navbarBlur" data-scroll="true">
      <div class="container-fluid py-1 px-3">
        <nav aria-label="breadcrumb">
          <h6 class="font-weight-bolder mb-0">MAIN</h6>
        </nav>
        <div class="collapse navbar-collapse mt-sm-0 mt-2 me-md-0 me-sm-4" id="navbar">
          <div class="ms-md-auto pe-md-3 d-flex align-items-center">
          </div>
          <ul class="navbar-nav  justify-content-end">
            <li class="nav-item d-flex align-items-center">
              <a href="${path }/members/memberLogin" class="nav-link text-body font-weight-bold px-0">
                <i class="fa fa-user me-sm-1"></i>
                <span class="d-sm-inline d-none">Login</span>
              </a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
    <!-- End Navbar -->
    <div class="container-fluid py-4">
      <div class="row">
        <div class="col-xl-3 col-sm-6 mb-xl-0 mb-4">
          <div class="card">
            <div class="card-header p-3 pt-2">
              <div class="icon icon-lg icon-shape bg-gradient-dark shadow-dark text-center border-radius-xl mt-n4 position-absolute">
                <i class="material-icons opacity-10">weekend</i>
              </div>
              <div class="text-end pt-1">
                <p class="text-sm mb-0 text-capitalize">
                	<script>
                  		document.write(new Date().getFullYear())
                	</script> 남품액
                </p>
                <h4 class="mb-0">190,245,000원</h4>
              </div>
            </div>
            <div class="card-footer p-3">
            </div>
          </div>
        </div>
        <div class="col-xl-3 col-sm-6 mb-xl-0 mb-4">
          <div class="card">
            <div class="card-header p-3 pt-2">
              <div class="icon icon-lg icon-shape bg-gradient-primary shadow-primary text-center border-radius-xl mt-n4 position-absolute">
                <i class="material-icons opacity-10">weekend</i>
              </div>
              <div class="text-end pt-1">
                <p class="text-sm mb-0 text-capitalize">
                	<script>
                  		document.write(new Date().getFullYear())
                	</script> 납품량
                </p>
                <h4 class="mb-0">2,300개</h4>
              </div>
            </div>
            <div class="card-footer p-3">
            </div>
          </div>
        </div>
        <div class="col-xl-3 col-sm-6 mb-xl-0 mb-4">
          <div class="card">
            <div class="card-header p-3 pt-2">
              <div class="icon icon-lg icon-shape bg-gradient-success shadow-success text-center border-radius-xl mt-n4 position-absolute">
                <i class="material-icons opacity-10">weekend</i>
              </div>
              <div class="text-end pt-1">
                <p class="text-sm mb-0 text-capitalize">이번달 남품액</p>
                <h4 class="mb-0">6,900,000원</h4>
              </div>
            </div>
            <div class="card-footer p-3">
            </div>
          </div>
        </div>
        <div class="col-xl-3 col-sm-6">
          <div class="card">
            <div class="card-header p-3 pt-2">
              <div class="icon icon-lg icon-shape bg-gradient-info shadow-info text-center border-radius-xl mt-n4 position-absolute">
                <i class="material-icons opacity-10">weekend</i>
              </div>
              <div class="text-end pt-1">
                <p class="text-sm mb-0 text-capitalize">이번달 남품량</p>
                <h4 class="mb-0">320개</h4>
              </div>
            </div>
            <div class="card-footer p-3">
            </div>
          </div>
        </div>
      </div>
      <div class="row mt-4">
		<div class="col-lg-4 col-md-6 mt-4 mb-4">
          <div class="card z-index-2 ">
            <div class="card-header p-0 position-relative mt-n4 mx-3 z-index-2 bg-transparent">
              <div class="bg-gradient-primary shadow-primary border-radius-lg py-3 pe-1">
                <div class="chart">
                  <canvas id="chart-bars" class="chart-canvas" height="170"></canvas>
                </div>
              </div>
            </div>
            <div class="card-body">
              <h6 class="mb-0 ">연도별 납품량</h6>
              <p class="text-sm "> (<span class="font-weight-bolder">+15%</span>) 전년도 대비 </p>
              <hr class="dark horizontal">
              <div class="d-flex ">
                <i class="material-icons text-sm my-auto me-1">schedule</i>
                <p class="mb-0 text-sm"> 수정 일자 </p>
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-4 col-md-6 mt-4 mb-4">
          <div class="card z-index-2  ">
            <div class="card-header p-0 position-relative mt-n4 mx-3 z-index-2 bg-transparent">
              <div class="bg-gradient-success shadow-success border-radius-lg py-3 pe-1">
                <div class="chart">
                  <canvas id="chart-line" class="chart-canvas" height="170"></canvas>
                </div>
              </div>
            </div>
            <div class="card-body">
              <h6 class="mb-0 ">월별 납품액 </h6>
              <p class="text-sm "> (<span class="font-weight-bolder">-5%</span>) 전달 대비</p>
              <hr class="dark horizontal">
              <div class="d-flex ">
                <i class="material-icons text-sm my-auto me-1">schedule</i>
                <p class="mb-0 text-sm"> 수정 일자 </p>
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-4 mt-4 mb-3">
          <div class="card z-index-2 ">
            <div class="card-header p-0 position-relative mt-n4 mx-3 z-index-2 bg-transparent">
              <div class="bg-gradient-info shadow-dark border-radius-lg py-3 pe-1">
                <div class="chart">
                  <canvas id="chart-line-tasks" class="chart-canvas" height="170"></canvas>
                </div>
              </div>
            </div>
            <div class="card-body">
              <h6 class="mb-0 ">월별 납품량</h6>
              <p class="text-sm "> (<span class="font-weight-bolder">+5%</span>) 전달 대비</p>
              <hr class="dark horizontal">
              <div class="d-flex ">
                <i class="material-icons text-sm my-auto me-1">schedule</i>
                <p class="mb-0 text-sm">수정 일자</p>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="row mb-4">
        <div class="col-lg-8 col-md-6 mb-md-0 mb-4">
          <div class="card">
            <div class="card-header pb-0">
              <div class="row">
                <div class="col-lg-6 col-7">
                  <h6>공지사항</h6>
                </div>
                <div class="col-lg-6 col-5 my-auto text-end">
                  <div class="dropdown float-lg-end pe-4">
                    <ul class="dropdown-menu px-2 py-3 ms-sm-n4 ms-n5" aria-labelledby="dropdownTable">
                      <li><a class="dropdown-item border-radius-md" href="javascript:;">Action</a></li>
                      <li><a class="dropdown-item border-radius-md" href="javascript:;">Another action</a></li>
                      <li><a class="dropdown-item border-radius-md" href="javascript:;">Something else here</a></li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
            <div class="card-body px-0 pb-2">
              <div class="table-responsive">
                <table class="table align-items-center mb-0">
                  <thead>
                    <tr>
						<th
							class="text-secondary text-xxs font-weight-bolder opacity-7"
							style="width: 20px;">분류</th>
						<th
							class="text-center text-secondary text-xxs font-weight-bolder opacity-7">제목</th>
						<th
							class="text-center text-secondary text-xxs font-weight-bolder opacity-7"
							style="width: 20px;">조회수</th>
						<th
							class="text-center text-secondary text-xxs font-weight-bolder opacity-7"
							style="width: 20px;">작성일</th>
					</tr>
                  </thead>
                  <tbody>
                   <tr>
					  <td>
						<div class="d-flex px-2 py-1">
							<div class="d-flex flex-column justify-content-center">
								<h6
									class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7"
									style="margin-left: 7px;">전체</h6>
							</div>
						</div>
					   </td>
					   <td class="align-middle text-center text-sm ">
							<h6><a href="#">전체 공지글입니다.</a></h6>						 
					   </td>
					   <td class="align-middle text-center text-sm">
						  <p class="text-xs font-weight-bold mb-0">20</p>
					   </td>
					   <td class="align-middle text-center">
					   	   <span class="text-secondary text-xs font-weight-bold">2023-12-12</span>
					   </td>
					</tr>
					<tr>
					  <td>
						<div class="d-flex px-2 py-1">
							<div class="d-flex flex-column justify-content-center">
								<h6
									class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7"
									style="margin-left: 7px;">인사</h6>
							</div>
						</div>
					   </td>
					   <td class="align-middle text-center text-sm ">
							<h6><a href="#">인사 공지글입니다.</a></h6>						 
					   </td>
					   <td class="align-middle text-center text-sm">
						  <p class="text-xs font-weight-bold mb-0">53</p>
					   </td>
					   <td class="align-middle text-center">
					   	   <span class="text-secondary text-xs font-weight-bold">2023-12-10</span>
					   </td>
					</tr>
					<tr>
					  <td>
						<div class="d-flex px-2 py-1">
							<div class="d-flex flex-column justify-content-center">
								<h6
									class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7"
									style="margin-left: 7px;">자재</h6>
							</div>
						</div>
					   </td>
					   <td class="align-middle text-center text-sm ">
							<h6><a href="#">자재 공지글입니다.</a></h6>						 
					   </td>
					   <td class="align-middle text-center text-sm">
						  <p class="text-xs font-weight-bold mb-0">15</p>
					   </td>
					   <td class="align-middle text-center">
					   	   <span class="text-secondary text-xs font-weight-bold">2023-12-05</span>
					   </td>
					</tr>
					<tr>
					  <td>
						<div class="d-flex px-2 py-1">
							<div class="d-flex flex-column justify-content-center">
								<h6
									class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7"
									style="margin-left: 7px;">생산</h6>
							</div>
						</div>
					   </td>
					   <td class="align-middle text-center text-sm ">
							<h6><a href="#">생산 공지글입니다.</a></h6>						 
					   </td>
					   <td class="align-middle text-center text-sm">
						  <p class="text-xs font-weight-bold mb-0">32</p>
					   </td>
					   <td class="align-middle text-center">
					   	   <span class="text-secondary text-xs font-weight-bold">2023-12-03</span>
					   </td>
					</tr>
					<tr>
					  <td>
						<div class="d-flex px-2 py-1">
							<div class="d-flex flex-column justify-content-center">
								<h6
									class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7"
									style="margin-left: 7px;">창고</h6>
							</div>
						</div>
					   </td>
					   <td class="align-middle text-center text-sm ">
							<h6><a href="#">창고 공지글입니다.</a></h6>						 
					   </td>
					   <td class="align-middle text-center text-sm">
						  <p class="text-xs font-weight-bold mb-0">18</p>
					   </td>
					   <td class="align-middle text-center">
					   	   <span class="text-secondary text-xs font-weight-bold">2023-11-28</span>
					   </td>
					</tr>
					<tr>
					  <td>
						<div class="d-flex px-2 py-1">
							<div class="d-flex flex-column justify-content-center">
								<h6
									class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7"
									style="margin-left: 7px;">납품</h6>
							</div>
						</div>
					   </td>
					   <td class="align-middle text-center text-sm ">
							<h6><a href="#">납품  공지글입니다.</a></h6>						 
					   </td>
					   <td class="align-middle text-center text-sm">
						  <p class="text-xs font-weight-bold mb-0">5</p>
					   </td>
					   <td class="align-middle text-center">
					   	   <span class="text-secondary text-xs font-weight-bold">2023-11-24</span>
					   </td>
					</tr>
					<tr>
					  <td>
						<div class="d-flex px-2 py-1">
							<div class="d-flex flex-column justify-content-center">
								<h6
									class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7"
									style="margin-left: 7px;">설비</h6>
							</div>
						</div>
					   </td>
					   <td class="align-middle text-center text-sm ">
							<h6><a href="#">설비 공지글입니다.</a></h6>						 
					   </td>
					   <td class="align-middle text-center text-sm">
						  <p class="text-xs font-weight-bold mb-0">29</p>
					   </td>
					   <td class="align-middle text-center">
					   	   <span class="text-secondary text-xs font-weight-bold">2023-11-20</span>
					   </td>
					</tr>
                  </tbody>
                </table>
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-4 col-md-6">
          <div class="card h-100">
            <div class="card-header pb-0">
              <h6>이번달 우수사원</h6>
            </div>
            <div class="card-body p-3">
               <div class="table-responsive">
                <table class="table align-items-center mb-0">
                  <thead>
                    <tr>
						<th
							class="text-secondary text-xxs font-weight-bolder opacity-7"
							style="width: 20px;">부서</th>
						<th
							class="text-center text-secondary text-xxs font-weight-bolder opacity-7">직책</th>
						<th
							class="text-center text-secondary text-xxs font-weight-bolder opacity-7"
							style="width: 20px;">이름</th>
					</tr>
                  </thead>
                  <tbody>
                   <tr>
					  <td>
						<div class="d-flex px-2 py-1">
							<div class="d-flex flex-column justify-content-center">
								<h6
									class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7"
									style="margin-left: 7px;">인사</h6>
							</div>
						</div>
					   </td>
					   <td class="align-middle text-center text-sm ">
							<h6>인사관리담당</h6>						 
					   </td>
					   <td class="align-middle text-center text-sm">
						  <p class="text-xs font-weight-bold mb-0">이병헌</p>
					   </td>
					</tr>
					<tr>
					  <td>
						<div class="d-flex px-2 py-1">
							<div class="d-flex flex-column justify-content-center">
								<h6
									class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7"
									style="margin-left: 7px;">인사</h6>
							</div>
						</div>
					   </td>
					   <td class="align-middle text-center text-sm ">
							<h6>인사OO담당</h6>						 
					   </td>
					   <td class="align-middle text-center text-sm">
						  <p class="text-xs font-weight-bold mb-0">이민정</p>
					   </td>
					</tr>
					<tr>
					  <td>
						<div class="d-flex px-2 py-1">
							<div class="d-flex flex-column justify-content-center">
								<h6
									class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7"
									style="margin-left: 7px;">자재</h6>
							</div>
						</div>
					   </td>
					   <td class="align-middle text-center text-sm ">
							<h6>자재OO담당</h6>						 
					   </td>
					   <td class="align-middle text-center text-sm">
						  <p class="text-xs font-weight-bold mb-0">정우성</p>
					   </td>
					</tr>
					<tr>
					  <td>
						<div class="d-flex px-2 py-1">
							<div class="d-flex flex-column justify-content-center">
								<h6
									class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7"
									style="margin-left: 7px;">생산</h6>
							</div>
						</div>
					   </td>
					   <td class="align-middle text-center text-sm ">
							<h6>생산OO담당</h6>						 
					   </td>
					   <td class="align-middle text-center text-sm">
						  <p class="text-xs font-weight-bold mb-0">이정재</p>
					   </td>
					</tr>
					<tr>
					  <td>
						<div class="d-flex px-2 py-1">
							<div class="d-flex flex-column justify-content-center">
								<h6
									class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7"
									style="margin-left: 7px;">창고</h6>
							</div>
						</div>
					   </td>
					   <td class="align-middle text-center text-sm ">
							<h6>창고OO담당</h6>						 
					   </td>
					   <td class="align-middle text-center text-sm">
						  <p class="text-xs font-weight-bold mb-0">황정민</p>
					   </td>
					</tr>
					<tr>
					  <td>
						<div class="d-flex px-2 py-1">
							<div class="d-flex flex-column justify-content-center">
								<h6
									class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7"
									style="margin-left: 7px;">납품</h6>
							</div>
						</div>
					   </td>
					   <td class="align-middle text-center text-sm ">
							<h6>납품OO담당</h6>						 
					   </td>
					   <td class="align-middle text-center text-sm">
						  <p class="text-xs font-weight-bold mb-0">안내상</p>
					   </td>
					</tr>
					<tr>
					  <td>
						<div class="d-flex px-2 py-1">
							<div class="d-flex flex-column justify-content-center">
								<h6
									class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7"
									style="margin-left: 7px;">설비</h6>
							</div>
						</div>
					   </td>
					   <td class="align-middle text-center text-sm ">
							<h6>설비OO담당</h6>						 
					   </td>
					   <td class="align-middle text-center text-sm">
						  <p class="text-xs font-weight-bold mb-0">김태희</p>
					   </td>
					</tr>
                  </tbody>
                </table>
            </div>
          </div>
        </div>
      </div>
      <footer class="footer py-4  ">
        <div class="container-fluid">
          <div class="row align-items-center justify-content-lg-between">
            <div class="col-lg-6 mb-lg-0 mb-4">
              <div class="copyright text-center text-sm text-muted text-lg-start">
                © <script>
                  document.write(new Date().getFullYear())
                </script>,
               	 항상 여러분 곁에는
                <a href="/" class="font-weight-bold">EatIt</a>
                 <i class="fa fa-heart"></i> 
                                           이 함께합니다.
              </div>
            </div>
          </div>
        </div>
      </footer>
    </div>
    </div>
  </main>
  <!--   Core JS Files   -->
  <script src="/resources/js/core/popper.min.js"></script>
  <script src="/resources/js/core/bootstrap.min.js"></script>
  <script src="/resources/js/plugins/perfect-scrollbar.min.js"></script>
  <script src="/resources/js/plugins/smooth-scrollbar.min.js"></script>
  <script src="/resources/js/plugins/jquery.js"></script>
  <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
  <script src="https://unpkg.com/smooth-scrollbar"></script>

  <script>
    var ctx = document.getElementById("chart-bars").getContext("2d");

    new Chart(ctx, {
      type: "bar",
      data: {
        labels: ['2020', '2021', '2022', '2023'],
        datasets: [{
          label: "전체 납품량",
          tension: 0.4,
          borderWidth: 0,
          borderRadius: 4,
          borderSkipped: false,
          backgroundColor: "rgba(255, 255, 255, .8)",
          data: [500, 1200, 1700, 2300],
          maxBarThickness: 6
        }, ],
      },
      options: {
        responsive: true,
        maintainAspectRatio: false,
        plugins: {
          legend: {
            display: false,
          }
        },
        interaction: {
          intersect: false,
          mode: 'index',
        },
        scales: {
          y: {
            grid: {
              drawBorder: false,
              display: true,
              drawOnChartArea: true,
              drawTicks: false,
              borderDash: [5, 5],
              color: 'rgba(255, 255, 255, .2)'
            },
            ticks: {
              suggestedMin: 0,
              suggestedMax: 500,
              beginAtZero: true,
              padding: 10,
              font: {
                size: 14,
                weight: 300,
                family: "Roboto",
                style: 'normal',
                lineHeight: 2
              },
              color: "#fff"
            },
          },
          x: {
            grid: {
              drawBorder: false,
              display: true,
              drawOnChartArea: true,
              drawTicks: false,
              borderDash: [5, 5],
              color: 'rgba(255, 255, 255, .2)'
            },
            ticks: {
              display: true,
              color: '#f8f9fa',
              padding: 10,
              font: {
                size: 14,
                weight: 300,
                family: "Roboto",
                style: 'normal',
                lineHeight: 2
              },
            }
          },
        },
      },
    });


    var ctx2 = document.getElementById("chart-line").getContext("2d");

    new Chart(ctx2, {
      type: "line",
      data: {
        labels: ['2023-08', '2023-09', '2023-10', '2023-11', '2023-12'],
        datasets: [{
          label: "이번달 납품액",
          tension: 0,
          borderWidth: 0,
          pointRadius: 5,
          pointBackgroundColor: "rgba(255, 255, 255, .8)",
          pointBorderColor: "transparent",
          borderColor: "rgba(255, 255, 255, .8)",
          borderColor: "rgba(255, 255, 255, .8)",
          borderWidth: 4,
          backgroundColor: "transparent",
          fill: true,
          data: [5900000, 4900000, 6800000,7300000,6900000],
          maxBarThickness: 6

        }],
      },
      options: {
        responsive: true,
        maintainAspectRatio: false,
        plugins: {
          legend: {
            display: false,
          }
        },
        interaction: {
          intersect: false,
          mode: 'index',
        },
        scales: {
          y: {
            grid: {
              drawBorder: false,
              display: true,
              drawOnChartArea: true,
              drawTicks: false,
              borderDash: [5, 5],
              color: 'rgba(255, 255, 255, .2)'
            },
            ticks: {
              display: true,
              color: '#f8f9fa',
              padding: 10,
              font: {
                size: 14,
                weight: 300,
                family: "Roboto",
                style: 'normal',
                lineHeight: 2
              },
            }
          },
          x: {
            grid: {
              drawBorder: false,
              display: false,
              drawOnChartArea: false,
              drawTicks: false,
              borderDash: [5, 5]
            },
            ticks: {
              display: true,
              color: '#f8f9fa',
              padding: 10,
              font: {
                size: 14,
                weight: 300,
                family: "Roboto",
                style: 'normal',
                lineHeight: 2
              },
            }
          },
        },
      },
    });

    var ctx3 = document.getElementById("chart-line-tasks").getContext("2d");

    new Chart(ctx3, {
      type: "line",
      data: {
        labels: ['2023-08', '2023-09', '2023-10', '2023-11', '2023-12'],
        datasets: [{
          label: "이번달 납품량",
          tension: 0,
          borderWidth: 0,
          pointRadius: 5,
          pointBackgroundColor: "rgba(255, 255, 255, .8)",
          pointBorderColor: "transparent",
          borderColor: "rgba(255, 255, 255, .8)",
          borderWidth: 4,
          backgroundColor: "transparent",
          fill: true,
          data: [100, 200,500,300,320],
          maxBarThickness: 6

        }],
      },
      options: {
        responsive: true,
        maintainAspectRatio: false,
        plugins: {
          legend: {
            display: false,
          }
        },
        interaction: {
          intersect: false,
          mode: 'index',
        },
        scales: {
          y: {
            grid: {
              drawBorder: false,
              display: true,
              drawOnChartArea: true,
              drawTicks: false,
              borderDash: [5, 5],
              color: 'rgba(255, 255, 255, .2)'
            },
            ticks: {
              display: true,
              padding: 10,
              color: '#f8f9fa',
              font: {
                size: 14,
                weight: 300,
                family: "Roboto",
                style: 'normal',
                lineHeight: 2
              },
            }
          },
          x: {
            grid: {
              drawBorder: false,
              display: false,
              drawOnChartArea: false,
              drawTicks: false,
              borderDash: [5, 5]
            },
            ticks: {
              display: true,
              color: '#f8f9fa',
              padding: 10,
              font: {
                size: 14,
                weight: 300,
                family: "Roboto",
                style: 'normal',
                lineHeight: 2
              },
            }
          },
        },
      },
    });
  </script>
<script>
  $(document).ready(function () {
    // 초기에는 모든 서브메뉴 목록을 숨김
    $("ul[id^='sm']").hide();

    // 메뉴 항목을 클릭했을 때 해당 서브메뉴를 보여줌 또는 숨김
    $("[id^='mn']").click(function (e) {
      // 클릭한 항목에 해당하는 서브메뉴 목록을 찾음
      var submenu = $(this).find("ul[id^='sm']");

      // 다른 모든 서브메뉴 목록을 숨김
      $("ul[id^='sm']").not(submenu).hide();

      // 클릭한 항목에 해당하는 서브메뉴 목록을 토글하여 보이거나 숨김
      submenu.toggle().css({ height: "0px" }).animate({ height: "125px" });

      // Stop the event from propagating to the document click handler
      e.stopPropagation();
    });

    // 다른 곳을 클릭했을 때 모든 서브메뉴 목록을 숨기지 않음
    $(document).click(function () {
      // do nothing here or perform other actions if needed
    });
  });
</script>


<script>
  document.addEventListener("DOMContentLoaded", function () {
    // 모든 네비게이션 항목을 가져오고 NodeList를 배열로 변환
    var navItems = Array.from(document.querySelectorAll('#sidenav-collapse-main .nav-item'));

    // 각 네비게이션 항목에 클릭 이벤트 리스너 추가
    navItems.forEach(function(item) {
      item.addEventListener('click', function (event) {
        // 현재 클릭한 네비게이션 항목의 링크(a 태그)에 'bg-gradient-primary' 클래스 추가
        var link = this.querySelector('span');
        if (link) {
          link.classList.add('bg-gradient-primary');
        }

        // 다른 네비게이션 항목의 링크(a 태그)에 'bg-gradient-primary' 클래스 제거
        navItems.filter(function(navItem) {
          return navItem !== item;
        }).forEach(function(otherNavItem) {
          var otherLink = otherNavItem.querySelector('span');
          var otherLink1 = otherNavItem.querySelector('a');
          if (otherLink) {
            otherLink.classList.remove('bg-gradient-primary');
          if (otherLink1) {
              otherLink1.classList.remove('bg-gradient-primary');
          }
          }
        });
      });
    });
  });
</script>

<script>
document.addEventListener("DOMContentLoaded", function () {
	  // 모든 네비게이션 항목을 가져옵니다.
	  var navItems = document.querySelectorAll(".nav-item:not(.ignore-click)");

	  // 클릭 이벤트 리스너를 문서 전체에 추가합니다.
	  document.addEventListener("click", function (event) {
	    // 클릭된 요소가 네비게이션 항목인지 확인합니다.
	    var isNavItemClick = Array.from(navItems).some(function (navItem) {
	      return navItem.contains(event.target);
	    });

	    // 만약 클릭된 요소가 네비게이션 항목이 아니라면 아무것도 하지 않습니다.
	    if (!isNavItemClick) {
	      return;
	    }
	  });

	  // 각 네비게이션 항목에 클릭 이벤트 리스너를 추가합니다.
	  navItems.forEach(function (item) {
	    item.addEventListener("click", function (event) {
	      // 현재 margin-bottom 값을 가져옵니다.
	      var currentMarginBottom = parseInt(
	        window.getComputedStyle(item).marginBottom
	      );

	      // 만약 현재 margin-bottom 값이 20px이면 제거하고, 아니면 추가합니다.
	      item.style.marginBottom =
	        currentMarginBottom === 20 ? "" : "20px";

	      // 모든 다른 네비게이션 항목에서 "margin-bottom" 스타일을 제거합니다.
	      navItems.forEach(function (navItem) {
	        if (navItem !== item) {
	          navItem.style.marginBottom = "";
	        }
	      });

	      // Stop the event from propagating to the document click handler
	      event.stopPropagation();
	    });
	  });
	});
</script>

</body>
</html>