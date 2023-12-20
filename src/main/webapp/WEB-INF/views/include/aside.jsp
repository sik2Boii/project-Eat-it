<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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