<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
  	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>검색결과 :: Tripster</title>
	
    <!-- Bootstrap -->
    <link href="/resources/dist/css/bootstrap.css" rel="stylesheet" media="screen">
    <link href="/resources/assets/css/custom.css" rel="stylesheet" media="screen">
	<link href="/resources/examples/carousel/carousel.css" rel="stylesheet">
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="assets/js/html5shiv.js"></script>
      <script src="assets/js/respond.min.js"></script>
    <![endif]-->
	
    <!-- Fonts -->	
	<link href='http://fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:700,400,300,300italic' rel='stylesheet' type='text/css'>	
	<!-- Font-Awesome -->
    <link rel="stylesheet" type="text/css" href="/resources/assets/css/font-awesome.css" media="screen" />
    <!--[if lt IE 7]><link rel="stylesheet" type="text/css" href="assets/css/font-awesome-ie7.css" media="screen" /><![endif]-->
    <!-- REVOLUTION BANNER CSS SETTINGS -->
    <link rel="stylesheet" type="text/css" href="/resources/css/fullscreen.css" media="screen" />
	<link rel="stylesheet" type="text/css" href="/resources/rs-plugin/css/settings.css" media="screen" />
    <!-- Picker -->	
	<link rel="stylesheet" href="/resources/assets/css/jquery-ui.css" />	
	<!-- bin/jquery.slider.min.css -->
	<link rel="stylesheet" href="/resources/plugins/jslider/css/jslider.css" type="text/css">
	<link rel="stylesheet" href="/resources/plugins/jslider/css/jslider.round.css" type="text/css">	
    <!-- jQuery -->	
    <script src="/resources/assets/js/jquery.v2.0.3.js"></script>
	<!-- bin/jquery.slider.min.js -->
	<script type="text/javascript" src="/resources/plugins/jslider/js/jshashtable-2.1_src.js"></script>
	<script type="text/javascript" src="/resources/plugins/jslider/js/jquery.numberformatter-1.2.3.js"></script>
	<script type="text/javascript" src="/resources/plugins/jslider/js/tmpl.js"></script>
	<script type="text/javascript" src="/resources/plugins/jslider/js/jquery.dependClass-0.1.js"></script>
	<script type="text/javascript" src="/resources/plugins/jslider/js/draggable-0.1.js"></script>
	<script type="text/javascript" src="/resources/plugins/jslider/js/jquery.slider.js"></script>
	<!-- end -->
  </head>
  <body id="top" class="thebg" >

	<!--####### HEADER #######-->
	<%@include file="../include/header2.jsp" %>
	
	<div class="container breadcrub">
	    <div>
			<a class="homebtn left" href="#"></a>
			<div class="left">
				<ul class="bcrumbs">
					<li>/</li>
					<li><a href="#">Hotels</a></li>
					<li>/</li>
					<li><a href="#">U.S.A.</a></li>
					<li>/</li>					
					<li><a href="#" class="active">New York</a></li>					
				</ul>				
			</div>
			<a class="backbtn right" href="#"></a>
		</div>
		<div class="clearfix"></div>
		<div class="brlines"></div>
	</div>	


	<!--####### CONTAINER #######-->
	<div class="container">
		<!-- CONTENTS CONTAINER -->
		<div class="container pagecontainer offset-0">	
			
			<!-- LEFT CONTENT: SIDE FILTERS -->
			<div class="col-md-3 filters offset-0">
				<ul class="blogcat margleft20 margright20 margtop10">
					<li class="size16">
						<a href="result?keyword=${cri.keyword }&go=total" >
						<span class="hidetext">'${cri.keyword }'검색결과</span>&nbsp; 
						<span class="badge indent0">${getNum.get("totalNum") }</span></a></li>
					<li class="">
						<a href="result?keyword=${cri.keyword }&go=contents">
						<span class="hidetext">컨텐츠</span>&nbsp; 
						<span class="badge indent0">${getNum.get("contentsNum") }</span></a></li>
					<li class="">
						<a href="result?keyword=${cri.keyword }&go=plan">
						<span class="hidetext">일정</span>&nbsp; 
						<span class="badge indent0">${getNum.get("planNum") }</span></a></li>
					<li class="">
						<a href="result?keyword=${cri.keyword }&go=member">
						<span class="hidetext">회원</span>&nbsp; 
						<span class="badge indent0">${getNum.get("memberNum") }</span></a></li>
				</ul>
			</div>
			
			<!-- RIGHT CONTENT -->
			<div class="rightcontent col-md-9 offset-0">
				<div class="tab-content6">					
					<!-- 컨텐츠 리스트 -->
					<div class="contents " id="contentsList">
						<!-- Top FILTERS -->
						<div class="hpadding20">
							<div class="topsortby">
								<div class="col-md-4 offset-0">
									
									<div class="left mt7"><b>Sort by:</b></div>
									
									<div class="right wh70percent">
										<select class="form-control mySelectBoxClass ">
										  <option selected>Guest rating</option>
										  <option>5 stars</option>
										  <option>4 stars</option>
										  <option>3 stars</option>
										  <option>2 stars</option>
										  <option>1 stars</option>
										</select>
									</div>
		
								</div>			
								<div class="col-md-4">
									<div class="w50percent">
										<div class="wh90percent">
											<select class="form-control mySelectBoxClass ">
											  <option selected>Name</option>
											  <option>A to Z</option>
											  <option>Z to A</option>
											</select>
										</div>
									</div>
									<div class="w50percentlast">
										<div class="wh90percent">
											<select class="form-control mySelectBoxClass ">
											  <option selected>Price</option>
											  <option>Ascending</option>
											  <option>Descending</option>
											</select>
										</div>
									</div>					
								</div>
								<div class="col-md-4 offset-0">
									<button class="popularbtn left">Most Popular</button>
									<div class="right">
										<button class="gridbtn" onClick="window.open('list2.html','_self');">&nbsp;</button>
										<button class="listbtn active">&nbsp;</button>
									</div>
								</div>
							</div>
						</div>
						<!-- End of Top FILTERS-->
						
						<div class="itemscontainer offset-1" >
							<!--####### 컨텐츠 검색결과 : 템플릿 z-cruise-list.html #######-->
							<c:forEach items="${contentsList}" var = "esContentsVO" begin="0" end="9">
								<div class="offset-2" >
									<div class="col-md-4 offset-0" >
										<div class = "listitem2" >
											<a href="/resources/updates/update1/img/activities/act04.jpg" data-footer="A custom footer text" data-title="A random title" data-gallery="multiimages" data-toggle="lightbox">
											<img src=${esContentsVO.contents_thumbnail } alt="" style="display:block" /></a>
											<div class="liover"></div>
											<a class="fav-icon" href="#"></a>
											<a class="book-icon" href="details.html"></a>
										</div>	
									</div>
									<div class="col-md-8 offset-0" style="border:1px solid #e6e6e6" >
										<div class="itemlabel4" style="height:208px;">
											<div class="labelright">
												<img src="/resources/images/filter-rating-.png" width="60" alt=""><br><br><br>
												<img src="/resources/images/user-rating-5.png" width="60" alt=""><br>
												<span class="size11 grey">${esContentsVO.contents_review_cnt} Reviews</span><br><br>
												<span class="green size18"><b>1 </b>Plan</span><br>
												<span class="size11 grey margbot20">/ ${esContentsVO.contents_scrap_cnt} Scrap</span><br><br>
											 	<button class="bookbtn mt1" type="submit">Detail</button>		
											</div>
											<div class="labelleft">			
												<span class="size16"><a href="/contents/${esContentsVO.category_id }/${esContentsVO.contents_id }"><b>${esContentsVO.contents_title}</b></a></span><br>
												<span class="opensans size14 grey">
													<span class="grey2">Category:
													<c:set var="category" value="${esContentsVO.category_id }"/>
													<c:choose>
														<c:when test="${category == 1 }">맛집</c:when>
														<c:otherwise>관광지</c:otherwise>
													</c:choose>
													</span>
												</span><br>
												<div class="line4 wh80percent"></div>
													<p class="grey size14 lh6">
														<span class="opensans size14 grey2">Location:</span> ${esContentsVO.contents_location }<br>
													</p>
												<div class="line4 wh80percent"></div>	
													<p class="grey size14 lh6">
														<span class="opensans size14 grey2">Keyword:</span>${esContentsVO.contents_keyword }<br>
													</p>	
											</div>
										
										<div class="clearfix"></div>
										
										<div class="clearfix"></div>
									</div>
									</div>
								</div>
								<div class="clearfix"></div>
								<div class="offset-2" style="padding-top:20px"><!-- <hr class="featurette-divider3"> --></div>
							</c:forEach>
							
							<div class="offset-2"><hr class="featurette-divider2" /></div>
							<br/><br/>
							<div class="clearfix"></div>
						
							<!-- pagination -->
							<div class="hpadding20">
								<ul class="pagination right paddingbtm20">
									<c:set value="contents" var="go"/>
									
									<c:if test="${pageMaker.prev }">
										<li><a href="${pageMaker.makeQuery(pageMaker.startPage-1,go) }">&laquo;</a></li>
									</c:if>
									
									<c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }" var="idx">
										
										<li id="contentsPage"
											<c:out value="${pageMaker.cri.page == idx?'class=active':'' }"></c:out>>
											<a href=${pageMaker.makeQuery(idx,go) } >${idx }</a>
										</li>
										
									</c:forEach>
									
									<c:if test="${pageMaker.next && pageMaker.endPage > 0 }">
										<li><a href="${pageMaker.makeQuery(pageMaker.endPage+1,go) }">&raquo;</a></li>
									</c:if>
								</ul>
							</div>
							
						</div>
					</div>					
					<!-- 컨텐츠 리스트 끝 -->		
				</div>	
			</div>
		</div>
		<!-- END OF CONTENTS CONTAINER -->
	</div>
	<!-- END OF Container -->
	
	<!--####### FOOTER #######-->
	<%@include file="../include/footer.jsp" %>

    <!-- Javascript -->	
    <script src="/resources/assets/js/js-list4.js"></script>	
    <!-- Custom Select -->
	<script type='text/javascript' src='/resources/assets/js/jquery.customSelect.js'></script>
    <!-- Custom Select -->
	<script type='text/javascript' src='/resources/js/lightbox.js'></script>	
    <!-- JS Ease -->	
    <script src="/resources/assets/js/jquery.easing.js"></script>
    <!-- Custom functions -->
    <script src="/resources/assets/js/functions.js"></script>
    <!-- jQuery KenBurn Slider  -->
    <script type="text/javascript" src="/resources/rs-plugin/js/jquery.themepunch.revolution.min.js"></script>
    <!-- Counter -->	
    <script src="/resources/assets/js/counter.js"></script>	
    <!-- Nicescroll  -->	
	<script src="/resources/assets/js/jquery.nicescroll.min.js"></script>
    <!-- Picker -->	
	<script src="/resources/assets/js/jquery-ui.js"></script>
    <!-- Bootstrap -->	
    <script src="/resources/dist/js/bootstrap.min.js"></script>
  </body>

</html>