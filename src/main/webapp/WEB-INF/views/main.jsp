<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <link rel="icon" type="image/png" href="${path}/resources/img/favicon.png">
  <title>
    	디저트의 모든 것 EatIt
  </title>
  <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900|Roboto+Slab:400,700" />
  <link href="${path}/resources/css/nucleo-icons.css" rel="stylesheet" />
  <link href="${path}/resources/css/nucleo-svg.css" rel="stylesheet" />
  <script src="https://kit.fontawesome.com/42d5adcbca.js" crossorigin="anonymous"></script>
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons+Round" rel="stylesheet">
  <link id="pagestyle" href="${path}/resources/css/material-dashboard.css?v=3.1.0" rel="stylesheet" />
  <script defer data-site="YOUR_DOMAIN_HERE" src="https://api.nepcha.com/js/nepcha-analytics.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>
<body>
<body class="g-sidenav-show  bg-gray-200">
  <aside class="sidenav navbar navbar-vertical navbar-expand-xs border-0 border-radius-xl my-3 fixed-start ms-3   bg-gradient-dark" id="sidenav-main">
    <div class="sidenav-header">
      <i class="fas fa-times p-3 cursor-pointer text-white opacity-5 position-absolute end-0 top-0 d-none d-xl-none" aria-hidden="true" id="iconSidenav"></i>
      <a class="navbar-brand m-0" href="${path}/main">
        <span class="ms-1 font-weight-bold text-white">디저트카페 EatIt</span>
      </a>
    </div>
    <hr class="horizontal light mt-0 mb-2">
    <div class="collapse navbar-collapse  w-auto " id="sidenav-collapse-main">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link text-white active bg-gradient-primary" href="${path}/main">
            <span class="nav-link-text ms-1">메인</span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-white " href="${path}/resources/pages/tables.html">
            <span class="nav-link-text ms-1">기준정보 관리</span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-white " href="<%= request.getContextPath() %>pages/billing.html">
            <span class="nav-link-text ms-1">자재 관리</span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-white " href="<%= request.getContextPath() %>pages/virtual-reality.html">
            <span class="nav-link-text ms-1">설비&생산 관리</span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-white " href="<%= request.getContextPath() %>pages/rtl.html">
            <span class="nav-link-text ms-1">창고 관리</span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-white " href="<%= request.getContextPath() %>pages/notifications.html">
            <span class="nav-link-text ms-1">납품 관리</span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-white " href="<%= request.getContextPath() %>pages/profile.html">
            <span class="nav-link-text ms-1">인사 관리</span>
          </a>
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
            <div class="input-group input-group-outline">
              <label class="form-label">Type here...</label>
              <input type="text" class="form-control">
            </div>
          </div>
          <ul class="navbar-nav  justify-content-end">
            <li class="nav-item d-flex align-items-center">
              <a href="<%= request.getContextPath() %>pages/sign-in.html" class="nav-link text-body font-weight-bold px-0">
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
                <p class="text-sm mb-0 text-capitalize">전체 남품액</p>
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
                <p class="text-sm mb-0 text-capitalize">전체 납품량</p>
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
              <h6>월별 출고량 그래프</h6>
              <p class="text-sm">
                <i class="fa fa-arrow-up text-success" aria-hidden="true"></i>
                <span class="font-weight-bold">24%</span> 전달 대비
              </p>
            </div>
            <div class="card-body p-3">
              <div>
                <canvas id="myChart"></canvas>
              </div>
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
                <a href="${path}/main" class="font-weight-bold">EatIt</a>
                 <i class="fa fa-heart"></i> 
                                           이 함께합니다.
              </div>
            </div>
          </div>
        </div>
      </footer>
    </div>
  </main>
  <!--   Core JS Files   -->
  <script src="${path}/resources/js/core/popper.min.js"></script>
  <script src="${path}/resources/js/core/bootstrap.min.js"></script>
  <script src="${path}/resources/js/plugins/perfect-scrollbar.min.js"></script>
  <script src="${path}/resources/js/plugins/smooth-scrollbar.min.js"></script>
  <script>
  var ctx = document.getElementById('myChart').getContext('2d');
  var myChart = new Chart(ctx, {
    type: 'line',  // 그래프 타입을 'line'으로 변경
    data: {
      labels: ['2023-08', '2023-09', '2023-10', '2023-11', '2023-12'],
      datasets: [{
        label: '월별 출고량',
        data: [350, 200, 450, 320, 410],  // 실제 데이터
        backgroundColor: 'rgba(255, 99, 132, 0.2)', // 곡선 아래의 영역을 색칠할 때 사용
        borderColor: 'rgba(255, 99, 132, 1)', // 곡선의 색상
        borderWidth: 1,
        pointBackgroundColor: 'rgba(255, 99, 132, 1)', // 데이터 포인트의 배경 색상
        pointBorderColor: 'rgba(255, 99, 132, 1)', // 데이터 포인트의 테두리 색상
        pointRadius: 5, // 데이터 포인트의 반지름
        pointHoverRadius: 8 // 마우스를 가져갔을 때 데이터 포인트의 반지름
      }]
    },
    options: {
        scales: {
          y: {
            beginAtZero: true
          }
        },
        elements: {
          line: {
            tension: 0.4 // 곡선의 강도를 조절하는 값, 0에 가까울수록 곡선이 부드러워짐
          }
        },
        responsive: true,
        maintainAspectRatio: false,
        aspectRatio: 1
      }
  });
</script>
  <script>
    var win = navigator.platform.indexOf('Win') > -1;
    if (win && document.querySelector('#sidenav-scrollbar')) {
      var options = {
        damping: '0.5'
      }
      Scrollbar.init(document.querySelector('#sidenav-scrollbar'), options);
    }
  </script>
</body>
</html>