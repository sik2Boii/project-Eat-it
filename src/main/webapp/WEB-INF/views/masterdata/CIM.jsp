<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="../include/header.jsp"%>

<!-- 본문 시작 -->
<div class="col-12">
	<div class="card my-4 mx-4">
		<div class="card-header position-relative p-0 mt-n4 mx-3 z-index-2">
			<div
				class="bg-gradient-primary shadow-primary border-radius-lg py-3 pe-3 d-flex align-items-center">
				<h3 class="text-white text-capitalize ps-5 my-2 py-1">소요량 정보 관리</h3>
				<form action="/masterdata/search"
					class="ms-md-auto bg-white rounded p-2 mb-0 d-flex align-items-center"
					method="GET">
					<div class="align-items-center d-flex flex-column mx-1">
						<div class="input-group input-group-outline">
							<label class="form-label">검색어</label>
							<input type="text" name="keyword" class="form-control" value="${keyword }">
						</div>
					</div>
					<div class="align-items-center d-flex flex-column py-1 ct-example">
						<button type="submit" id="searchbtn" class="btn btn-outline-primary mb-0 py-2 mx-1 fs-6">
							검색
						</button>
					</div>
				</form>
			</div>
		</div>

		<div class="card-body mx-5 px-0 pb-4">
			<div class="p-0">
				<table id="required_table"
					class="table table-hover align-items-center mb-0">
					<thead>
						<tr>
							<th class="text-center py-3 font-weight-bolder col-2">품목정보번호</th>
							<th class="text-center font-weight-bolder col-1">품목코드</th>
							<th class="text-center font-weight-bolder col-1">품목이름</th>
							<th class="text-center font-weight-bolder col-1">대분류</th>
							<th class="text-center font-weight-bolder col-3">소분류</th>
							<th class="text-center font-weight-bolder col-2">거래처</th>
							<th class="text-center font-weight-bolder col-3">단위</th>
							<th class="text-center font-weight-bolder col-3">납품 단가</th>
							<th class="text-center font-weight-bolder col-3">레시피</th>
							<th class="text-center font-weight-bolder col-1">
								<ul class="navbar-nav  justify-content-end">
									<li class="nav-item d-flex align-items-center">
										<span class="d-sm-inline d-none">
											<button onclick="openModal()" class="btn btn-dark">
												소요량정보등록
											</button>
										</span>
									</li>
								</ul>
							</th>
						</tr>
					</thead>
					<tbody id="productTableBody">
						<c:forEach var="product" items="${CIMList}">
							<tr>
								<td class="text-center py-2-3 identify-no">${product.product_no}</td>
								<td class="text-center py-2-3">${product.code}</td>
								<td class="text-center py-2-3">${product.name}</td>
								<td class="text-center py-2-3">${product.category}</td>
								<td class="text-center py-2-3">${product.category_detail}</td>
								<td class="text-center py-2-3">${product.company_no}</td>
								<td class="text-center py-2-3">${product.unit}</td>
								<td class="text-center py-2-3">${product.price}</td>								
								<td class="text-center py-2-3">${product.recipe}</td>
								<td class="text-center py-2-3">
									<form action="/masterdata/CIMdelete" method="post">
										<input type="hidden" name="product_no" value="${product.product_no}">
										<input type="hidden" name="code" value="${product.code}">
										<button type="submit" class="btn btn-dark">소요량정보삭제</button>
									</form>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-5">
				<div class="ms-6"></div>
			</div>
			<div class="col-sm-5 mb-3">
				<ul class="pagination">
					<c:if test="${pageVO.prev}">
						<li class="page-link link-container"><a
							href="javascript:void(0);"
							onclick="goToPageWithKeyword(${pageVO.startPage - 1})"
							class="page-link rounded fw-bolder${pageVO.cri.page == pageVO.startPage - 1 ? ' link-white' : ''}"><<</a></li>
					</c:if>
					<c:forEach var="i" begin="${pageVO.startPage}"
						end="${pageVO.endPage}" step="1">
						<c:if test="${i <= pageVO.totalCount / pageVO.cri.pageSize + 1}">
							<li
								${pageVO.cri.page == i ? 'class="link-container active"' : 'class="link-container"'}>
								<a href="javascript:void(0);"
								onclick="goToPageWithKeyword(${i})"
								class="page-link rounded fw-bolder${pageVO.cri.page == i ? ' link-white' : ''}">${i}</a>
							</li>
						</c:if>
					</c:forEach>
					<c:if test="${pageVO.next}">
						<li class="page-link link-container"><a
							href="javascript:void(0);"
							onclick="goToPageWithKeyword(${pageVO.endPage + 1})"
							class="page-link rounded fw-bolder${pageVO.cri.page == pageVO.endPage + 1 ? ' link-white' : ''}">>></a></li>
					</c:if>
				</ul>
			</div>
		</div>
	</div>
</div>
<!-- 본문 종료 -->

<%@ include file="../include/footer.jsp"%>
<%@ include file="../include/js.jsp"%>

<div id="editModal" class="modal">
	<div class="modal-dialog" style="max-width:800">
		<div class="modal-content">
			<div class="modal-header py-4">
				<button id="closebtn"
					class="btn bg-gradient-primary position-absolute py-1 px-2 mt-2 end-5"
					onclick="closeEditModal()">X</button>
				<h3 class="modal-title mx-auto">소요량정보 수정</h3>
			</div>
			<div class="modal-body p-5">
				<div id="tableContainer" class="modal-body">
					<form id="editForm" method="post" action="/masterdata/PIMedit" class="d-flex">
						<table class="table me-3">
							<tbody>
								<tr>
									<th class="fs-5 py-3">품목코드</th>
									<td class="fs-5 ps-5">
										<input type="text" id="code_forEdit" name="code" class="form-control" readonly="readonly">
										<input type="hidden" id="product_no_forEdit" name="product_no" value="product_no">
									</td>
								</tr>
								<tr>
									<th class="fs-5 py-3">품목명</th>
									<td class="fs-5 ps-5">
										<input type="text" id="name_forEdit" name="name" class="form-control" readonly="readonly">
									</td>
								</tr>
								<tr>
									<th class="fs-5 py-3">대분류</th>
									<td class="fs-5 ps-5">
										<input type="text" id="category_forEdit" name="category" class="form-control" readonly="readonly">
									</td>
								</tr>
								<tr>
									<th class="fs-5 py-3">소분류</th>
									<td class="fs-5 ps-5">
										<input type="text" id="category_detail_forEdit" name="category_detail" class="form-control" readonly="readonly">
									</td>
								</tr>
								<tr>
									<th class="fs-5 py-3">거래처</th>
									<td class="fs-5 ps-5">
										<input type="text" id="company_no_forEdit" name="company_no" class="form-control" readonly="readonly">
									</td>
								</tr>
								<tr>
									<th class="fs-5 py-3">단위</th>
									<td class="fs-5 ps-5"> 
										<input type="text" id="unit_forEdit" name="unit" class="form-control" readonly="readonly">
									</td>
								</tr>
								<tr>
									<th class="fs-5 py-3">단위량</th>
									<td class="fs-5 ps-5"> 
										<input type="text" id="unit_quantity_forEdit" name="unit_quantity" class="form-control" readonly="readonly">
									</td>
								</tr>
								<tr>
									<th class="fs-5 py-3">단위단가</th>
									<td class="fs-5 ps-5">
										<input type="text" id="price_forEdit" name="price" class="form-control" readonly="readonly">
									</td>
								</tr>
							</tbody>
						</table>
						<table id="view-table" class="table h-25 ms-3">
							<tbody>								
								<tr class="row">
									<th class="fs-5 text-center col" colspan="2">레시피</th>
								</tr>
								<tr class="row">									
									<th class="fs-6 text-center col">
										자재명
									</th>
									<th class="fs-6 text-center col">
										소요량
									</th>
								</tr>
								<tr class="row">
									<td class="col w-50">
										<select class="w-100">
											<option>표시용 데이터</option>
										</select>
									</td>
									<td class="col w-50">
										<input type="text" class="w-100">
									</td>
								</tr>
							</tbody>
						</table>
					</form>					
					<div class="text-center">
						<button id="editbtn"
							class="btn bg-gradient-danger fs-6 mb-0 py-2 px-3" type="submit">소요량정보
							수정</button>
					</div>
				</div>
			</div>
		</div>
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
function goToPageWithKeyword(page) {
    var keyword = new URLSearchParams(window.location.search).get('keyword');
    var currentUrl = window.location.href;
    var urlWithoutParams = currentUrl.split('?')[0];

    var url = urlWithoutParams + '?page=' + page;

    if (keyword) {
        url += '&keyword=' + keyword;
    }

    window.location.href = url;
}
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
$(document).ready(function() {    
	$("#required_table").on("click", "tr td", function(event) {
        var value = $(this).closest("tr").find("td.identify-no").text();
        $.ajax({
            url: '/masterdata/cimContent?product_no='+value,
			method : 'GET',
			dataType: 'json',
			success : function(data) { 
				$("#product_no_forEdit").val(data.product_no);
				$("#code_forEdit").val(data.code);
				$("#name_forEdit").val(data.name);
				$("#category_forEdit").val(data.category);
				$("#category_detail_forEdit").val(data.category_detail);
				$("#company_no_forEdit").val(data.company_no);
				$("#unit_forEdit").val(data.unit);
				$("#unit_quantity_forEdit").val(data.unit_quantity);
				$("#price_forEdit").val(data.price);
			    document.getElementById("editModal").style.display = "block";
			},
			error : function(error) {
				console.log('실패:', error);
			}
		});
    });
});

/*     function openEditModal(event) {
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
    } */
    
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
