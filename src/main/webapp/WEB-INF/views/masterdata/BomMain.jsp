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
  <link href="${path}/resources/css/nucleo-icons.css" rel="stylesheet" />
  <link href="${path}/resources/css/nucleo-svg.css" rel="stylesheet" />
  <link href="${path}/resources/css/main.css" rel="stylesheet" />
  <script src="https://kit.fontawesome.com/42d5adcbca.js" crossorigin="anonymous"></script>
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons+Round" rel="stylesheet">
  <link id="pagestyle" href="${path}/resources/css/material-dashboard.css?v=3.1.0" rel="stylesheet" />
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
      <ul class="navbar-nav" id="mn">
        <li class="nav-item">
          <a class="nav-link text-white active bg-gradient-primary" href="/">
            <span class="nav-link-text ms-1">메인</span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-white">
          	<span class="nav-link-text ms-1">기준정보 관리</span>
          </a>
          <!-- 기준정보 관리 서브메뉴 -->
		  <ul class="navbar-nav" id="sm">
		    <li class="nav-item">
		      <a class="nav-link text-white" href="${path}/masterdata/BomMain">
		        <span class="nav-link-text ms-1">BOM관리</span>
		      </a>
		    </li>
		    <li class="nav-item">
		      <a class="nav-link text-white" href="${path}/masterdata/CostManagement">
		        <span class="nav-link-text ms-1">비용관리</span>
		      </a>
		    </li>
		    <li class="nav-item">
		      <a class="nav-link text-white" href="${path}/masterdata/QualityManagement">
		        <span class="nav-link-text ms-1">설비정보관리</span>
		      </a>
		    </li>
		  </ul>
		</li>
        <li class="nav-item">
          <a class="nav-link text-white ">
            <span class="nav-link-text ms-1">자재 관리</span>
          </a>
          
  		  <ul class="navbar-nav" id="sm">
		    <li class="nav-item">
		      <a class="nav-link text-white" href="${path}/submenu1.html">
		        <span class="nav-link-text ms-1">서브메뉴 1</span>
		      </a>
		    </li>
		    <li class="nav-item">
		      <a class="nav-link text-white" href="${path}/submenu2.html">
		        <span class="nav-link-text ms-1">서브메뉴 2</span>
		      </a>
		    </li>
		    <li class="nav-item">
		      <a class="nav-link text-white" href="${path}/submenu3.html">
		        <span class="nav-link-text ms-1">서브메뉴 3</span>
		      </a>
		    </li>
		  </ul>
        </li>
        <li class="nav-item">
          <a class="nav-link text-white ">
            <span class="nav-link-text ms-1">설비&생산 관리</span>
          </a>
          		  <ul class="navbar-nav" id="sm">
		    <li class="nav-item">
		      <a class="nav-link text-white" href="${path}/submenu1.html">
		        <span class="nav-link-text ms-1">서브메뉴 1</span>
		      </a>
		    </li>
		    <li class="nav-item">
		      <a class="nav-link text-white" href="${path}/submenu2.html">
		        <span class="nav-link-text ms-1">서브메뉴 2</span>
		      </a>
		    </li>
		    <li class="nav-item">
		      <a class="nav-link text-white" href="${path}/submenu3.html">
		        <span class="nav-link-text ms-1">서브메뉴 3</span>
		      </a>
		    </li>
		  </ul>
        </li>
        <li class="nav-item">
          <a class="nav-link text-white ">
            <span class="nav-link-text ms-1">창고 관리</span>
          </a>
          		  <ul class="navbar-nav" id="sm">
		    <li class="nav-item">
		      <a class="nav-link text-white" href="${path}/submenu1.html">
		        <span class="nav-link-text ms-1">서브메뉴 1</span>
		      </a>
		    </li>
		    <li class="nav-item">
		      <a class="nav-link text-white" href="${path}/submenu2.html">
		        <span class="nav-link-text ms-1">서브메뉴 2</span>
		      </a>
		    </li>
		    <li class="nav-item">
		      <a class="nav-link text-white" href="${path}/submenu3.html">
		        <span class="nav-link-text ms-1">서브메뉴 3</span>
		      </a>
		    </li>
		  </ul>
        </li>
        <li class="nav-item">
          <a class="nav-link text-white ">
            <span class="nav-link-text ms-1">납품 관리</span>
          </a>
          		  <ul class="navbar-nav" id="sm">
		    <li class="nav-item">
		      <a class="nav-link text-white" href="${path}/submenu1.html">
		        <span class="nav-link-text ms-1">서브메뉴 1</span>
		      </a>
		    </li>
		    <li class="nav-item">
		      <a class="nav-link text-white" href="${path}/submenu2.html">
		        <span class="nav-link-text ms-1">서브메뉴 2</span>
		      </a>
		    </li>
		    <li class="nav-item">
		      <a class="nav-link text-white" href="${path}/submenu3.html">
		        <span class="nav-link-text ms-1">서브메뉴 3</span>
		      </a>
		    </li>
		  </ul>
        </li>
        <li class="nav-item">
          <a class="nav-link text-white ">
            <span class="nav-link-text ms-1">인사 관리</span>
          </a>
          		  <ul class="navbar-nav" id="sm">
		    <li class="nav-item">
		      <a class="nav-link text-white" href="${path}/submenu1.html">
		        <span class="nav-link-text ms-1">서브메뉴 1</span>
		      </a>
		    </li>
		    <li class="nav-item">
		      <a class="nav-link text-white" href="${path}/submenu2.html">
		        <span class="nav-link-text ms-1">서브메뉴 2</span>
		      </a>
		    </li>
		    <li class="nav-item">
		      <a class="nav-link text-white" href="${path}/submenu3.html">
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
          <h6 class="font-weight-bolder mb-0">BOM관리메인</h6>
        </nav>
        
        <div class="collapse navbar-collapse mt-sm-0 mt-2 me-md-0 me-sm-4" id="navbar">
          <div class="ms-md-auto pe-md-3 d-flex align-items-center">
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
             
      <input type="button" onclick="window.location.href='/masterdata/MdListPage'" value="품목정보관리">
      <input type="button" onclick="window.location.href='/masterdata/MIM'" value="원자재정보관리">
      <input type="button" onclick="window.location.href='/masterdata/CIM'" value="소요량관리">
      <input type="button" onclick="window.location.href='/masterdata/QIM'" value="품질관리">
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
    </div>
  </main>
  <!--   Core JS Files   -->
  <script src="${path}/resources/js/core/popper.min.js"></script>
  <script src="${path}/resources/js/core/bootstrap.min.js"></script>
  <script src="${path}/resources/js/plugins/perfect-scrollbar.min.js"></script>
  <script src="${path}/resources/js/plugins/smooth-scrollbar.min.js"></script>
  <script src="${path}/resources/js/plugins/jquery.js"></script>
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
    var win = navigator.platform.indexOf('Win') > -1;
    if (win && document.querySelector('#sidenav-scrollbar')) {
      var options = {
        damping: '0.5'
      }
      Scrollbar.init(document.querySelector('#sidenav-scrollbar'), options);
    }
  </script>
  
	<script>
	$(document).ready(function () {
	  $("#sm").hide();
	
	  $("ul#mn > li").mouseenter(function () {
	    $("#sm").stop().hide(); // 다른 메뉴 항목에 대한 서브메뉴 감추기
	    $(this).find("#sm").show().css({ height: "0px" }).animate({ height: "125px" });
	  });
	
	  // 마우스가 메뉴 항목에서 벗어날 때 서브메뉴 감추기
	  $("ul#mn > li").mouseleave(function () {
	    $(this).find("#sm").stop().hide();
	  });
	});
	</script>
</body>
</html>