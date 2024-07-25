<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<%-- <%@ include file="../include/header.jsp"%> --%>
<%@ include file="../include/js.jsp"%>
<head>
<meta charset="UTF-8">
<link rel="icon" type="image/png" href="${path}/resources/img/logo.png">
<link rel="stylesheet" type="text/css"
   href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900|Roboto+Slab:400,700" />
<link href="/resources/css/nucleo-icons.css" rel="stylesheet" />
<link href="/resources/css/nucleo-svg.css" rel="stylesheet" />
<script src="https://kit.fontawesome.com/42d5adcbca.js"
   crossorigin="anonymous"></script>
<link
   href="https://fonts.googleapis.com/icon?family=Material+Icons+Round"
   rel="stylesheet">
<link id="pagestyle" href="/resources/css/main.css" rel="stylesheet" />
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</head>
<body class="g-sidenav-show  bg-gray-200">
   <div class="card my-4">
      <div class="card-header p-0 position-relative mt-n4 mx-3 z-index-2">
         <div
            class="bg-gradient-primary shadow-primary border-radius-lg pt-4 pb-3">
            <h6 class="text-white text-capitalize ps-3">입/출고 등록</h6>
         </div>
      </div>
      <div class="card-body px-0 pb-2">
         <div class="card-body">
            <!-- 입고 자재 정보 -->
            <div class="row mb-4">
               <div class="card">
                  <div class="card-header pb-0">
                     <div class="row">
                        <div class="col-lg-6 col-7">
                           <h6>입/출고 자재 정보 입력</h6>
                        </div>
                     </div>
                  </div>
                  <div class="card-body px-0 pb-2">
                     <div class="table-responsive">
                        <form name="registForm" method="POST">
                           <table class="table align-items-center mb-0">
                              <tbody>
                                 <tr>
                                    <td>
                                       <div class="input-group input-group-dynamic mb-4">
                                          <select name="product_no" class="input-group-dynamic">
                                             <option value="6">설탕</option>
                                             <option value="7">소금</option>
                                             <option value="8">우유</option>
                                             <option value="9">크림</option>
                                             <option value="10">박력분</option>
                                             <option value="11">코코아분말</option>
                                             <option value="12">강력분</option>
                                             <option value="14">식용유</option>
                                             <option value="15">이스트</option>
                                             <option value="17">딸기</option>
                                             <option value="18">두리안</option>
                                             <option value="19">민트첨가물</option>
                                             <option value="28">치즈</option>
                                             <option value="36">초콜렛칩</option>
                                             <option value="37">흑설탕</option>
                                             <option value="38">전란액</option>
                                             <option value="39">버터</option>
                                             <option value="40">정제수</option>
                                             <option value="41">물엿</option>
                                             <option value="42">딸기잼</option>
                                             <option value="43">블루베리잼</option>
                                             <option value="44">쇼트닝</option>
                                             <option value="45">크림치즈</option>
                                             <option value="46">초코소스</option>
                                             <option value="47">사과잼</option>
                                             <option value="62">밀가루</option>
                                          </select>
                                       </div>
                                    </td>
                                    <td>
                                       <div class="input-group input-group-dynamic mb-4">
                                          <input type="text" name="warehouse_no"
                                             class="form-control" placeholder="창고 번호"
                                             aria-label="창고 번호" aria-describedby="basic-addon1">
                                       </div>
                                    </td>
                                    <td>
                                       <div class="input-group input-group-dynamic mb-4">
                                          <input type="date" name="expiry_date" class="form-control"
                                             placeholder="유통 기한" aria-label="유통 기한"
                                             aria-describedby="basic-addon1">
                                       </div>
                                    </td>
                                    <td>
                                       <div class="input-group input-group-dynamic mb-4">
                                          <input type="text" name="quantity" class="form-control"
                                             placeholder="자재 입/출고 수량" aria-label="자재 입/출고 수량"
                                             aria-describedby="basic-addon1">
                                       </div>
                                    </td>
                                    <td>
                                       <div class="input-group input-group-dynamic mb-4">
                                          <select name="status" class="form-control">
                                             <option value="">입/출고 선택</option>
                                             <option value="입고">입고</option>
                                             <option value="출고">출고</option>
                                          </select>
                                       </div>
                                    </td>

                                 </tr>
                              </tbody>
                           </table>
                        </form>
                     </div>
                  </div>
               </div>

            </div>

            <!-- 등록 버튼 -->
            <div class="text-center">
               <button type="button"
                  class="btn btn-lg bg-gradient-primary btn-lg w-100 mt-4 mb-0"
                  onclick="registAlert()">등록하기</button>
            </div>

         </div>
      </div>
   </div>

   <%@ include file="../include/footer.jsp"%>
   <script>
      function registAlert() {
         swal({
            text : "입/출고 등록 완료",
            icon : "success",
            buttons : false
         });

         setTimeout(function() {
            document.forms["registForm"].submit();
         }, 700);

      }
   </script>