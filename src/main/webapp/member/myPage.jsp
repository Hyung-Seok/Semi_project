<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내 정보</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Bootstrap icons-->
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" type="text/css" />
<!-- Google fonts-->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;800&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css" />
<!-- Core theme CSS (includes Bootstrap)-->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" 
integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
 integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<!-- fontAwessome-->
<script src="https://kit.fontawesome.com/241134516c.js" crossorigin="anonymous"></script>
<!-- css -->
<link rel="stylesheet" href="<%=request.getContextPath()%>/member/css/myPage.css">
</head>
<body>
   <div class="container MainBox">
        <!-- 네비바 -->
        <nav class="navbar navbar-light bg-light fixed">
            <div class="container">
                <a class="navbar-brand" href="/toPay.pay" id="logo">로고</a>
                <div class="col-md-1  navbar-anchor"><a href="/">COMPANY</a></div>
                <div class="dropdown ">
                    <button class="btn dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false" style="font-weight: bold;">
                      CLOTHES
                    </button>
                    <ul class="dropdown-menu nav-category" aria-labelledby="dropdownMenuButton1">
                      <li><a class="dropdown-item" href="#">Top</a></li>
                      <li><a class="dropdown-item" href="#">Bottom</a></li>
                      <li><a class="dropdown-item" href="#">Accessory</a></li>
                    </ul>
                  </div>
                <div class="col-md-1 navbar-anchor"><a href="/">매장찾기</a></div>
                <div class="col-md-1 navbar-anchor"><a href="/toCs.mem">고객센터</a></div>
            <!-- 네비바 검색창 -->
                <div class="col-md-4 navbar-anchor" id="navbar-search">
                    <form class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
                        <div class="input-group">
                            <button class="btn btn-link" style="border: 1px solid lightgrey;" id="btnSearch" type="button"><i id="searchIcon" class="fas fa-search"></i></button>
                            <input class="form-control" type="text" aria-describedby="btnNavbarSearch" />
                        </div>
                    </form>
                </button></div>
                <div class="col-md-2 navbar-anchor" id="userIcon">
                    <c:choose>
						<c:when test="${not empty loginSession}"><!-- 로그인했으면 -->
							<a href="/toCart.mem"><i class="fa-solid fa-cart-plus"></i></a>
								<div class="dropdown" style="display: inline;">
									<i class="fa-solid fa-user" data-bs-toggle="dropdown" aria-expanded="false" ></i>
					                    <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
					                      <li><a class="dropdown-item" href="/toMypage.mem">마이페이지</a></li>
					                      <li><a class="dropdown-item" href="/logoutProc.mem">로그아웃</a></li>	                     
					                    </ul>
					             </div>
                  			<span style="font-size: 10px;">${loginSession.user_id}님</span>
						</c:when>
						
						<c:otherwise><!-- 로그인 안하면 -->
							<i id="loginIcon" class="fa-solid fa-cart-plus"></i></a>
							<i id="loginIcon2" class="fa-solid fa-user"></i>
							<script>
							document.getElementById("loginIcon2").onclick = function(){
								let url = "/toLogin.mem";
								let name = "로그인";
								let option = "width=500, height=500, left=700, top=300";
								window.open(url, name, option);
								}
							document.getElementById("loginIcon").onclick = function(){
								let url = "/toLogin.mem";
								let name = "로그인";
								let option = "width=500, height=500, left=700, top=300";
								window.open(url, name, option);
								}
							</script>
						</c:otherwise>
					</c:choose>
                </div>
            </div>
        </nav>
    </div>

        <!-- 바디-->
    <header class="masthead w-100" >
            <div class="container" id="contentBox">
                <div class="row">
                    <div class="col">
                        <h3 class="header">${user_id}님 환영합니다.</h3>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h6 class="info">>총 주문금액: ${totalPrice}원</h6>
                    </div>
                </div>
            </div>

            <div class="container" id="contentBox2">
                <div class="row">
                    <div class="col-12 col-sm-12" style="border-bottom: 1px solid lightgrey; height: auto; " >
                        <h3 class="header">나의 주문 처리현황</h3>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12 col-sm-4 ship_info">
                        <p style="margin-top: 20px; margin-bottom: 5px;">주문건수</p>
                        <h3>${totalCnt}</h3>
                    </div>
                    <div class="col-12 col-sm-4 ship_info_right">
                        <p style="margin-top: 20px; margin-bottom: 5px;">배송중</p>
                        <h3>${deliveryCnt}</h3>
                    </div>
                    <div class="col-12 col-sm-4 ship_info_right">
                        <p style="margin-top: 20px; margin-bottom: 5px;">배송완료</p>
                        <h3>${deliveryCompletCnt}</h3>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12 col-sm-6 mp_info" onclick="location.href='/'">
                        <p class="infoTextHeader d-inline-block" style="font-size: 25px ;"><Strong>Profile</Strong></p><span style="margin-left: 20px;"> 회원 정보</span><br>
                        <p class="infoText" style="font-size: 15px ;">
                            고객님께서 가입하신 회원정보를 확인 및<br>
                            수정하실 수 있습니다.
                        </p>
                    </div>
                    <div class="col-12 col-sm-6 mp_info_right" onclick="location.href='/'">
                        <p class="infoTextHeader d-inline-block" style="font-size: 25px ;"><Strong>Cart</Strong></p><span style="margin-left: 20px;"> 장바구니</span>
                        <p class="infoText" style="font-size: 15px ;">
                            고객님께서 장바구니에 담은 상품을 확인<br>
                            하실 수 있습니다.
                        </p>
                    </div>                  
                </div>
                <div class="row">
                    <div class="col-12 col-sm-6 mp_info" style="border-bottom: none; border-right: 1px solid lightgray;" onclick="location.href='/'">
                        <p class="infoTextHeader d-inline-block" style="font-size: 25px ;"><Strong>Board</Strong></p><span style="margin-left: 20px;"> Q&A 게시물 관리</span>
                        <p class="infoText" style="font-size: 15px ;">
                            고객님께서 작성하신 상품평 및 문의글을<br>
                            한눈에 관리하실 수 있습니다.
                        </p>
                    </div>
                    <div class="col-12 col-sm-6 mp_info" style="border-bottom: none; border-right: 1px solid lightgray;" onclick="location.href='/'">
                        <p class="infoTextHeader d-inline-block" style="font-size: 25px ;"><Strong>OrderList</Strong></p><span style="margin-left: 20px;"> 구매내역</span>
                        <p class="infoText" style="font-size: 15px ;">
                            고객님께서 구매하신 제품의 목록을<br>
                            한눈에 확인 하실 수 있습니다.
                        </p>
                    </div>                 
                </div>
            </div>
    </header>
<!-- Footer-->
<footer class="footer bg-light">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 h-100 text-center text-lg-start my-auto">
                <ul class="list-inline mb-2">
                    <li class="list-inline-item"><a href="#!">COMPANY</a></li>
                    <li class="list-inline-item">⋅</li>
                    <li class="list-inline-item"><a href="#!">매장찾기</a></li>
                    <li class="list-inline-item">⋅</li>
                    <li class="list-inline-item"><a href="/toCs.mem">고객센터</a></li>
                    <li class="list-inline-item">⋅</li>
                    <li class="list-inline-item"><a href="#!" style="color: red; font-weight: bold;">개인정보처리방침</a></li>
                    
                </ul>
                <p class="text-muted small mb-4 mb-lg-0">하잇프랜드(주) 대표 : 이호준 | 개인정보관리책임자 : 김영완 | 사업자등록번호 : 22-02-22</p>
                <p class="text-muted small mb-4 mb-lg-0">주소 : 서울특별시 영등포구 선유동2로 57 이레빌딩</p>
                <p class="text-muted small mb-4 mb-lg-0">&copy; Your Website 2022. All Rights Reserved.</p>
            </div>
            <div class="col-lg-6 h-100 text-center text-lg-end my-auto">
                <ul class="list-inline mb-0">
                    <li class="list-inline-item me-4">
                        <a href="#!"><i class="bi-facebook fs-3"></i></a>
                    </li>
                    <li class="list-inline-item me-4">
                        <a href="#!"><i class="bi-twitter fs-3"></i></a>
                    </li>
                    <li class="list-inline-item">
                        <a href="#!"><i class="bi-instagram fs-3"></i></a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</footer>
</body>
</html>