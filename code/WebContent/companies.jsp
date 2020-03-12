<%@page import="com.model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>

<html class="no-js" lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>Jober Desk | Responsive Job Portal Template</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- All Plugin Css -->
<link rel="stylesheet" href="css/plugins.css">

<!-- Style & Common Css -->
<link rel="stylesheet" href="css/common.css">
<link rel="stylesheet" href="css/main.css">

<style>
.btn2 {
    display: inline-block;
    font-size: 14px;
    font-weight: 400;
    line-height: 1.42857143;
    text-align: center;
    vertical-align: middle;
    cursor: pointer;
    border: 1px solid transparent;
    border-radius: 4px;
    background: gray;
    color: #ffffff;
    text-transform: uppercase;
    text-shadow: none;
    line-height: 1.2;
    margin: 20px auto;
    margin-left:20px;
    margin-right:20px;
    padding: 14px 25px;
}
.btn2:hover{
background:#da0833;
}
#warning{
text-align:center;
color:red;
margin-top:1%;
}
.inner-banner h1{
margin-top:-5%;
}
.caption p{
margin-bottom:50px;
}
</style>
</head>

<body>
	<%
		MemberDTO info = (MemberDTO) session.getAttribute("info");
	%>

	<!-- Navigation Start  -->
	<nav class="navbar navbar-default navbar-sticky bootsnav">

		<div class="container">
			<!-- Start Header Navigation -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#navbar-menu">
					<i class="fa fa-bars"></i>
				</button>
				<a class="navbar-brand" href="index.jsp"><img src="img/logo.png"
					class="logo" alt=""></a>
			</div>
			<!-- End Header Navigation -->

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse" id="navbar-menu">
				<ul class="nav navbar-nav navbar-right" data-in="fadeInDown"
					data-out="fadeOutUp">
					<li><a href="index.jsp">메인 화면</a></li>
					<%
						if (info == null) {
					%>
					<li><a href="login.jsp">로그인</a></li>

					<%
						} else {
					%>
					<li><a href="LogoutService.do">로그아웃</a></li>
					<li><%=info.getNm()%>님 환영합니다.</li>
					<%
						}
					%>
					<li><a href="companies.jsp">분석 결과</a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">메뉴</a>
						<ul class="dropdown-menu animated fadeOutUp"
							style="display: none; opacity: 1;">
							<li class="active"><a href="browse-job.jsp">내 정보</a></li>
							<li><a href="company-detail.jsp">커뮤니티</a></li>
							<li><a href="resume.jsp">상담 신청</a></li>
						</ul></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
	</nav>
	<!-- Navigation End  -->

	<!-- Main jumbotron for a primary marketing message or call to action -->
	<div><h5 id=warning>※ 경 고 : 위 서비스를 악용할 시 피해가 갈 수 있으니 주의하시기 바랍니다. ※</h5></div>

	<section class="inner-banner"
		style="backend: #242c36 url(https://via.placeholder.com/1920x600) no-repeat;">
		<h5 id=result>분석결과</h5>
		<div class="container">
			<div class="caption">
				<p>
					분석결과 <span>202 New job</span>
				</p>
				<h2>고소 가능 / 고소 불가능</h2>
			</div>
		</div>
	</section>

	<!-- 자세히 보기 버튼을 클릭할 때 -->

	<script type="text/javascript" src=js/jquery.min.js></script>
	<script language=javascript>
		$(function() {
			$(".profile-detail").hide();
		});
		if ('<%=info%>' == 'null') {
			$(function() {
				$(".btn.brows-btn").on("click", function() {
					var check=confirm('로그인이 필요한 서비스입니다.');
					if(check){
						location.href="login.jsp";
					}
				});
			});
		} else {
			$(function() {
				$(".btn.brows-btn").on("click", function() {
					$(".btn.brows-btn").hide()
					$(".profile-detail").slideDown()
				});
			});
		}
	</script>
	<section>
		<div class="row heading">
			<h2>Find Popular Jobs</h2>
			<p>자세한 분석결과를 보려면 <자세히 보기>를 눌러주세요</p>
		</div>
		<div class="row">
			<input type="button" class="btn brows-btn" value="자세히 보기" />

		</div>

			<section class="profile-detail">
				<div class="container">
					<div class="col-md-12">
						<div class="row">
							<div class="basic-information">
								<div class="col-md-9 col-sm-9">
									<div class="profile-content">
										<h2>
											Microsoft<span>Internet and computer software</span>
										</h2>
										<p>Now Hiring(102)</p>
										<ul class="information">
											<li><span>Address:</span>Menlo Park, CA</li>
											<li><span>Website:</span>Google.com</li>
											<li><span>Employee:</span>50,000 - 70,000 employer</li>
											<li><span>Mail:</span>info@google.com</li>
											<li><span>From:</span>1998</li>
										</ul>
									</div>
								</div>
								<div class="panel panel-default">
									<div class="panel-heading">
										<i class="fa fa-user fa-fw"></i> About Microsoft
									</div>
									<!-- /.panel-heading -->
									<div class="panel-body">
										<p>The front end is the part that users see and interact
											with, includes the User Interface, the animations, and
											usually a bunch of logic to talk to the backend. It is the
											visual bit that the user interacts with.</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			<section align = center>
			<input type="button" class="btn2" value="게시글로 공유" />
			<input type="button" class="btn2" value="1 : 1 상담 매칭" />
		</section>
			</section>
		


		<!-- <div class="container">
			<div class="row heading">
				<h2>Find Popular Jobs</h2>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do</p>
			</div>
			<div class="companies">
					<div class="company-list">
						<div class="row">
							<div class="col-md-2 col-sm-2">
								<div class="company-logo">
									<img src="img/google.png" class="img-responsive" alt="" />
								</div>
							</div>
							<div class="col-md-10 col-sm-10">
								<div class="company-content">
									<h3>IOS Developer<span class="full-time">Full Time</span></h3>
									<p><span class="company-name"><i class="fa fa-briefcase"></i>Google</span><span class="company-location"><i class="fa fa-map-marker"></i> 07th Avenue, New York, NY, United States</span><span class="package"><i class="fa fa-money"></i>$22,000-$50,000</span></p>
								</div>
							</div>
						</div>
					</div>
					
					<div class="company-list">
						<div class="row">
							<div class="col-md-2 col-sm-2">
								<div class="company-logo">
									<img src="img/microsoft.png" class="img-responsive" alt="" />
								</div>
							</div>
							<div class="col-md-10 col-sm-10">
								<div class="company-content">
									<h3>Back-End developer<span class="part-time">Part Time</span></h3>
									<p><span class="company-name"><i class="fa fa-briefcase"></i>Microsoft</span><span class="company-location"><i class="fa fa-map-marker"></i> 7th Avenue, New York, NY, United States</span><span class="package"><i class="fa fa-money"></i>$20,000-$52,000</span></p>
								</div>
							</div>
						</div>
					</div>
					
					<div class="company-list">
						<div class="row">
							<div class="col-md-2 col-sm-2">
								<div class="company-logo">
									<img src="img/apple.png" class="img-responsive" alt="" />
								</div>
							</div>
							<div class="col-md-10 col-sm-10">
								<div class="company-content">
									<h3>UI/UX Designer<span class="freelance">Freelance</span></h3>
									<p><span class="company-name"><i class="fa fa-briefcase"></i>Apple</span><span class="company-location"><i class="fa fa-map-marker"></i> 7th Avenue, New York, NY, United States</span><span class="package"><i class="fa fa-money"></i>$22,000-$50,000</span></p>
								</div>
							</div>
						</div>
					</div>
					
					<div class="company-list">
						<div class="row">
							<div class="col-md-2 col-sm-2">
								<div class="company-logo">
									<img src="img/wipro.png" class="img-responsive" alt="" />
								</div>
							</div>
							<div class="col-md-10 col-sm-10">
								<div class="company-content">
									<h3>IOS developer<span class="internship">Intership</span></h3>
									<p><span class="company-name"><i class="fa fa-briefcase"></i>Wipro</span><span class="company-location"><i class="fa fa-map-marker"></i> 8th Avenue, New York, NY, United States</span><span class="package"><i class="fa fa-money"></i>$24,000-$52,000</span></p>
								</div>
							</div>
						</div>
					</div>
					
					<div class="company-list">
						<div class="row">
							<div class="col-md-2 col-sm-2">
								<div class="company-logo">
									<img src="img/twitter.png" class="img-responsive" alt="" />
								</div>
							</div>
							<div class="col-md-10 col-sm-10">
								<div class="company-content">
									<h3>Marketing Holder<span class="full-time">Full Time</span></h3>
									<p><span class="company-name"><i class="fa fa-briefcase"></i>Twitter</span><span class="company-location"><i class="fa fa-map-marker"></i> 4th Avenue, New York, NY, United States</span><span class="package"><i class="fa fa-money"></i>$24,000-$48,000</span></p>
								</div>
							</div>
						</div>
					</div>
				</div>
			<div class="row">
				<input type="button" class="btn brows-btn" value="Brows All Jobs" />
			</div>
		</div> -->
	</section>



	<!-- footer start -->
	<!-- <footer>
			<div class="container">
				<div class="col-md-3 col-sm-6">
					<h4>Featured Job</h4>
					<ul>
						<li><a href="#">Browse Jobs</a></li>
						<li><a href="#">Premium MBA Jobs</a></li>
						<li><a href="#">Access Database</a></li>
						<li><a href="#">Manage Responses</a></li>
						<li><a href="#">Report a Problem</a></li>
						<li><a href="#">Mobile Site</a></li>
						<li><a href="#">Jobs by Skill</a></li>
					</ul>
				</div>
				
				<div class="col-md-3 col-sm-6">
					<h4>Latest Job</h4>
					<ul>
						<li><a href="#">Browse Jobs</a></li>
						<li><a href="#">Premium MBA Jobs</a></li>
						<li><a href="#">Access Database</a></li>
						<li><a href="#">Manage Responses</a></li>
						<li><a href="#">Report a Problem</a></li>
						<li><a href="#">Mobile Site</a></li>
						<li><a href="#">Jobs by Skill</a></li>
					</ul>
				</div>
				
				<div class="col-md-3 col-sm-6">
					<h4>Reach Us</h4>
					<address>
					<ul>
					<li>1201, Murakeu Market, QUCH07<br>
					United Kingdon</li>
					<li>Email: Support@job.com</li>
					<li>Call: 044 123 458 65879</li>
					<li>Skype: job@skype</li>
					<li>FAX: 123 456 85</li>
					</ul>
					</address>
				</div>
				
				<div class="col-md-3 col-sm-6">
					<h4>Drop A Mail</h4>
					<form>
						<input type="text" class="form-control input-lg" placeholder="Your Name">
						<input type="text" class="form-control input-lg" placeholder="Email...">
						<textarea class="form-control" placeholder="Message"></textarea>
						<button type="submit" class="btn btn-primary">Login</button>
					</form>
				</div>
				
				
			</div>
			<div class="copy-right">
			 <p>&copy;Copyright 2018 Jober Desk | Design By <a href="https://themezhub.com/">ThemezHub</a></p>
			</div>
		</footer> -->

	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/owl.carousel.min.js"></script>
	<script src="js/bootsnav.js"></script>
	<script src="js/main.js"></script>
</body>
</html>