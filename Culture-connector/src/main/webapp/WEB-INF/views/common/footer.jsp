<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>



<!-- =======================
Footer START -->
<footer class="bg-dark pt-5">
   <div class="container-fluid">
      <!-- Row START -->
      <div class="row g-4">
          <!-- Widget 1 START -->
          <div class="col-lg-3">
              <!-- logo -->
              <a href="index.html">
                  <img class="h-40px" src="${pageContext.request.contextPath}/resources/images/logo-culture.png" alt="로고">
              </a>
              <p class="my-3 text-body-secondary">
                  문화커넥터와 함께 떠나는 문화여행
              </p>
             
          </div>
          <!-- Widget 1 END -->

          <!-- Widget 2 START -->
          <div class="col-lg-8 ms-auto">
              <div class="row g-4">
                  <!-- Link block -->
                  <div class="col-6 col-md-3">
                      <h5 class="text-white mb-2 mb-md-4">페이지</h5>
                      <ul class="nav flex-column text-primary-hover">
                          <li class="nav-item">
                              <a class="nav-link text-body-secondary" href="main.html"
                              >홈</a
                              >
                          </li>
                          <li class="nav-item">
                              <a class="nav-link text-body-secondary" href="cluture-theme1.html"
                              >문화 테마</a
                              >
                          </li>
                          <li class="nav-item">
                              <a class="nav-link text-body-secondary" href="cuisine-tour.html"
                              >음식 투어</a
                              >
                          </li>
                          <li class="nav-item">
                              <a class="nav-link text-body-secondary" href="cluture-news1.html"
                              >문화 소식</a
                              >
                          </li>
                          <li class="nav-item">
                              <a class="nav-link text-body-secondary" href="review-talk1.html"
                              >리뷰(수다톡)</a
                              >
                          </li>
                          <li class="nav-item">
                              <a class="nav-link text-body-secondary" href="cluture-tour-map.html"
                              >문화(여행) 지도</a
                              >
                          </li>
                      </ul>
                  </div>

                  <!-- Link block -->
                  <div class="col-6 col-md-3">
                      <h5 class="text-white mb-2 mb-md-4">회원정보</h5>
                      <ul class="nav flex-column text-primary-hover">
                          <li class="nav-item">
                              <a class="nav-link text-body-secondary" href="#">가입하기</a>
                          </li>
                          <li class="nav-item">
                              <a class="nav-link text-body-secondary" href="sign-in.html">로그인</a>
                          </li>
                          <li class="nav-item">
                              <a class="nav-link text-body-secondary" href="#"
                              >내정보</a
                              >
                          </li>
                         
                      </ul>
                  </div>
                  

              
           
          </div>
          <!-- Widget 2 END -->
      </div>
      <!-- Row END -->

     
  </div>
     <!-- Bottom footer -->
  <div class="row">
    <div class="container">
      <div
        class="d-lg-flex justify-content-between align-items-center py-3 text-center text-lg-start"
      >
        <!-- copyright text -->
        <div class="text-body-secondary text-primary-hover">
          저작권 ©2024 멀티캠퍼스 문화커넥터
       
        </div>
     
      </div>
    </div>
  </div>
</div>
</footer>
<!-- Footer END -->



<!-- Back to top -->
<div class="back-top"></div>
<!-- Bootstrap JS CDN -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-rbs5vr9i87q4ys1q2ny46u1p7e3c9h5o1u8e4onq18ebL5uFi06e7Jk7b57lPtw" crossorigin="anonymous"></script>

<!-- Vendors -->
<script src="https://cdn.jsdelivr.net/npm/tiny-slider@2.9.3/dist/tiny-slider.js"></script>
<script src="https://cdn.jsdelivr.net/npm/purecounterjs@1.0.5/dist/purecounter_vanilla.js"></script>
<script src="https://cdn.jsdelivr.net/npm/glightbox@1.0.8/dist/glightbox.js"></script>
<script src="https://cdn.jsdelivr.net/npm/flatpickr@4.6.9/dist/flatpickr.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/choices.js@10.1.0/public/assets/scripts/choices.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/jarallax@1.12.0/dist/jarallax.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/jarallax@1.12.0/dist/jarallax-video.min.js"></script>

<!-- ThemeFunctions -->
<script src="${pageContext.request.contextPath}/resources/js/functions.js"></script>

<!-- 페이지 상단에 아래 스크립트를 포함시킵니다. -->
<script>
  // 페이지 로드 시 스크롤 위치를 가져와서 설정
  document.addEventListener("DOMContentLoaded", function () {
    var scrollPosition = localStorage.getItem("scrollPosition");
    if (scrollPosition) {
      window.scrollTo(0, scrollPosition);
    }
  });

  // 페이지를 떠날 때 스크롤 위치를 저장
  window.addEventListener("beforeunload", function () {
    localStorage.setItem("scrollPosition", window.scrollY);
  });
</script>
	
</body>
</html>


</body>
</html>