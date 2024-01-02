<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ include file="../include/header.jsp"%>

    <!-- Page Content -->
    <div class="container-fluid">
        <!-- Header Section -->
        <div class="d-flex align-items-center p-3 my-3 text-white-50 bg-purple rounded shadow-sm">
            <div class="lh-100">
                <h6 class="mb-0 text-white lh-100">발주 내역</h6>
                <small>Since 2021</small>
            </div>
        </div>

        <!-- Search and Add Section -->
        <div class="my-3 p-3 bg-white rounded shadow-sm">
            <h6 class="border-bottom border-gray pb-2 mb-0">자재 검색</h6>
            <div class="media text-muted pt-3">
                <input type="text" class="form-control" id="searchField" placeholder="자재명을 입력하세요...">
                <button class="btn btn-primary" onclick="searchMaterials()">검색</button>
            </div>
            <button class="btn bg-gradient-dark mt-3" onclick="openAddForm()">발주서 작성하기</button>
        </div>

        <!-- Materials Table -->
        <div class="my-3 p-3 bg-white rounded shadow-sm">
            <h6 class="border-bottom border-gray pb-2 mb-0">자재 목록</h6>
            <div class="table-responsive">
                <table class="table table-bordered table-hover">
                    <thead>
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">자재코드</th>
                            <th scope="col">자재명</th>
                            <th scope="col">거래처코드</th>
                            <th scope="col">매입단가</th>
                            <th scope="col">수량</th>
                            <th scope="col">단위</th>
                            <th scope="col">비고</th>
                            <th scope="col">관리</th>
                        </tr>
                    </thead>
                    <tbody id="materialList">
                    <tr>
                    <th scope="row">${index + 1}</th>
                    <td>${material.materialCode}</td>
                    <td>${material.materialName}</td>
                    <td>${material.vendorCode}</td>
                    <td>${material.purchasePrice}</td>
                    <td>${material.quantity}</td>
                    <td>${material.unit}</td>
                    <td>${material.remark || ''}</td>
                    <td>
                        <button onclick="openUpdate('${material.id}')">수정</button>
                        <button onclick="confirmDelete('${material.id}')">삭제</button>
                    </td>
                </tr>

                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <!-- Javascript Section -->
<%@ include file="../include/footer.jsp"%>
<%@ include file="../include/js.jsp"%>
    <script>
        $(document).ready(function () {
            loadMaterials();
        });

        function loadMaterials() {
            // AJAX 요청을 사용하여 서버에서 자재 목록을 가져옴
            $.ajax({
                url: '/api/materials',
                type: 'GET',
                dataType: 'json',
                success: function(materials) {
                    var materialList = $('#materialList');
                    materialList.empty(); // 목록 초기화
                    materials.forEach(function(material) {
                        materialList.append('<tr>' + 
                            '<td><input type="checkbox" name="material" value="' + material.id + '"></td>' +
                            '<td>' + material.code + '</td>' +
                            '<td>' + material.name + '</td>' +
                            '<td>' + material.supplierCode + '</td>' +
                            '<td>' + material.purchasePrice + '</td>' +
                            '<td>' + material.quantity + '</td>' +
                            '<td>' + material.unit + '</td>' +
                            '<td>' + (material.remark || '') + '</td>' +
                            '<td><button onclick="openUpdate(' + material.id + ')">수정</button>' +
                            '<button onclick="confirmDelete(' + material.id + ')">삭제</button></td>' +
                            '</tr>');
                    });
                },
                error: function(error) {
                    console.error("Error loading materials: ", error);
                }
            });
        }

     // 자재 검색 기능을 구현합니다.
        function searchMaterials() {
            var searchField = $('#searchField').val(); // 검색 필드에서 값을 가져옵니다.

            // AJAX 요청을 사용하여 서버에서 필터링된 자재 목록을 가져옵니다.
            $.ajax({
                url: '/api/materials/search', // 필터링된 자재 목록을 제공하는 서버의 API 엔드포인트
                type: 'GET',
                data: { 'query': searchField }, // 검색 필드를 쿼리 파라미터로 전달합니다.
                dataType: 'json',
                success: function(materials) {
                    // 가져온 자재 목록으로 테이블 내용을 구성합니다.
                    var materialList = $('#materialList');
                    materialList.empty(); // 기존 목록을 초기화합니다.

                    // 가져온 자재 데이터를 이용하여 테이블 로우를 생성합니다.
                    materials.forEach(function(material, index) {
                        var row = `<tr>
                            <th scope="row">${index + 1}</th>
                            <td>${material.materialCode}</td>
                            <td>${material.materialName}</td>
                            <td>${material.vendorCode}</td>
                            <td>${material.purchasePrice}</td>
                            <td>${material.quantity}</td>
                            <td>${material.unit}</td>
                            <td>${material.remark || ''}</td>
                            <td>
                                <button onclick="openUpdate('${material.id}')">수정</button>
                                <button onclick="confirmDelete('${material.id}')">삭제</button>
                            </td>
                        </tr>`;
                        materialList.append(row); // 생성한 로우를 tbody에 추가합니다.
                    });
                },
                error: function(error) {
                    // 오류 처리
                    console.error("자재 목록을 불러오는 데 실패했습니다:", error);
                    // 적절한 사용자 피드백을 제공합니다.
                }
            });
        }

        // 새 자재 추가 폼을 여는 기능을 구현합니다.
        function openAddForm() {
            // 새 자재 추가 폼을 열기 위한 로직을 구현합니다.
            // 예를 들어, 새 자재 추가 페이지로 리다이렉트하거나 모달 폼을 표시할 수 있습니다.
            window.location.href = '/materials/add';
        }

        // 자재 수정 폼을 여는 기능을 구현합니다.
        function openUpdate(materialId) {
            // 자재 수정 폼을 열기 위한 로직을 구현합니다.
            // 예를 들어, 자재 수정 페이지로 리다이렉트하거나 모달 폼을 표시할 수 있습니다.
            window.location.href = `/materials/update/${materialId}`;
        }

        // 자재 삭제를 확인하고 처리하는 기능을 구현합니다.
        function confirmDelete(materialId) {
            if (confirm("Are you sure you want to delete this material?")) {
                // AJAX DELETE 요청을 사용하여 서버에서 자재를 삭제합니다.
                $.ajax({
                    url: `/api/materials/${materialId}`, // 자재 삭제 API 엔드포인트
                    type: 'DELETE',
                    success: function(result) {
                        // 성공적으로 삭제되었을 때 사용자에게 알림
                        alert("Material deleted successfully!");
                        // 자재 목록을 다시 로드
                        loadMaterials();
                    },
                    error: function(error) {
                        // 오류 처리
                        console.error("자재를 삭제하는 데 실패했습니다:", error);
                        // 적절한 사용자 피드백을 제공합니다.
                        alert("Failed to delete material!");
                    }
                });
            }
        }

    </script>

