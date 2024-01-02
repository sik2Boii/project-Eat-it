<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ include file="../include/header.jsp"%>

    <main class="main-content mt-0">
        <!-- Page content -->
        <div class="container-fluid px-4">
            <h1 class="mt-4">원자재 재고 입고</h1>
            <div class="card mb-4">
                <div class="card-header">
                    <!-- 검색 기능 -->
                    <div class="cardHeaderFirstLine">
                        <select id="category">
                            <option value="stock_code">코드</option>
                            <option value="raw_name">품명</option>
                            <!-- 기타 옵션 -->
                        </select>
                        <input type="text" name="content" size="60" placeholder="검색어를 입력하세요" id="content">
                        <input type="button" name="search" value="조회" onclick="stockSearch()">
                        <input type="button" name="allList" value="전체목록" onclick="location.reload();">
                        <button id="exportBtn" class="btn btn-warning">자재 출고</button>
						</div>
                        <!-- 기타 버튼 -->
                    </div>             
                </div>  
                <div class="card-body">
                    <!-- 테이블 뷰 -->
                    <div class="card-body">
    <table id="datatablesSimple">
        <thead>
            <tr>
                <th><input type="checkbox" name="selectedAll" disabled></th>
                <th>코드</th>
                <th>원자재 이름</th>
                <th>종류</th>
                <th>수량</th>
                <th>실수량</th>
                <th>창고 코드</th>
                <th>담당자</th>
                <th>확인 날짜</th>
            </tr>
        </thead>
        <tbody id="tableBody">
        
                              </tbody>
                    </table>
                </div>
            </div>
        </div>
    </main>
                            <script type="text/javascript">
    // 서버에서 데이터를 가져와 테이블에 삽입하는 함수
    function fetchData() {
        $.ajax({
            url: 'your-server-endpoint', // 데이터를 가져올 서버의 URL
            method: 'GET', // 데이터를 가져오는 방식
            dataType: 'json', // 받아올 데이터 형식
            success: function(data) {
                // 데이터를 성공적으로 받아왔을 때의 로직
                var tbody = document.getElementById('tableBody'); // 테이블 body 선택
                tbody.innerHTML = ''; // 초기화
                
                // 받아온 데이터로 행을 만들어 테이블에 삽입
                data.forEach(function(rowData) {
                    var row = `<tr>
                        <td><input type="checkbox" name="selectedRow"></td>
                        <td>${rowData.code}</td>
                        <td>${rowData.rawName}</td>
                        <td>${rowData.type}</td>
                        <td>${rowData.quantity}</td>
                        <td>${rowData.actualQuantity}</td>
                        <td>${rowData.warehouseCode}</td>
                        <td>${rowData.manager}</td>
                        <td>${rowData.confirmDate}</td>
                    </tr>`; // 각 행의 HTML 문자열

                    tbody.innerHTML += row; // 행을 tbody에 추가
                });
            },
            error: function(err) {
                // 데이터를 받아오는 데 실패했을 때의 로직
                console.error('Error fetching data: ', err);
            }
        });
    }

    // 페이지 로드 시 데이터를 가져옴
    document.addEventListener('DOMContentLoaded', function() {
        fetchData();
    });

    // 출고 기능 스크립트
    document.getElementById('exportBtn').addEventListener('click', function() {
        // TODO: 출고 관련 코드
        alert("출고 버튼이 클릭되었습니다. 출고 처리 로직을 여기에 구현하세요.");
        // 예: 선택된 자재 데이터 수집, 출고 수량 입력 요청, 서버에 출고 요청 등
    });

    
    </script>

  

