<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" type="image/png" href="${path}/resources/img/logo.png">
<title>원자재정보관리</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900|Roboto+Slab:400,700" />
<link href="${path}/resources/css/nucleo-icons.css" rel="stylesheet" />
<link href="${path}/resources/css/nucleo-svg.css" rel="stylesheet" />
<link href="${path}/resources/css/main.css" rel="stylesheet" />
<script src="https://kit.fontawesome.com/42d5adcbca.js"
	crossorigin="anonymous"></script>
<link
	href="https://fonts.googleapis.com/icon?family=Material+Icons+Round"
	rel="stylesheet">
<link id="pagestyle"
	href="${path}/resources/css/material-dashboard.css?v=3.1.0"
	rel="stylesheet" />
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

<style>
.pagination {
	display: flex;
	justify-content: flex-end;
	list-style: none;
	padding-left: 0;
}

.page-item {
	margin-right: 5px;
}

.page-link {
	color: #333; /* 버튼 텍스트 색상 */
	background-color: #ddd; /* 버튼 배경색 */
	border: 1px solid #ccc; /* 버튼 테두리 */
	padding: 6px 12px;
	text-decoration: none;
}

.page-link:hover {
	background-color: #bbb; /* 호버 시 배경색 변경 */
	border-color: #aaa; /* 호버 시 테두리 색상 변경 */
}

.page-item.active .page-link {
	background-color: #555; /* 활성 버튼 배경색 */
	color: white; /* 활성 버튼 텍스트 색상 */
	border-color: #444; /* 활성 버튼 테두리 색상 */
}

.fixed-size-textarea {
	resize: none; /* 드래그에 의한 크기 조정을 막습니다. */
	width: 180px; /* 가로 크기를 조절할 수 있습니다. */
	height: 110px; /* 세로 크기를 조절할 수 있습니다. */
}

/* 추가된 레시피 입력 버튼 스타일 */
button {
	padding: 8px 12px;
	background-color: #333;
	color: #fff;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

button:hover {
	background-color: #555;
}

/* 버튼 스타일 */
input[type="submit"] {
	padding: 10px 20px; /* 내부 여백 설정 */
	background-color: #333; /* 배경색 */
	color: #fff; /* 텍스트 색상 */
	border: none; /* 테두리 제거 */
	border-radius: 5px; /* 모서리 둥글게 */
	cursor: pointer; /* 마우스 커서를 포인터로 변경하여 클릭 가능함을 나타냄 */
	transition: background-color 0.3s; /* 배경색 변화에 애니메이션 효과 부여 */
}

/* 버튼 호버 효과 */
input[type="submit"]:hover {
	background-color: #555; /* 호버 시 배경색 변경 */
}

table select {
	width: 100px;
	height: 35px;
}

/* 필요한 경우 수정 가능한 스타일 */
input[type="text"], select {
	width: 100px; /* 가로 너비 조정 */
}
/* 추가된 CSS */
.form-horizontal .form-group {
	margin-bottom: 15px;
}

/* 수정된 모달 스타일 */
.modal {
	display: none;
	position: fixed;
	z-index: 1;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	overflow: auto;
	background-color: rgba(0, 0, 0, 0.4);
}

.modal-content {
	background-color: #fefefe;
	margin: 5% auto;
	padding: 20px;
	border: 1px solid #ddd;
	border-radius: 5px;
	width: 60%; /* 너비 조정 */
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
}

.close {
	color: #aaa;
	float: right;
	font-size: 28px;
	font-weight: bold;
	cursor: pointer;
}

.close:hover, .close:focus {
	color: black;
	text-decoration: none;
	cursor: pointer;
}

table {
	width: 100%;
	border-collapse: collapse;
}

td {
	padding: 8px;
	border-bottom: 1px solid #ddd;
}

/* 마지막 행의 버튼을 우측 정렬 */
td:last-child {
	text-align: right;
}

.alert {
	padding: 20px;
	background-color: #f8d7da;
	color: #721c24;
	margin-bottom: 15px;
	border-radius: 5px;
	display: none;
	border: 1px solid #f5c6cb;
}

/* 닫기 버튼 스타일 */
.closebtn {
	margin-left: 15px;
	color: #721c24;
	font-weight: bold;
	float: right;
	font-size: 22px;
	line-height: 20px;
	cursor: pointer;
	transition: 0.3s;
}

.closebtn:hover {
	color: #f44336;
}
</style>

</head>

<body class="g-sidenav-show  bg-gray-200">
	<aside
		class="sidenav navbar navbar-vertical navbar-expand-xs border-0 border-radius-xl my-3 fixed-start ms-3   bg-gradient-dark"
		id="sidenav-main">
		<div class="sidenav-header">
			<i
				class="fas fa-times p-3 cursor-pointer text-white opacity-5 position-absolute end-0 top-0 d-none d-xl-none"
				aria-hidden="true" id="iconSidenav"></i> <a class="navbar-brand m-0"
				href="/"> <span class="ms-1 font-weight-bold text-white">디저트카페
					EatIt</span>
			</a>
		</div>
		<hr class="horizontal light mt-0 mb-2">
		<div class="collapse navbar-collapse  w-auto "
			id="sidenav-collapse-main">
			<ul class="navbar-nav" id="mn">
				<li class="nav-item"><a
					class="nav-link text-white active bg-gradient-primary" href="/">
						<span class="nav-link-text ms-1">메인</span>
				</a></li>
				<li class="nav-item"><a class="nav-link text-white"> <span
						class="nav-link-text ms-1">기준정보 관리</span>
				</a> <!-- 기준정보 관리 서브메뉴 -->
					<ul class="navbar-nav" id="sm">
						<li class="nav-item"><a class="nav-link text-white"
							href="${path}/masterdata/BomMain"> <span
								class="nav-link-text ms-1">BOM관리</span>
						</a></li>
						<li class="nav-item"><a class="nav-link text-white"
							href="${path}/masterdata/CostManagement"> <span
								class="nav-link-text ms-1">비용관리</span>
						</a></li>
						<li class="nav-item"><a class="nav-link text-white"
							href="${path}/masterdata/facilityInfo"> <span
								class="nav-link-text ms-1">설비정보관리</span>
						</a></li>
					</ul></li>
				<li class="nav-item"><a class="nav-link text-white "> <span
						class="nav-link-text ms-1">자재 관리</span>
				</a>

					<ul class="navbar-nav" id="sm">
						<li class="nav-item"><a class="nav-link text-white"
							href="${path}/submenu1.html"> <span
								class="nav-link-text ms-1">서브메뉴 1</span>
						</a></li>
						<li class="nav-item"><a class="nav-link text-white"
							href="${path}/submenu2.html"> <span
								class="nav-link-text ms-1">서브메뉴 2</span>
						</a></li>
						<li class="nav-item"><a class="nav-link text-white"
							href="${path}/submenu3.html"> <span
								class="nav-link-text ms-1">서브메뉴 3</span>
						</a></li>
					</ul></li>
				<li class="nav-item"><a class="nav-link text-white "> <span
						class="nav-link-text ms-1">설비&생산 관리</span>
				</a>
					<ul class="navbar-nav" id="sm">
						<li class="nav-item"><a class="nav-link text-white"
							href="${path}/submenu1.html"> <span
								class="nav-link-text ms-1">서브메뉴 1</span>
						</a></li>
						<li class="nav-item"><a class="nav-link text-white"
							href="${path}/submenu2.html"> <span
								class="nav-link-text ms-1">서브메뉴 2</span>
						</a></li>
						<li class="nav-item"><a class="nav-link text-white"
							href="${path}/submenu3.html"> <span
								class="nav-link-text ms-1">서브메뉴 3</span>
						</a></li>
					</ul></li>
				<li class="nav-item"><a class="nav-link text-white "> <span
						class="nav-link-text ms-1">창고 관리</span>
				</a>
					<ul class="navbar-nav" id="sm">
						<li class="nav-item"><a class="nav-link text-white"
							href="${path}/submenu1.html"> <span
								class="nav-link-text ms-1">서브메뉴 1</span>
						</a></li>
						<li class="nav-item"><a class="nav-link text-white"
							href="${path}/submenu2.html"> <span
								class="nav-link-text ms-1">서브메뉴 2</span>
						</a></li>
						<li class="nav-item"><a class="nav-link text-white"
							href="${path}/submenu3.html"> <span
								class="nav-link-text ms-1">서브메뉴 3</span>
						</a></li>
					</ul></li>
				<li class="nav-item"><a class="nav-link text-white "> <span
						class="nav-link-text ms-1">납품 관리</span>
				</a>
					<ul class="navbar-nav" id="sm">
						<li class="nav-item"><a class="nav-link text-white"
							href="${path}/submenu1.html"> <span
								class="nav-link-text ms-1">서브메뉴 1</span>
						</a></li>
						<li class="nav-item"><a class="nav-link text-white"
							href="${path}/submenu2.html"> <span
								class="nav-link-text ms-1">서브메뉴 2</span>
						</a></li>
						<li class="nav-item"><a class="nav-link text-white"
							href="${path}/submenu3.html"> <span
								class="nav-link-text ms-1">서브메뉴 3</span>
						</a></li>
					</ul></li>
				<li class="nav-item"><a class="nav-link text-white "> <span
						class="nav-link-text ms-1">인사 관리</span>
				</a>
					<ul class="navbar-nav" id="sm">
						<li class="nav-item"><a class="nav-link text-white"
							href="${path}/submenu1.html"> <span
								class="nav-link-text ms-1">서브메뉴 1</span>
						</a></li>
						<li class="nav-item"><a class="nav-link text-white"
							href="${path}/submenu2.html"> <span
								class="nav-link-text ms-1">서브메뉴 2</span>
						</a></li>
						<li class="nav-item"><a class="nav-link text-white"
							href="${path}/submenu3.html"> <span
								class="nav-link-text ms-1">서브메뉴 3</span>
						</a></li>
					</ul></li>
			</ul>
		</div>
	</aside>
	<main
		class="main-content position-relative max-height-vh-100 h-100 border-radius-lg ">

		<!-- Navbar -->
		<nav
			class="navbar navbar-main navbar-expand-lg px-0 mx-4 shadow-none border-radius-xl"
			id="navbarBlur" data-scroll="true">
			<div class="container-fluid py-1 px-3">
				<nav aria-label="breadcrumb">
					<h6 class="font-weight-bolder mb-0">원자재정보관리</h6>
				</nav>





				<div class="collapse navbar-collapse mt-sm-0 mt-2 me-md-0 me-sm-4"
					id="navbar">
					<div class="ms-md-auto pe-md-3 d-flex align-items-center"></div>

					<ul class="navbar-nav  justify-content-end">
						<li class="nav-item d-flex align-items-center"><span
							class="d-sm-inline d-none"><button onclick="openModal()"
									class="btn btn-dark">품목정보등록</button></span></li>
					</ul>
				</div>
			</div>



			<div class="collapse navbar-collapse mt-sm-0 mt-2 me-md-0 me-sm-4"
				id="navbar">
				<div class="ms-md-auto pe-md-3 d-flex align-items-center"></div>

				<ul class="navbar-nav  justify-content-end">
					<li class="nav-item d-flex align-items-center"><a
						href="<%=request.getContextPath()%>pages/sign-in.html"
						class="nav-link text-body font-weight-bold px-0"> <i
							class="fa fa-user me-sm-1"></i> <span class="d-sm-inline d-none">Login</span>
					</a></li>
				</ul>
			</div>
			</div>

		</nav>
		<!-- End Navbar -->


		<form action="/masterdata/search" method="GET">
			<input type="text" name="keyword" placeholder="검색어를 입력하세요">
			<button type="submit">검색</button>
		</form>
		<table id="productTable" border="1">
			<thead>
				<tr>
					<th>원자재정보번호</th>
					<th>원자재코드</th>
					<th>원자재이름</th>
					<th>품목카테고리(대)</th>
					<th>원자재카테고리(소)</th>
					<th>공급처번호</th>
					<th>단위</th>
					<th>매입 단가</th>
					<th>유통기한</th>
					
				</tr>
			</thead>

			<tbody id="productTableBody">
				<c:forEach items="${productList}" var="product">
					<tr>
						<td>${product.product_no}</td>
						<td>${product.product_code}</td>
						<td>${product.product_name}</td>
						<td>${product.product_category}</td>
						<td>${product.product_category_detail}</td>
						<td>${product.company_no}</td>
						<td>${product.product_unit}</td>
						<td>${product.product_price}</td>
						<td>${product.expiry_date}</td>
						
						<td>
							<button onclick="openEditModal(event)" class="btn btn-secondary">품목정보수정</button>

							<form action="/masterdata/PIMdelete" method="post">
								<input type="hidden" name="product_no"
									value="${product.product_no}"> <input type="hidden"
									name="product_code" value="${product.product_code}">
								<button type="submit" class="btn btn-dark">품목정보삭제</button>
							</form>
						</td>
					</tr>
				</c:forEach>
			</tbody>


		</table>

		<div class="box-footer clearfix">
			<ul class="pagination">
				<c:if test="${pageVO.prev }">
					<li class="page-item"><a class="page-link"
						href="/masterdata/MdListPage?page=${pageVO.startPage - 1 }"
						aria-label="Previous"> <span aria-hidden="true">«</span>
					</a></li>
				</c:if>

				<c:forEach var="i" begin="${pageVO.startPage }"
					end="${pageVO.endPage }" step="1">
					<li class="page-item ${pageVO.cri.page == i ? 'active' : '' }">
						<a class="page-link" href="/masterdata/MdListPage?page=${i }">${i }</a>
					</li>
				</c:forEach>

				<c:if test="${pageVO.next }">
					<li class="page-item"><a class="page-link"
						href="/masterdata/MdListPage?page=${pageVO.endPage + 1 }"
						aria-label="Next"> <span aria-hidden="true">»</span>
					</a></li>
				</c:if>
			</ul>
		</div>


		<div id="myModal" class="modal">
			<div class="modal-content">
				<span class="close" onclick="closeModal()">&times;</span>
				<form id="myForm" method="post" action="/masterdata/PIMinsert">
					<table>
						<tr>
							<td>품목코드 <input type="text" name="product_code"></td>


							<td>품목이름 <input type="text" name="product_name"></td>



							<td>품목카테고리 <select name="product_category_detail">
									<option value="케이크">케이크</option>
									<option value="쿠키">쿠키</option>
									<option value="커피">커피</option>
							</select></td>

							<td>거래처코드 <input type="text" name="company_no"></td>


							<td>단위 <select name="product_unit">



									<option value="g">g</option>
									<option value="m:">kg</option>
									<!-- 다른 단위들 추가 -->
							</select></td>


							<td>납품단가 <input type="text" name="product_price"></td>

							<td>유통기한 <input type="date" name="expiry_date"></td>



							<td>
								<button type="button" onclick="openRecipeInput()">레시피
									입력</button> <textarea name="recipe" id="recipeInput"
									class="fixed-size-textarea"></textarea>
							</td>




							<td colspan="2" style="text-align: right;"><input
								type="submit" value="등록"></td>
						</tr>
					</table>
				</form>
			</div>
		</div>
		<div id="editModal" class="modal">
			<div class="modal-content">
				<span class="close" onclick="closeEditModal()">&times;</span>
				<form id="editForm" method="post" action="/masterdata/PIMedit">
					<table>
						<tr>
							<td><input type="hidden" name="product_no"
								value="product_no"></td>
						</tr>
						<tr>
							<td>품목코드:</td>
							<td><input type="text" name="product_code"></td>
						</tr>
						<tr>
							<td>품목이름:</td>
							<td><input type="text" name="product_name"></td>
						</tr>
						<tr>
							<td>품목카테고리:</td>
							<td><input type="text" name="product_category_detail"></td>
						</tr>
						<tr>
							<td>거래처코드:</td>
							<td><input type="text" name="company_no"></td>
						</tr>
						<tr>
							<td>단위:</td>
							<td><input type="text" name="product_unit"></td>
						</tr>
						<tr>
							<td>납품단가:</td>
							<td><input type="text" name="product_price"></td>
						</tr>
						<tr>
							<td>유통기한:</td>
							<td><input type="date" name="expiry_date"></td>
						</tr>
						<tr>
							<td>레시피:</td>
							<td><textarea name="recipe" class="fixed-size-textarea"></textarea></td>
						</tr>

						<tr>
							<td colspan="2" style="text-align: right;"><input
								type="submit" value="수정"></td>
						</tr>
					</table>
				</form>
			</div>
		</div>
		
		<c:if test="${searchError}">
    <script>
    
    swal("검색 오류", "해당하는 검색어가 없습니다!", "error").then(function() {
        window.history.back(); // 이전 페이지로 이동
    });

    </script>
</c:if>
		
		

<script>
window.onload = function() {
    const urlParams = new URLSearchParams(window.location.search);
    const keyword = urlParams.get('keyword') || '';
    const cells = document.querySelectorAll("#productTableBody td"); // 모든 셀을 가져옴

    if (keyword) { // 검색어가 있는 경우에만 실행
        cells.forEach(cell => {
            const cellText = cell.textContent.toLowerCase(); // 셀의 텍스트를 소문자로 변환

            if (cellText.includes(keyword.toLowerCase())) { // 검색어를 포함하는 경우
                const newText = cellText.replace(new RegExp(keyword.toLowerCase(), 'g'), '<span style="background-color: gray; color: white;">' + keyword.toLowerCase() + '</span>');
                cell.innerHTML = newText;
            }
        });
    }
};


</script>



		<script>
    document.addEventListener('DOMContentLoaded', () => {
        const deleteForms = document.querySelectorAll('form[action="/masterdata/PIMdelete"]');

        deleteForms.forEach(form => {
            form.addEventListener('submit', function(event) {
                event.preventDefault(); // 기본 제출 동작 막기

                const product_no = this.querySelector('input[name="product_no"]').value;

                swal({
                    title: '품목정보 삭제',
                    text: '정말 삭제하시겠습니까?',
                    icon: 'warning',
                    buttons: true,
                    dangerMode: true,
                }).then((willDelete) => {
                    if (willDelete) {
                        swal('삭제 성공', '삭제가 완료되었습니다', 'info').then(() => {
                            this.submit(); // 확인 시 폼 제출
                        });
                    } else {
                        swal('삭제 취소', '삭제가 취소되었습니다.', 'info');
                    }
                });

            });
        });
    });
</script>

		<script>
    function openRecipeInput() {
        // 입력을 위한 텍스트 창 보이기
        const recipeInput = document.getElementById('recipeInput');
        const userInput = prompt('레시피를 입력하세요:');
        
        // 사용자가 입력한 레시피를 텍스트 창에 설정
        if (userInput !== null) {
            recipeInput.value = userInput;
        }
    }
</script>



		<script>
    function openModal() {
        document.getElementById("myModal").style.display = "block";
    }

    function closeModal() {
        document.getElementById("myModal").style.display = "none";
        
    }

   
    function openEditModal(event) {
        // 수정 버튼이 속한 <tr> 요소를 찾습니다.
        const selectedRow = event.target.closest('tr');

        // 각 셀의 데이터를 가져와 변수에 저장합니다.
        const productNo = selectedRow.cells[0].innerText;
        const productCode = selectedRow.cells[1].innerText;
        const productName = selectedRow.cells[2].innerText;
        const productCategory = selectedRow.cells[3].innerText;
        const productCategoryDetail = selectedRow.cells[4].innerText;
        const companyNo = selectedRow.cells[5].innerText;
        const productUnit = selectedRow.cells[6].innerText;
        const productPrice = selectedRow.cells[7].innerText;
        const expiryDate = selectedRow.cells[8].innerText;
        const recipe = selectedRow.cells[9].innerText;

        // 가져온 데이터를 수정 모달에 넣어줍니다.
        document.getElementById("editModal").style.display = "block";
        document.querySelector('#editForm [name="product_no"]').value = productNo;
        document.querySelector('#editForm [name="product_code"]').value = productCode;
        document.querySelector('#editForm [name="product_name"]').value = productName;
        document.querySelector('#editForm [name="product_category_detail"]').value = productCategoryDetail;
        document.querySelector('#editForm [name="company_no"]').value = companyNo;
        document.querySelector('#editForm [name="product_unit"]').value = productUnit;
        document.querySelector('#editForm [name="product_price"]').value = productPrice;
        document.querySelector('#editForm [name="expiry_date"]').value = expiryDate;        
        document.querySelector('#editForm [name="recipe"]').value = recipe;
        
       
        
    }
    function closeEditModal() {
        document.getElementById("editModal").style.display = "none";
        
    }
    function validateForm(formId) {
        const form = document.getElementById(formId);
        const inputs = form.getElementsByTagName('input');

        for (let i = 0; i < inputs.length; i++) {
            if (inputs[i].value.trim() === '') {
                
                return false;
            }
        }
        return true;
    }

    document.getElementById('myForm').addEventListener('submit', function (event) {
    	 event.preventDefault(); // 기본 제출 동작 방지

 	    if (!validateForm('myForm')) {
 	        // 폼이 유효하지 않은 경우
 	        swal('입력하지 않은 칸이 있습니다!', '', 'warning');
 	        return;
 	    }

 	    // 유효한 경우 SweetAlert로 사용자에게 확인 요청
 	    swal({
 	        title: '품목정보 등록',
 	        text: '정말 등록하시겠습니까? 한 번 더 정보를 확인해 주세요',
 	        icon: 'info',
 	        buttons: true,
 	        dangerMode: false,
 	    })
 	    .then((willSubmit) => {
 	        if (willSubmit) {
 	            swal('등록이 성공적으로 완료됐습니다!', '', 'success')
 	            .then(() => {
 	                event.target.submit(); // 확인을 누르면 submit 실행
 	            });
 	        } else {
 	            swal('등록 취소', '등록이 취소되었습니다.', 'info');
 	        }
 	    });
    });

    document.getElementById('editForm').addEventListener('submit', function (event) {
    	 event.preventDefault(); // 기본 제출 동작 방지

    	    if (!validateForm('editForm')) {
    	        // 폼이 유효하지 않은 경우
    	        swal('입력하지 않은 칸이 있습니다!', '', 'warning');
    	        return;
    	    }

    	    // 유효한 경우 SweetAlert로 사용자에게 확인 요청
    	    swal({
    	        title: '품목정보 수정',
    	        text: '정말 수정하시겠습니까? 한 번 더 정보를 확인해 주세요',
    	        icon: 'info',
    	        buttons: true,
    	        dangerMode: false,
    	    })
    	    .then((willSubmit) => {
    	        if (willSubmit) {
    	            swal('수정이 성공적으로 완료됐습니다!', '', 'success')
    	            .then(() => {
    	                event.target.submit(); // 확인을 누르면 submit 실행
    	            });
    	        } else {
    	            swal('수정 취소', '수정이 취소되었습니다.', 'info');
    	        }
    	    });
    });
   
    
    
</script>
		<footer class="footer py-4  ">
			<div class="container-fluid">
				<div class="row align-items-center justify-content-lg-between">
					<div class="col-lg-6 mb-lg-0 mb-4">
						<div
							class="copyright text-center text-sm text-muted text-lg-start">
							©
							<script>
                  document.write(new Date().getFullYear())
                </script>
							, 항상 여러분 곁에는 <a href="${path}/main" class="font-weight-bold">EatIt</a>
							<i class="fa fa-heart"></i> 이 함께합니다.
						</div>
					</div>
				</div>
			</div>
		</footer>

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