<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header2.jsp"%>

<style>
.cock_title {
	border-top: 2px solid #000;
	border-bottom: 1px solid rgb(230, 230, 230);
}

.text_area {
	float: left;
	width: 70%;
	float: left;
	border-right: 2px solid rgb(228, 228, 228);
}

.name {
	margin-top: 20px;
	text-align: center;
	font-weight: 600;
}

.icon {
	height: 30px;
	float: left;
	width: 30%;
	text-align: center;
	margin-top: 20px
}

.single-widget-area {
	position: relative;
	z-index: 1;
	background-color: #fff;
	border: 0px solid #d8d8d8;
}

.single-widget-area .widget-title {
	padding: 10px 10px;
	border: 0px;
}

.single-widget-area .widget-content {
	padding: 0px 10px;
}
</style>

<!-- ##### Breadcumb Area Start ##### -->
<section class="breadcumb-area bg-img bg-overlay"
	style="background-image: url(img/web-img/back3.jpg)">
	<div class="bradcumbContent">
		<p>상세보기</p>
		<h2>${cock.name }</h2>
		<input type="hidden" id="addMyCockNo" value="${cock.no }" /> <input
			type="hidden" id="commId" value="${session_id }" />
	</div>
</section>
<!-- ##### Breadcumb Area End ##### -->

<!-- ##### Blog Area Start ##### -->
<div class="blog-area section-padding-100">
	<div class="container">
		<div class="row">
			<div class="col-12 col-lg-5">

				<!-- Single Post Start -->
				<div class="single-blog-post mb-100 wow fadeInUp"
					data-wow-delay="100ms">
					<!-- Post Thumb -->
					<div class="blog-post-thumb mt-30">
						<a href="#"><img src="img/cock-img/${cock.img_name }" alt=""
							style="width: 100%; height: 100%;"></a>
						<!-- Post Date -->
					</div>

				</div>
			</div>
			<div class="col-12 col-lg-7">

				<!-- Single Post Start -->
				<div class="single-blog-post mb-100 wow fadeInUp"
					data-wow-delay="100ms">
					<!-- Post Thumb -->
					<div class="blog-post-thumb mt-30">
						<div class="cock_title">
							<div class="text_area">
								<div class="name">
									<h5>${cock.name }(${cock.ename })</h5>
								</div>

							</div>
							<c:choose>
								<c:when test="${empty session_id }">
									<div class="icon" id="loginGo">
										<img id="myCockSrc" src="img/core-img/bookmark.png"
											style="width: 40px; height: 40px;">
									</div>
								</c:when>
								<c:when test="${myCockImg eq '0'}">
									<div class="icon" id="addMyCocktail">
										<img id="myCockSrc" src="img/core-img/bookmark_ck.png"
											style="width: 40px; height: 40px;">
									</div>
								</c:when>
								<c:otherwise>
									<div class="icon" id="addMyCocktail">
										<img id="myCockSrc" src="img/core-img/bookmark.png"
											style="width: 40px; height: 40px;">
									</div>
								</c:otherwise>
							</c:choose>

							<div></div>

							<!-- <div class="post-date">   
                                   <div id="addMyCocktail">mycock추가</div>
                               </div> -->
							<div class="mt-70"></div>
							<div class="mt-40" style="padding: 0px 140px 20px 10px;">
								<h5>설명</h5>${cock.tmi }
							</div>
						</div>

						<div class="single-widget-area">
							<h6>베이스</h6>
							<div class="widget-content">
								<ul class="tags">
									<li>${cock.base }</li>
								</ul>
							</div>
						</div>

						<div class="single-widget-area">
							<h6>연관 칵테일</h6>
							<div class="widget-content">
								<ul class="tags">
									<c:forEach items="${relevant }" var="cockList">
										<li><a href="detail.do?no=${cockList.no }">${cockList.name }</a>
										</li>
										<!-- <li><a href="#">performers</a></li> -->
									</c:forEach>
								</ul>
							</div>
						</div>

						<div class="single-widget-area">
							<h6>연관 글</h6>
							<div class="widget-content">
								<ul class="tags">
									<li><a href="#">나만의 준벅 레시피~</a></li>
									<li><a href="#">준벅 주문시 꿀팁</a></li>
								</ul>
							</div>
						</div>


					</div>

				</div>
			</div>
		</div>

		<div class="single-blog-post mb-100 wow fadeInUp"
			data-wow-delay="100ms">
			<div class="blog-content">
				<h3>레시피</h3>
				<h6>재료</h6>
				<div class="post-meta d-flex mb-30">
					<p class="tags">${cock.ingredient }</p>
				</div>
				<h6>기법</h6>
				<div class="post-meta d-flex mb-30">
					<p class="tags">${cock.technique }</p>
				</div>
				<h6>글라스</h6>
				<div class="post-meta d-flex mb-30">
					<p class="tags">${cock.glass }</p>
				</div>
				<h6>가니쉬</h6>
				<div class="post-meta d-flex mb-30">
					<p class="tags">${cock.garnish }</p>
				</div>
				<h6>만드는 법</h6>
				<p>${cock.recipe }</p>
				<br> <br>


				<div class="oneMusic-tabs-content">
					<ul class="nav nav-tabs" id="myTab" role="tablist">
						<li class="nav-item"><a class="nav-link" id="tab--1"
							data-toggle="tab" href="#tab1" role="tab" aria-controls="tab1"
							aria-selected="true">유래</a></li>
						<li class="nav-item"><a class="nav-link" id="tab--2"
							data-toggle="tab" href="#tab2" role="tab" aria-controls="tab2"
							aria-selected="false">관련 영상</a></li>
						<li class="nav-item"><a class="nav-link active" id="tab--3"
							data-toggle="tab" href="#tab3" role="tab" aria-controls="tab3"
							aria-selected="false">후기</a></li>
					</ul>

					<div class="tab-content mb-100" id="myTabContent">
						<div class="tab-pane fade" id="tab1" role="tabpanel"
							aria-labelledby="tab--1">
							<div class="oneMusic-tab-content">
								<!-- Tab Text -->
								<div class="oneMusic-tab-text">
									<p>${cock.tmi }</p>
								</div>
							</div>
						</div>
						<div class="tab-pane fade" id="tab2" role="tabpanel"
							aria-labelledby="tab--2">
							<div class="oneMusic-tab-content">
								<!-- Tab Text -->
								<div class="oneMusic-tab-text">${cock.url }</div>
							</div>
						</div>
						<div class="tab-pane fade show active" id="tab3" role="tabpanel"
							aria-labelledby="tab--3">
							<div class="oneMusic-tab-content">
								<!-- Tab Text -->
								<div class="oneMusic-tab-text">
									<!-- ========== reply Boxes ========== -->

									<br> <br>
									<div class="col-12">
										<div class="row" id="commArea">
											<!-- 댓글들어옴 -->
										</div>
									</div>


									<!-- ========== reply Boxes ========== -->

									<div class="newsletter-area mb-100">
										<div class="section-heading text-left mb-50">
											<div class="single-service-area d-flex flex-wrap mb-100">
												<div class="icon">
													<img src="img/member-img/${session_img_name }" alt=""
														style="width: 100%; height: 100%;" />
												</div>
											</div>
											<h2>${session_nickname }</h2>
										</div>
										<div class="newsletter-form">
											<c:choose>
												<c:when test="${not empty session_id }">
													<input type="text" name="content" id="content"
														placeholder="댓글 입력">
												</c:when>
												<c:otherwise>
													<input type="text" name="content" id="loginGo2"
														placeholder="로그인 후 댓글 작성 가능">
												</c:otherwise>
											</c:choose>
											<button id="addComm" class="btn oneMusic-btn">
												댓글 쓰기 <i class="fa fa-angle-double-right"></i>
											</button>
										</div>
									</div>

									<!-- Pagination -->
									<!-- <div class="oneMusic-pagination-area wow fadeInUp"
										data-wow-delay="300ms">
										<nav>
											<ul class="pagination">
												<li class="page-item active"><a class="page-link"
													href="#">01</a></li>
												<li class="page-item"><a class="page-link" href="#">02</a></li>
												<li class="page-item"><a class="page-link" href="#">03</a></li>
											</ul>
										</nav>
									</div> -->
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>
		</div>




	</div>

</div>


<!-- ##### Blog Area End ##### -->

<script type="text/javascript">
	
	//댓글리스트 
	$(document).ready(function(){
		$.ajax({
			type:"post",
			url:"listComm.do",
			data:{"no": $("#addMyCockNo").val()},
			success:function(data,textStatus){
				getList(data);
			}, error:function(data,textStatus){
				alert("error");
			}, complete:function(data,textStatus){}
		});
	});
	
	//칵테일 즐겨찾기 추가
	$("#addMyCocktail").on('click', function(){
		var img_change = document.getElementById("myCockSrc");
		$.ajax({
			type:"post",
			url:"addmycock.do",
			data:{"no":$("#addMyCockNo").val()},
			success:function(data,textStatus){
				if(data == '0'){
					alert("추가 완료");
					img_change.src = "img/core-img/bookmark_ck.png";
				}
				else if(data == '1'){
					alert("삭제 완료");
					img_change.src = "img/core-img/bookmark.png";
				}else if(data == '-1'){
					alert("서버 에러.");
				}
			}, error:function(data,textStatus){
				alert("error");
			}, complete:function(data,textStatus){}
		});
	});
	
	
	$("#loginGo").on('click',function(){
		var check = confirm('로그인시 가능한 서비스 입니다. 로그인 하시겠습니까?');
        if(check){
        	location.href="p_login.do";
        }else{
			return;        
        }
	});
	
	$("#loginGo2").on('click',function(){
		var check = confirm('로그인시 가능한 서비스 입니다. 로그인 하시겠습니까?');
        if(check){
        	location.href="p_login.do";
        }else{
			return;        
        }
	});

	//댓글작성 클릭시 데이터 입력 검사 및 추가
	$("#addComm").on('click',function(){
		var check = $("#content").val();
		if(check == ""){
			alert("댓글 내용을 입력하세요");
			$("#content").focus();
			return ;
		}
		$.ajax({
			type:"post",
			url:"addComm.do",
			data:{"id":$("#commId").val(), "no":$("#addMyCockNo").val(), "content":$("#content").val()},
			success:function(data,textStatus){
				if(data != null){
					getList(data);
					alert("댓글 작성 완료");
				}else{
					alert("댓글 작성 실패");
				}
			},error:function(data,textStatus){
				alert("error");
			}
		});
	});

	//댓글 작성 완료시 댓글목록 갱신 함수
	function getList(list) {
	var str = '';
	
		for(let comm of list){
			str += '<div class="col-12 col-md-6">';
			str += '<div class="single-service-area d-flex flex-wrap mb-100">';
			str += '<div class="icon">';
			str += '<img src="img/member-img/'+comm.img_name + '" alt="" style=" width: 100%; height: 100%;">'
			str += '</div><div class="text">';
			str += '<h5>'+ comm.nickname + '</h5>';
			str += '<p>' + comm.content + '<p>';
			str += '</div></div></div>';
		}
	$("#commArea").html(str);
	};
	
</script>

<%@ include file="../include/footer.jsp"%>