<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<%@ include file="../include/header.jsp" %>
<style>
/* 모달 스타일 */
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
	width: 50%;
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
}

.close {
	color: #aaa;
	float: right;
	font-size: 28px;
	font-weight: bold;
	cursor: pointer;
	position: absolute;
	right: 20px;
	top: 20px;
}

.close:hover, .close:focus {
	color: black;
	text-decoration: none;
	cursor: pointer;
}
}
#machine_info {
	margin-top: 50px;
}
</style>
<!-- 시작 -->
<div class="col-11 mx-auto">
	<div class="card my-3 mx-auto pt-5 px-6 pb-2">
		<div class="card-header p-0 position-relative mx-3 ">
			<div class="bg-gradient-primary shadow-primary border-radius-lg pt-3 pb-3 pe-3 d-flex">
				<h3 class="text-white text-capitalize ps-5 align-items-center mb-0 py-1">설비 관리</h3>
				<div class="ms-md-auto bg-white rounded p-2 d-flex align-items-center">
					<div class="align-items-center d-flex flex-column">
						<div class="input-group input-group-outline">
							<label class="form-label">검색어</label>
							<input type="text" id="searchword" name="searchword" class="form-control" value="${param.searchword }">
						</div>
					</div>
					<div class="align-items-center d-flex flex-column py-1">
						<button id="searchbtn" class="btn btn-outline-primary btn-sm mb-0 py-1 ms-2">검색</button>
					</div>
				</div>
			</div>
		</div>		
	
		<div class="card-body mx-5 px-0 pb-4">
			<div class="table-responsive p-0">
				<table id="hr-table" class="table table-hover align-items-center mb-0">
					<thead>
						<tr>
							<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2"><input type="checkbox"></th>
							<th class="text-center font-weight-bolder col-2">설비 코드</th>
							<th class="text-center font-weight-bolder col-1">설비 상태</th>
							<th class="text-center font-weight-bolder col-2">관리자</th>
							<th class="text-center font-weight-bolder col-2">작동 목적</th>
							<th class="text-center font-weight-bolder col-3">설비 설치일</th>
							<th class="text-center font-weight-bolder col-3">설비 위치</th>
						</tr>
					</thead>
	 				<tbody id="employeeTableBody">
						<c:forEach var="ml" items="${machinelist}">
							<tr class="mllist">
								<td class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2 py-3"><input type="checkbox"></td>
								<td class="text-center">${ml.machine_name}_${ml.machine_code}</td>
								<td class="text-center"><span class="badge badge-sm bg-gradient-success">${ml.machine_status}</span></td>
								<td class="text-center">${ml.name}</td>
								<td class="text-center">${ml.purpose_of_use}</td>
								<td class="text-center">${ml.installation_date}</td>
								<td class="text-center">${ml.machine_location}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>

		<div class="col-6 w-100 text-end">
		<a class="btn bg-gradient-dark mb-0" onclick="openModal()"><i class="material-icons text-sm"></i>&nbsp;&nbsp;설비 추가</a>
		<a class="btn bg-gradient-dark mb-0" onclick=""><i class="material-icons text-sm"></i>&nbsp;&nbsp;설비 삭제</a>
		</div>
</div>
</div>
<!-- 끝 -->




	<div id="myModal" class="modal top-10 position-absolute">
	<div class="modal-dialog">
		<div class="modal-content">
			<span class="close" onclick="closeModal()">&times;</span>
			<form id="myForm" method="post">
				<table border="1">
					<tr>
						<th>설치 장비</th>
						<th>작업자</th>
						<th>설비 설치일</th>
						<th>설비 위치</th>
					</tr>
					<tr>
						<td><select id="machine_name" name="machine_name" onchange="updateMachineCode()" required>
								<option value="선택">--선택하세요--</option>
								<option value="Dough">반죽</option>
								<option value="Topping">토핑</option>
								<option value="Oven">오븐</option>
								<option value="Packaging">포장</option>
							</select></td>
						<td><input type="text" id="employee_no" name="employee_no" required>
							<input type="hidden" id="machine_code" name="machine_code" value="${code }">
						</td>
						<td><input type="text" id="installation_date" name="installation_date"></td>
						<td><select id="machine_location" name="machine_location">
								<option value="선택">--선택하세요--</option>
								<option value="A">A</option>
								<option value="B">B</option>
								<option value="C">C</option>
								<option value="D">D</option>
						</select></td>
					</tr>
				</table>

				<input type="submit" value="등록"> <input type="button" onclick="closeModal()" value="취소">
			</form>
		</div>
	</div>
</div>

	<!-- 설비 상세보기 -->
	<div id="Modal" class="modal top-10 position-absolute">
	<div class="modal-dialog">
		<div class="modal-content w-100">
			<div class="modal-header">
				<button id="closebtn" class="btn bg-gradient-primary position-absolute py-1 px-2 mt-2 end-5" onclick="closeModal()">X</button>
				<h3 class="modal-title mx-auto">설비 정보</h3>
			</div>
			<div class="modal-body p-5">
				<div class="user-container d-flex align-items-center">
					<div class="user-info d-flex w-100">
						<table class="table">
							<tr>
								<th class="fs-5 w-50">설비 코드</th>
								<td class="fs-5 w-50" id="namecode">
								</td>
								<td class="fs-5 w-50" id="machineno" ></td>
								
									
							</tr>
							<tr>
								<th class="fs-5">점검일</th>
								<td class="fs-5" id="lastchecktime"></td>
							</tr>
							<tr>
								<th class="fs-5">최종 작동</th>
								<td class="fs-5" id="lastoperatingtime"></td>
							</tr>
						</table>
					</div>
				</div>
				<div id="tableContainer">
					<table id="view-table" class="table">
						<tr>
							<th class="fs-5 w-50">설비 상태</th>
							<td class="fs-5 w-50" id="status"></td>
						</tr>
						<tr>
							<th class="fs-5">관리자</th>
							<td class="fs-5" id="employeename"></td>
						</tr>
						<tr>
							<th class="fs-5">위치</th>
							<td class="fs-5" id="machinelocation"></td>
						</tr>
					</table>
					
					<form action="/machine/machineupdate" id="edit-form" method="post">
						<input type="hidden" name="employeeno" id="employee_no-forSubmit">
						<input type="hidden" name="searchword" id="searchword-forSubmit">
						<table id="edit-table" class="d-none table">
					    	<tr>
								<th class="fs-5">설비 상태</th>
								<td class="fs-6">
									<select name="status" id="machine_status">
										<option value="점검중">점검중</option>
										<option value="수리중">수리중</option>
										<option value="고장">고장</option>
										<option value="설치중">설치중</option>
									</select>
								</td>
							</tr>
							<tr>
								<th class="fs-5">관리자</th>
								<td class="fs-6">
									<input type="text" name="employeename" id="name">
									<input type="hidden" name="machineno" id="codemachine">
								</td>
							</tr>
							<tr>
								<th class="fs-5">위치</th>
								<td class="fs-6">
								<select name="machinelocation" id="machine_location">  
								<option value="A">A</option>
								<option value="B">B</option>
								<option value="C">C</option>
								<option value="D">D</option>
								</select></td>
							</tr>
					  	</table>
				  	</form>
				</div>
				<div class="text-center">
					<button id="editbtn" class="btn bg-gradient-danger fs-6 mb-0 py-2 px-3">수정</button>
				</div>
			</div>
		</div>
	</div>
</div>
<%@ include file="../include/footer.jsp" %>
<%@ include file="../include/js.jsp" %>
<script>

$(document).ready(function () {
	
	
	
    $("#hr-table").on("click", "tr", function () {
        // 추출한 machine_code
        var machineCode = $(this).find("td:eq(1)").text().match(/\d+/);

        $.ajax({
            url: '/machine/machineinfo?machine_code=' + machineCode, 
            method: 'GET',
            data: { machineCode: machineCode ? parseInt(machineCode[0]) : 0 },
            dataType: 'json',
            success: function (data) {
                // infolist의 각 항목을 순회
                for (var i = 0; i < data.infolist.length; i++) {
                    var historyData = data.infolist[i];
                }
                
                // 서버에서 받은 데이터를 사용하여 모달에 표시
                var namecode = data.machine_name + "_" + historyData.machine_code;
                $("#namecode").text(namecode);
                $("#code").text(historyData.machine_code);
                $("#name").text(data.machine_name);
                $("#status").text(data.machine_status);
                $("#employeename").text(data.name);
                $("#machineno").val(historyData.machine_code);
                // formatDate 함수를 AJAX 내부에 직접 정의
                function formatDate(dateString) {
                    var formattedDate = dateString.replace(/(\d+)월 (\d+), (\d+)/, '$3-$1-$2');
                    return formattedDate;
                }
                // formatDate 함수를 사용하여 날짜 형식 변환
                $("#lastchecktime").text(formatDate(historyData.check_time));
                $("#lastoperatingtime").text(formatDate(historyData.operating_time));
                $("#installationdate").text(formatDate(data.installation_date));
                $("#machinelocation").text(data.machine_location);
				
                console.log(data);
                // 모달 열기
                document.getElementById("Modal").style.display = "block";
            },
            error: function (error) {
                console.log('실패:', error);
            }
        });
    });


	$("#editbtn").click(function(){
		if ($("#edit-table").hasClass("d-none")) {
			$("#editbtn").text("수정 완료");
			toggleTable();
		    getEditInfo();
		} else {
			swal({
				  title: "수정하시겠습니까?",
				  text: "수정 중 입니다.",
				  icon: "warning",
				  buttons: true,
				  dangerMode: true,
				})
				.then((willDelete) => {
				  if (willDelete) {
					swal("수정 완료 되었습니다!", {icon: "success"}).then(function(){
						if($("#searchword").val()){
							$("#searchword-forSubmit").val($("#searchword").val());
						}							
						$("#edit-form").submit();                
					});							
				  } else {
				    swal("수정 취소했습니다!");
				  }
			});		    
		}		    
});
$(window).click(function(event){
	var modal = document.getElementById("Modal");
	if (event.target == modal) {
		modal.style.display = "none";
		location.reload();
	}
	
	if (!$(event.target).closest('.input-group').length) {
		if (!$("#searchword").val()) {
       		$(".input-group").removeClass("focused is-focused");
		}
    }
});		

$(".input-group").click(function(){
	$(this).addClass("focused is-focused");
});
});	
		function toggleTable(){
			$("#view-table").toggleClass("d-none");
  		    $("#edit-table").toggleClass("d-none");			
				}

		function getEditInfo() {
 		 $("#machine_status").val($("#status").text());
 		 $("#machine_location").val($("#machinelocation").text());
 		 $("#name").val($("#employeename").text());
 		 $("#codemachine").val($("#machineno").val());
	}

		

		function openModal() {
			document.getElementById("myModal").style.display = "block";
			var today = new Date();
			var dd = String(today.getDate()).padStart(2, '0');
			var mm = String(today.getMonth() + 1).padStart(2, '0');
			var yyyy = today.getFullYear();
			today = yyyy + '-' + mm + '-' + dd;
			document.getElementById("installation_date").value = today;
		}

		function closeModal() {
			document.getElementById("myModal").style.display = "none";
			document.getElementById("Modal").style.display = "none";
			
			location.reload();
		}

		window.onclick = function(event) {
			var modal = document.getElementById('myModal');
			var modal2 = document.getElementById('MachinModal');
			if (event.target == modal) {
				closeModal();
			}
			if (event.target == modal2) {
				closeModal();
			}
		}
		
		function getSelected(id) {
			var optionToSelect = $(id+"-select option").filter(function() {
				return $(this).text().indexOf($(id).text()) !== -1;
			});
			
			if (optionToSelect.length > 0) {
			    optionToSelect.prop("selected", true);
		    }
		}	
		    
		
		
		
	</script>

</html>