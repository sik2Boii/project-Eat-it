<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@ include file="../include/header.jsp"%>
<%@ include file="../include/js.jsp"%>

	<div class="col-12">
		<div class="card my-4">		
			<div class="card-header p-0 position-relative mt-n4 mx-3 z-index-2">				
				<div class="bg-gradient-primary shadow-primary border-radius-lg pt-3 pb-3 pe-3 d-flex">			
					<h6 class="text-white text-capitalize pt-3 ps-3">발주 내역</h6>					
					<div class="ms-md-auto bg-white rounded p-2 d-flex align-items-center">	
						<div class="align-items-center d-flex flex-column">					
							<div class="input-group input-group-outline">							
								<label class="form-label">Type here...</label>
                   				<input type="text" class="form-control">							
							</div>						
						</div>						
						<div class="align-items-center d-flex flex-column py-1">						
							<a class="btn btn-outline-primary btn-sm mb-0 py-1 ms-2" target="_blank" href="">검색</a>						
						</div>										
					</div>					
				</div>				
			</div>			
			<div class="card-body px-0 pb-2">	
				<div class="text-end pe-4 pb-3">
					<a class="btn bg-gradient-dark mb-0" href="/purchaseOrder/writeForm">
						<i class="material-icons text-sm">add</i> 발주서 작성하기
					</a>
				</div>	
				<div class="table-responsive p-0">
					<table class="table align-items-center mb-0">					
						<thead>
							<tr>
								<th class="text-uppercase text-secondary text-s font-weight-bolder opacity-7 ps-2">
									<div class="form-check form-check-info text-start ps-0">
										<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault" data-gtm-form-interact-field-id="0">
									</div>
								</th>
								<th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">발주 번호</th>
								<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">제품 정보</th>
								<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">지점 정보</th>
								<th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">발주 일자</th>
								<th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">처리 상태</th>
								<th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">수정/삭제</th>
							</tr>
						</thead>					
						<tbody>
							<c:forEach var="vo" items="${purchaseVOList }">
								<tr>
									<td class="text-uppercase text-secondary text-s font-weight-bolder opacity-7 ps-2">
										<div class="form-check form-check-info text-start ps-0">
											<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault" data-gtm-form-interact-field-id="0">
										</div>
									</td>
									<td class="align-middle text-center identify-no">
                      					<a href="/purchaseOrder/orderDetail?order_id=${vo.order_id }">
                      						<span class="text-secondary font-weight-bold">${vo.order_id }</span>
                      					</a>                  						
                     				</td>
									<td>
				                    	<div class="d-flex px-2 py-1">
				                        	<div>
				                            	<img src="" class="avatar avatar-sm me-3 border-radius-lg" alt="user1">
				                     		</div>
				                          	<div class="d-flex flex-column justify-content-center">
				                           		<h6 class="mb-0 text-sm">${vo.product_no }</h6>
				                            	<p class="text-xs text-secondary mb-0">quantity: 999개</p>
				                        	</div>
				                    	</div>
			                        </td>
									<td>
				                        <p class="text-xs font-weight-bold mb-0">${vo.company_no }</p>
				                        <p class="text-xs text-secondary mb-0">member_name: 신청자</p>
                      				</td>
									<td class="align-middle text-center">
										<span class="text-secondary text-xs font-weight-bold">
									    	<fmt:formatDate value="${vo.order_date}" pattern="yyyy-MM-dd" />
									    </span>
									</td>
									<td class="align-middle text-center text-sm">
			                        	<span class="badge badge-sm bg-gradient-success">${vo.order_status }</span>
			                      	</td>
									<td class="align-middle text-center">
										<a class="btn btn-link text-dark px-3 mb-0" href="/purchaseOrder/orderDetail?order_id=${vo.order_id }">
											<i class="material-icons text-sm me-2">edit</i>
											Edit
										</a>
										<a class="btn btn-link text-danger text-gradient px-3 mb-0" href="./delete">
											<i class="material-icons text-sm me-2">delete</i>
											Delete
										</a>
									</td>
								</tr>
							</c:forEach>
						</tbody>												
					</table>
				</div>
			</div>
		</div>
	</div>

<%@ include file="../include/footer.jsp"%>