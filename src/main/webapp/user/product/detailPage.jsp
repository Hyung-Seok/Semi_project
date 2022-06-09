<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Bootstrap icons-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css"
	rel="stylesheet" type="text/css" />
<!-- Google fonts-->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;800&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic"
	rel="stylesheet" type="text/css" />
<!-- Core theme CSS (includes Bootstrap)-->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
	crossorigin="anonymous"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"
	crossorigin="anonymous">
<!-- fontAwessome-->
<script src="https://kit.fontawesome.com/241134516c.js"
	crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>

<title>상세페이지</title>
<style>

i {
	margin: 5px;
}

.navbar-light {
	width: 100%;
	position: fixed;
	top: 0;
	z-index: 1;
	left: 0%;
}

body {
	padding-top: 100px;
}

/*네비바 속성*/
.navbar-anchor a {
	text-decoration: none;
	color: black;
	font-weight: bold;
}

#userIcon {
	text-align: right;
	font-size: 25px;
	padding: 5px;
}

#navbar-search {
	text-align: right;
}

#searchIcon {
	color: lightgrey;
}
/* 네비바 드롭다운 */
.dropdown-toggle:hover {
	color: #83bf7b;
	border-color: aliceblue;
}

.dropdown:hover .dropdown-menu {
	display: block;
	margin-top: 0;
	font-weight: bold;
}

/*상품 사진 및 설명*/
.clothesMain {
	position: relative;
}

.imgBox {
	width: 600px;
	height: 450px;
}

img {
	background-color: lightblue;
	width: 700px;
	border: 1px solid gainsboro;
}

.clothesName {
	border-bottom: 2px solid black;
	text-align: center;
}

.clothesPrice, .clothesDelivery {
	border-bottom: 1px solid gainsboro;
	text-align: center;
}

.orderBox {
	text-align: center;
}



.clothesDetail {
	text-align: center;
	padding-top: 100px;
}

.clothesExplain {
	margin-top: 50px;
}

.container-explain {
	width: 550px;
	align-content: center;
	margin: auto;
	margin-bottom: 100px;
	margin-top: 100px;
	word-break: break-all;
}

.container-explain .clothesExplain {
	width: 100%;
}

.countBox {
	padding: 0;
	margin: 0;
	border-bottom: 1px solid gainsboro;
}

.numberBox {
	text-align: center;
}

.btnCount {
	width:40px;
	height:40px;
	radius:0;
	border:none;
	
}

.inputCount {
	text-align: center;
	padding: 0;
	width: 130px;
	border: 1px solid gainsboro;
}

.btnOrder {
	background-color: #666666;
	border-color: #666666;
}

.btnCart {
	background-color: #666666;
	border-color: #666666;
	margin-left: 10px;
}

.h2, .h5 {
	border: none;
	border-right: 0px;
	border-top: 0px;
	boder-left: 0px;
	boder-bottom: 0px;
}

.body {
	padding-bottom: 100px;
}

/* 상품 메뉴 */
.detailNav {
	margin-top: 150px;
}

.detailNav a {
	text-decoration: none;
	color: cadetblue;
}

/* 상품 정보*/
.brand {
	margin: auto;
	width: 1000px;
	margin-top: 100px;
}

.brand_detail {
	border-bottom: 1px solid black;
}

.brand_title {
	border-bottom: 2px solid black;
	font-size: 20px;
}

.brand_info {
	font-weight: bold;
	font-size: 15px;
}

.info_detail {
	font-size: 13px;
}

/* 판매자 정보 */
.seller {
	background-color: gainsboro;
	width: 100%;
	margin: auto;
}

.detail {
	border: 1px solid black;
	width: 1000px;
	margin: auto;
	margin-top: 100px;
}

.seller-detail {
	font-size: 13px;
	color: darkgray;
}

b {
	padding-left: 10px;
}

.info_detail {
	padding-left: 15px;
}

/* 리뷰 영역 */
.review {
	width: 1000px;
	background-color:#F7F5F2;
	align-content: center;
	margin: auto;
	margin-bottom: 100px;
	margin-top: 100px;
}

.reviewContent {
	width: 100%;
}

.reviewTableHead {
	padding-top: 15px;
}

/*리뷰 별점*/
/* 별점 */
.fieldset {
	display: inline-block; /* 하위 별점 이미지들이 있는 영역만 자리를 차지함.*/
	direction: rtl; /* 이모지 순서 반전 */
	border: 0; /* 필드셋 테두리 제거 */
}

.fieldset input[type=radio] {
	display: none; /* 라디오박스 감춤 */
}

.fieldset label {
	font-size: 2em; /* 이모지 크기 */
	color: transparent; /* 기존 이모지 컬러 제거 */
	text-shadow: 0 0 0 #f0f0f0; /* 새 이모지 색상 부여 */
}

.fieldset label:hover {
	text-shadow: 0 0 0 rgba(248, 224, 7, 0.973); /* 마우스 호버 */
}

.fieldset label:hover ~ label {
	text-shadow: 0 0 0 rgba(248, 224, 7, 0.973); /* 마우스 호버 뒤에오는 이모지들 */
}

.fieldset input[type=radio]:checked ~ label {
	text-shadow: 0 0 0 rgba(248, 224, 7, 0.973); /* 마우스 클릭 체크 */
}

/*풋터 영역*/
.footerBox {
	height: 200px;
}

footer.footer {
	padding-top: 4rem;
	padding-bottom: 4rem;
}

.footer a {
	text-decoration: none;
	color: black;
	font-weight: 40px;
	font-weight: bold;
}
</style>
</head>
<body>
	<div class="container MainBox" id="header">
		<!-- 네비바 -->
		<nav class="navbar navbar-light bg-light fixed">
			<div class="container navbar-head">
				<a class="navbar-brand" href="#!" id="logo">로고</a>
				<div class="col-md-1 navbar-anchor">
					<a href="/ToCompany.page">COMPANY</a>
				</div>

				<div class="dropdown ">
					<button class="btn dropdown-toggle" type="button"
						data-bs-toggle="dropdown" aria-expanded="false"
						style="font-weight: bold;">CLOTHES</button>
					<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
						<li><a class="dropdown-item" href="/ToPage.page?category=TOP">Top</a></li>
						<li><a class="dropdown-item" href="/ToPage.page?category=bt">Bottom</a></li>
						<li><a class="dropdown-item"
							href="/ToPage.page?category=ACCESSORY">Accessory</a></li>
						<li><a class="dropdown-item" href="/ToPage.page?category=BAG">Bag</a></li>
					</ul>
				</div>

				<div class="col-md-1 navbar-anchor">
					<a href="/TosearchMap.page">Shop</a>
				</div>
				<div class="col-md-1 navbar-anchor">
					<a href="/">CS</a>
				</div>
				<div class="col-md-2 navbar-anchor" id="userIcon">
					<a href=""><i class="fa-solid fa-cart-plus"></i></a> <a href=""><i
						class="fa-solid fa-user"></i></a>
				</div>
			</div>
		</nav>
	</div>
	<!-- 옷 사진 및 설명 -->
	<form id="detailPageForm" action="/detailPage.page" method="post">
		<div class="body">
			<div class="row clothesMain m-5 d-flex justify-content-center">
				<div class="col-md-9 imgBox">
					<div id="carouselExampleIndicators" class="carousel slide"
						data-bs-ride="carousel">

						<div class="carousel-inner">
							<c:forEach items="${imageList}" var="image" varStatus="status">
								<c:choose>
									<c:when test="${status.index eq 0}">
										<div class="carousel-item active">
											<img src="../resource/imagesClothes/${image.image_name}"
												class="d-block w-100" alt="...">
										</div>
									</c:when>
									<c:otherwise>
										<div class="carousel-item">
											<img src="../resource/imagesClothes/${image.image_name}"
												class="d-block w-100" alt="...">
										</div>
									</c:otherwise>
								</c:choose>
							</c:forEach>
						</div>

						<button class="carousel-control-prev" type="button"
							data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
							<span class="carousel-control-prev-icon" aria-hidden="true"></span>
							<span class="visually-hidden">Previous</span>
						</button>
						<button class="carousel-control-next" type="button"
							data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
							<span class="carousel-control-next-icon" aria-hidden="true"></span>
							<span class="visually-hidden">Next</span>
						</button>
					</div>
				</div>

				<div class="col-md-3 clothesContent">
					<div class="row clothesName p-3 m-2">
						<h2>${productDTO.getProduct_name()}</h5>
					</div>
					<div class="row clothesPrice p-3 m-2">
						<div class="col-md-12 d-flex justify-content-start">
							<h6>
								판매가 : ${productDTO.getProduct_price()}원
								</h2>
						</div>
					</div>

					<div class="row clothesDelivery p-3 m-2">
						<div class="col-md-12 d-flex justify-content-start">
							<h6>배송비 : 무료배송</h6>
						</div>
						<div class="col-md-12 d-flex justify-content-start">
							<h6>배송유형 : 국내배송상품</h6>
						</div>
					</div>

					<div class="row countTextBox">
						<div class="col-md-12 d-flex justify-content-center">
							<h6>수량</h6>
						</div>
					</div>
					<div class="row countBox p-3">
						<div class="col-md-12 d-flex justify-content-center">
							<button type="button"
								class="btnCount" onclick="minus()" value="-">-</button>
							<input type="text" class="inputCount" id="inputCount" value="1"
								name="cart_quantity">
							<button type="button"
								class="btnCount" onclick="plus()" value="+">+</button>
						</div>
					</div>

					<div class="row orderBox p-3 m-3">
						<div class="col-md-12 d-flex justify-content-center">
							<button type="button" class="btn btn-secondary btnOrder"
								id="btnOrder">주문하기</button>
							<button type="button" class="btn btn-secondary btnCart"
								id="btnCart">장바구니 담기</button>
						</div>
					</div>

				</div>
			</div>
		</div>
	</form>
	<!-- 상품 메뉴바 -->
	<div class="row detailNav">
		<div class="col-12 d-flex justify-content-center">
			<ul class="link">
				<span class="select"> <a href="#clothesDetail">Detail
						View</a>
				</span>
				<span>&nbsp;&nbsp;/&nbsp;&nbsp;</span>
				<span class="seller_detail"> <a href="#brand">Brand info</a>
				</span>
				<span>&nbsp;&nbsp;/&nbsp;&nbsp;</span>
				<span class="clothes_review"> <a href="#review">Review</a>
				</span>
			</ul>
		</div>
	</div>

	<!-- 상품설명 -->
	<div
		class="container-explain d-flex flex-column justify-content-center">
		<div class="row contentExplain">
			<div class="col-md-12 d-flex justify-content-center">
				<p style="font-size: 15px;">상품 설명</p>
			</div>
			<div class="col-md-12 d-flex justify-content-center">
				<p style="font-size: 10px;">${productDTO.getProduct_content()}</p>
			</div>
		</div>
	</div>
	<!-- 상품사진 -->
	<div class="row clothesDetail" id="clothesDetail">
		<c:forEach items="${imageList}" var="image">
			<div class="col-md-12 p-2">
				<img src="../resource/imagesClothes/${image.image_name}">
			</div>
		</c:forEach>
	</div>


	<!-- 상품 정보 -->
	<div class="brand" id="brand">
		<div class="row brand_title d-flex justify-content-center">
			<div class="col-md-12">
				<p>
					<b>상품 추가정보</b>
				</p>
			</div>
		</div>
		<div class="row brand_detail">
			<div class="col-md-2 brand_info">
				<p>색상</p>
			</div>
			<div class="col-md-4 info_detail">
				<p>사진참조</p>
			</div>
			<div class="col-md-2 brand_info">
				<p>제조사</p>
			</div>
			<div class="col-md-4 info_detail">
				<p>한국</p>
			</div>
		</div>
		<div class="row brand_detail">
			<div class="col-md-2 brand_info">
				<p>제조국</p>
			</div>
			<div class="col-md-4 info_detail">
				<p>한국</p>
			</div>
			<div class="col-md-2 brand_info">
				<p>세탁방법</p>
			</div>
			<div class="col-md-4 info_detail">
				<p>드라이클리닝 추천</p>
			</div>
		</div>
		<div class="row brand_detail">
			<div class="col-md-2 brand_info">
				<p>수입여부</p>
			</div>
			<div class="col-md-4 info_detail">
				<p>N</p>
			</div>
			<div class="col-md-2 brand_info">
				<p>제조년월</p>
			</div>
			<div class="col-md-4 info_detail">
				<p>2022년 5월 이후</p>
			</div>
		</div>
	</div>

	<!-- 브랜드 설명 -->
	<div class="detail" id="detail">
		<div class="row seller mb-3">
			<div class="col-md-12">
				<div style="font-size: 30px;">판매자정보</div>
			</div>
		</div>
		<div class="row mb-3">
			<div class="col-md-4">
				<div>
					<b>상호 / 대표자</b>
				</div>
			</div>
			<div class="col-md-8 seller-detail">
				<div>주식회사 HYPE / 이호준</div>
			</div>
		</div>
		<div class="row mb-3">
			<div class="col-md-4">
				<div>
					<b>브랜드</b>
				</div>
			</div>
			<div class="col-md-8 seller-detail">
				<div>HYPE</div>
			</div>
		</div>
		<div class="row mb-3">
			<div class="col-md-4">
				<div>
					<b>사업자번호</b>
				</div>
			</div>
			<div class="col-md-8 seller-detail">
				<div>1111111111</div>
			</div>
		</div>
		<div class="row mb-3">
			<div class="col-md-4">
				<div>
					<b>통신판매업신고</b>
				</div>
			</div>
			<div class="col-md-8 seller-detail">
				<div>제2022-서울당산</div>
			</div>
		</div>
		<div class="row mb-3">
			<div class="col-md-4">
				<div>
					<b>연락처</b>
				</div>
			</div>
			<div class="col-md-8 seller-detail">
				<div>02-777-7777</div>
			</div>
		</div>
		<div class="row mb-3">
			<div class="col-md-4">
				<div>
					<b>E-mail</b>
				</div>
			</div>
			<div class="col-md-8 seller-detail">
				<div>HYPE@hype.co.kr</div>
			</div>
		</div>
		<div class="row mb-3">
			<div class="col-md-4">
				<div>
					<b>영업소재지</b>
				</div>
			</div>
			<div class="col-md-8 seller-detail">
				<div>서울 영등포구 선유동2로 57 이레빌딩딩</div>
			</div>
		</div>
		<div class="row mb-3">
			<div class="col-md-12">
				<div class="info_detail" style="font-size: 11px;">본 상품 정보의 내용은
					공정거래위원회 ‘상품정보제공고시’ 에 따라 판매자가 직접 등록한 것으로 해당 정보에 대한 책임은 판매자에게 있습니다.</div>
			</div>
		</div>
	</div>

	<!-- 리뷰 영역 -->
	<div class="review" id="review">
		<div class="row reviewTableHead d-flex justify-content-start">
			<div class="reviewHead col-md-6 pb-4 ps-4">
				<span style="font-weight:bold; font-size:25px;">리뷰</span>
				<span style="color:#538C4C; font-weight:bold; font-size:25px;">${reviewCount}</span>
				<span style="font-weight:bold; font-size:25px;">건</span>
			</div>
			
			<c:choose>
				<c:when test="${reviewSize == 0}">
						<div class="reviewHead col-md-6 d-flex justify-content-end pb-4 ps-4">
							<span style="font-weight:bold; font-size:25px;">평점&nbsp;</span>
							<span style="font-weight:bold; font-size:25px; color:#bd4d3c;">0.0</span>
							<span style="font-weight:bold; font-size:25px; margin-right:15px;">/5.0</span>
						</div>
					<div class="reviewContent col-md-12 d-flex justify-content-center">
						<table class="table">
							<thead>
								<tr>
									<th scope="col">#</th>
									<th scope="col">ID</th>
									<th scope="col">Content</th>
									<th scope="col">Date</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th scope="row" style="text-align:end;">등록된 리뷰가 없습니다.</th>
									<td></td>
									<td></td>
									<td></td>
								</tr>

							</tbody>
						</table>
					</div>
				</c:when>
				<c:otherwise>
						<div class="reviewHead col-md-6 d-flex justify-content-end">
							<span style="font-weight:bold; font-size:25px;">평점&nbsp;</span>
							<span style="font-weight:bold; font-size:25px; color:#bd4d3c;">${Math.ceil((sumReview/reviewCount)*10)/10}</span>
							<span style="font-weight:bold; font-size:25px; margin-right:15px;">/5.0</span>
						</div>
					
					<div class="reviewContent col-md-12 d-flex justify-content-center">
						<table class="table">
							<thead>
								<tr style="color:#7F8487">
									<th scope="col">#</th>
									<th scope="col">ID</th>
									<th scope="col">Content</th>
									<th scope="col">Date</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${ReviewContent}" var="ReviewContent">
									<tr>
										<th scope="row">${ReviewContent.getSeq_review()}</th>
										<td>${ReviewContent.getUser_id()}</td>
										<td>${ReviewContent.getReview_content()}</td>
										<td>${ReviewContent.getReview_date()}</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</c:otherwise>
			</c:choose>
		</div>
		
		<div class="row m-2">
				<div class="btnReview col-md-12 d-flex justify-content-end mb-4">
					<button type="button" class="btn btn-success"
						data-bs-toggle="modal" data-bs-target="#exampleModal" id="write">작성하기</button>
				</div>
				<div class="modal fade" id="exampleModal" tabindex="-1"
					aria-labelledby="exampleModalLabel" aria-hidden="true">
					<div class="modal-dialog"
						style="max-width: 100%; width: 600px; display: table;">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title" id="exampleModalLabel">리뷰 작성</h5>
								<button type="button" class="btn-close" data-bs-dismiss="modal"
									aria-label="Close"></button>
							</div>
							<div class="modal-body">
								<form id="reviewForm" action="/reviewWrite.page" method="post">
									<div class="mb-3 d-flex justify-content-end">
										<div class="col-6 fieldset d-flex justify-content-end ">
											<fieldset>
												<input type="radio" name="review_rate" value="5" id="rate1"><label
													for="rate1">⭐</label> <input type="radio"
													name="review_rate" value="4" id="rate2"><label
													for="rate2">⭐</label> <input type="radio"
													name="review_rate" value="3" id="rate3"><label
													for="rate3">⭐</label> <input type="radio"
													name="review_rate" value="2" id="rate4"><label
													for="rate4">⭐</label> <input type="radio"
													name="review_rate" value="1" id="rate5"><label
													for="rate5">⭐</label>
											</fieldset>
										</div>
									</div>
									<div class="mb-3">
										<textarea class="form-control" placeholder="내용을 입력해주세요."
											id="content" name="review_content"
											style="height: 300px; resize: none"></textarea>
									</div>
									<div class="mb-3 d-none">
										<input type="text" id="seq" name="seq_product" value="${seq_product}">
									</div>
								</form>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-secondary"
									data-bs-dismiss="modal">Close</button>
								<button type="button" class="btn btn-primary" id="btnReview">작성완료</button>
							</div>
						</div>
					</div>
				</div>
		</div>
	</div>

	<!-- 맨위로 올라가기 -->
	<div class="top" style="position: fixed; bottom: 30px; right: 40px;">
		<a href="#header"><img src="" title="위로 가기"></a>
	</div>

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
						<li class="list-inline-item"><a href="#!">고객센터</a></li>
						<li class="list-inline-item">⋅</li>
						<li class="list-inline-item"><a href="#!"
							style="color: red; font-weight: bold;">개인정보처리방침</a></li>

					</ul>
					<p class="text-muted small mb-4 mb-lg-0">하잇프랜드(주) 대표 : 이호준 |
						개인정보관리책임자 : 김영완 | 사업자등록번호 : 22-02-22</p>
					<p class="text-muted small mb-4 mb-lg-0">주소 : 서울특별시 영등포구 선유동2로
						57 이레빌딩</p>
					<p class="text-muted small mb-4 mb-lg-0">&copy; Your Website
						2022. All Rights Reserved.</p>
				</div>
				<div class="col-lg-6 h-100 text-center text-lg-end my-auto">
					<ul class="list-inline mb-0">
						<li class="list-inline-item me-4"><a href="#!"><i
								class="bi-facebook fs-3"></i></a></li>
						<li class="list-inline-item me-4"><a href="#!"><i
								class="bi-twitter fs-3"></i></a></li>
						<li class="list-inline-item"><a href="#!"><i
								class="bi-instagram fs-3"></i></a></li>
					</ul>
				</div>
			</div>
		</div>
	</footer>
	<script>
		$("#btnReview").on("click",function() {
			console.log($("#seq").val());
			if ($("#content").val() == "") {
				alert("내용을 입력해주세요.");
				$("#content").focus();
				return;
			} else {
				let data = $('#reviewForm').serialize();
				$.ajax({
					url : "/reviewWrite.page",
					type : "post",
					data : data,
					success : function(data) {
						alert("리뷰작성이 완료되었습니다.");
						$('#exampleModal').modal("hide"); 
						location.reload();
					}, error: function(request,status,error){
	    				alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
	    				//alert("에러가 발생했습니다.");
    				}
				});
			}
		});

		function plus() {
			var plus = document.getElementById("inputCount").value;
			plus++;
			document.getElementById("inputCount").value = plus;
		}

		function minus() {
			var minus = document.getElementById("inputCount").value;
			if (minus > 1) {
				document.getElementById("inputCount").value = --minus;
			}
		}

		$("#btnCart").on("click", function() {
			let data = $('#detailPageForm').serialize();
			let cart_name = $('#cart_name').val();
			let cart_price = $('#cart_price').val();

			let regexInput = /^[1-9]{1,2}.?$/gm;

			if (!regexInput.test($("#inputCount").val())) {
				alert("수량은 1~99만 입력가능합니다")
			} else {
				$.ajax({
					url : "/addToCart.page?seq_product=${seq_product}",
					type : "post",
					data : data,
					success : function(data) {
						alert("장바구니에 담겼습니다.");
					},
					error : function(request, status, error) {
						alert("에러가 발생했습니다.");
					}
				});
			}
		});
	</script>
</body>
</html>