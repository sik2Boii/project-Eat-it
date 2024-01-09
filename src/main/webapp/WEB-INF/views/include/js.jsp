<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
  <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
  <script src="/resources/js/core/popper.min.js"></script>
  <script src="/resources/js/core/bootstrap.min.js"></script>
  <script src="/resources/js/plugins/perfect-scrollbar.min.js"></script>
  <script src="/resources/js/plugins/smooth-scrollbar.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
  <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

<script>
  $(document).ready(function () {
    // 초기에는 모든 서브메뉴 목록을 숨김
    $("ul[id^='sm']").hide();

    // 메뉴 항목을 클릭했을 때 해당 서브메뉴를 보여줌 또는 숨김
    $("[id^='mn']").click(function (e) {
      // 클릭한 항목에 해당하는 서브메뉴 목록을 찾음
      var submenu = $(this).find("ul[id^='sm']");

      // 다른 모든 서브메뉴 목록을 숨김
      $("ul[id^='sm']").not(submenu).hide();

      // 클릭한 항목에 해당하는 서브메뉴 목록을 토글하여 보이거나 숨김
      submenu.toggle().css({ height: "0px" }).animate({ height: "125px" });

      // Stop the event from propagating to the document click handler
      e.stopPropagation();
    });

    // 다른 곳을 클릭했을 때 모든 서브메뉴 목록을 숨기지 않음
    $(document).click(function () {
      // do nothing here or perform other actions if needed
    });
  });
</script>


<script>
  document.addEventListener("DOMContentLoaded", function () {
    // 모든 네비게이션 항목을 가져오고 NodeList를 배열로 변환
    var navItems = Array.from(document.querySelectorAll('#sidenav-collapse-main .nav-item'));

    // 각 네비게이션 항목에 클릭 이벤트 리스너 추가
    navItems.forEach(function(item) {
      item.addEventListener('click', function (event) {
        // 현재 클릭한 네비게이션 항목의 링크(a 태그)에 'bg-gradient-primary' 클래스 추가
        var link = this.querySelector('span');
        if (link) {
          link.classList.add('bg-gradient-primary');
        }

        // 다른 네비게이션 항목의 링크(a 태그)에 'bg-gradient-primary' 클래스 제거
        navItems.filter(function(navItem) {
          return navItem !== item;
        }).forEach(function(otherNavItem) {
          var otherLink = otherNavItem.querySelector('span');
          var otherLink1 = otherNavItem.querySelector('a');
          if (otherLink) {
            otherLink.classList.remove('bg-gradient-primary');
          if (otherLink1) {
              otherLink1.classList.remove('bg-gradient-primary');
          }
          }
        });
      });
    });
  });
</script>

<script>
document.addEventListener("DOMContentLoaded", function () {
	  // 모든 네비게이션 항목을 가져옵니다.
	  var navItems = document.querySelectorAll(".nav-item:not(.ignore-click)");

	  // 클릭 이벤트 리스너를 문서 전체에 추가합니다.
	  document.addEventListener("click", function (event) {
	    // 클릭된 요소가 네비게이션 항목인지 확인합니다.
	    var isNavItemClick = Array.from(navItems).some(function (navItem) {
	      return navItem.contains(event.target);
	    });

	    // 만약 클릭된 요소가 네비게이션 항목이 아니라면 아무것도 하지 않습니다.
	    if (!isNavItemClick) {
	      return;
	    }
	  });

	  // 각 네비게이션 항목에 클릭 이벤트 리스너를 추가합니다.
	  navItems.forEach(function (item) {
	    item.addEventListener("click", function (event) {
	      // 현재 margin-bottom 값을 가져옵니다.
	      var currentMarginBottom = parseInt(
	        window.getComputedStyle(item).marginBottom
	      );

	      // 만약 현재 margin-bottom 값이 20px이면 제거하고, 아니면 추가합니다.
	      item.style.marginBottom =
	        currentMarginBottom === 20 ? "" : "20px";

	      // 모든 다른 네비게이션 항목에서 "margin-bottom" 스타일을 제거합니다.
	      navItems.forEach(function (navItem) {
	        if (navItem !== item) {
	          navItem.style.marginBottom = "";
	        }
	      });

	      // Stop the event from propagating to the document click handler
	      event.stopPropagation();
	    });
	  });
	});
</script>