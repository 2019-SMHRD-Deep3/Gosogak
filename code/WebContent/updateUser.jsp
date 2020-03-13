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
					<%-- <li><%= info.getNm() %>님 환영합니다.</li> --%>
					<%
						}
					%>
					<li><a href="result.jsp">분석 결과</a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">메뉴</a>
						<ul class="dropdown-menu animated fadeOutUp"
							style="display: none; opacity: 1;">
							<li class="active"><a href="myIndex.jsp">내 정보</a></li>
							<li><a href="community.jsp">커뮤니티</a></li>
							<li><a href="counsel.jsp">상담 신청</a></li>
						</ul></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
	</nav>
	<!-- Navigation End  -->

	<!-- Inner Banner -->
	<section class="inner-banner"
		style="backend: #242c36 url(https://via.placeholder.com/1920x600) no-repeat;">
		<div class="container">
			<div class="caption">
				<h2>Get your jobs</h2>
				<p>
					Get your Popular jobs <span>202 New job</span>
				</p>
			</div>
		</div>
	</section>

	<section class="jobs">
		<div class="container">
			<table class="info">
				<tr>
					<td>
						<div class="row heading">
							<%
								if (info == null) {
							%>
							<span><h2>로그인이 필요합니다.</h2></span>
							<div class="col-md-6 col-sm-8 col-md-offset-3 col-sm-offset-2">
								<form action="LoginService.do">
									<input type="text" class="form-control input-lg"
										placeholder="User Name" name="id"> <input
										type="password" class="form-control input-lg"
										placeholder="Password" name="pw">
									<button type="submit" class="btn btn-primary">Login</button>
								</form>
							</div>
							<td>
						<div class="row heading">
							<span><h2>상담내역</h2></span> <span><p>없음</p></span>
						</div>
					</td>
							<% } else{ %>
							<form action="UpdateUserService.do" method="post">
						<input name="pw" type="password"  class="form-control input-lg" placeholder="비밀번호를 입력하세요"><br>
						<input name="nm" type="text"  class="form-control input-lg" placeholder="이름을 입력하세요"><br>
						<input name="email"type="text"  class="form-control input-lg" placeholder="이메일을 입력하세요"><br>
						<button type="submit" class="btn btn-primary">변경</button>
						</form>
						</div>
					</td>
					<td>
						<div class="row heading">
							<span><h2>상담내역</h2></span>
							<%-- <% if %> --%>
							 <span><p>게시글</p></span>
						</div>
					</td>
				</tr>
				<% } %>
			</table>
			<!-- <div class="row top-pad">
					<div class="filter">
						<div class="col-md-2 col-sm-3">
							<p>Search By:</p>
						</div>
						
						<div class="col-md-10 col-sm-9 pull-right">
							<ul class="filter-list">
								<li>
									<input id="checkbox-1" class="checkbox-custom" name="checkbox-1" type="checkbox" checked="">
									<label for="checkbox-1" class="part-time checkbox-custom-label">Part Time</label>
								</li>
								
								<li>
									<input id="checkbox-2" class="checkbox-custom" name="checkbox-2" type="checkbox">
									<label for="checkbox-2" class="full-time checkbox-custom-label">Full Time</label>
								</li>
								
								<li>
									<input id="checkbox-3" class="checkbox-custom" name="checkbox-3" type="checkbox">
									<label for="checkbox-3" class="freelancing checkbox-custom-label">Freelancing</label>
								</li>
								
								<li>
									<input id="checkbox-4" class="checkbox-custom" name="checkbox-4" type="checkbox">
									<label for="checkbox-4" class="internship checkbox-custom-label">Internship</label>
								</li>

							</ul>	
						</div>
					</div>
				</div>
				<div class="companies">
					<div class="company-list">
						<div class="row">
							<div class="col-md-2 col-sm-2">
								<div class="company-logo">
									<img src="img/google.png" class="img-responsive" alt="" />
								</div>
							</div>
							<div class="col-md-8 col-sm-8">
								<div class="company-content">
									<h3>Front-End developer</h3>
									<p><span class="company-name"><i class="fa fa-briefcase"></i>Google</span><span class="company-location"><i class="fa fa-map-marker"></i> 7th Avenue, New York, NY, United States</span><span class="package"><i class="fa fa-money"></i>$25,000-$50,000</span></p>
								</div>
							</div>
							<div class="col-md-2 col-sm-2">
								<button type="submit" class="btn view-job" name="View Job">View Job</button>
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
							<div class="col-md-8 col-sm-8">
								<div class="company-content">
									<h3>Back-End developer</h3>
									<p><span class="company-name"><i class="fa fa-briefcase"></i>Google</span><span class="company-location"><i class="fa fa-map-marker"></i> 7th Avenue, New York, NY, United States</span><span class="package"><i class="fa fa-money"></i>$25,000-$50,000</span></p>
								</div>
							</div>
							<div class="col-md-2 col-sm-2">
								<button type="submit" class="btn view-job" name="View Job">View Job</button>
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
							<div class="col-md-8 col-sm-8">
								<div class="company-content">
									<h3>UI/UX Developer</h3>
									<p><span class="company-name"><i class="fa fa-briefcase"></i>Google</span><span class="company-location"><i class="fa fa-map-marker"></i> 7th Avenue, New York, NY, United States</span><span class="package"><i class="fa fa-money"></i>$25,000-$50,000</span></p>
								</div>
							</div>
							<div class="col-md-2 col-sm-2">
								<button type="submit" class="btn view-job" name="View Job">View Job</button>
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
							<div class="col-md-8 col-sm-8">
								<div class="company-content">
									<h3>IOS developer</h3>
									<p><span class="company-name"><i class="fa fa-briefcase"></i>Google</span><span class="company-location"><i class="fa fa-map-marker"></i> 7th Avenue, New York, NY, United States</span><span class="package"><i class="fa fa-money"></i>$25,000-$50,000</span></p>
								</div>
							</div>
							<div class="col-md-2 col-sm-2">
								<button type="submit" class="btn view-job" name="View Job">View Job</button>
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
							<div class="col-md-8 col-sm-8">
								<div class="company-content">
									<h3>Market Holder</h3>
									<p><span class="company-name"><i class="fa fa-briefcase"></i>Google</span><span class="company-location"><i class="fa fa-map-marker"></i> 7th Avenue, New York, NY, United States</span><span class="package"><i class="fa fa-money"></i>$25,000-$50,000</span></p>
								</div>
							</div>
							<div class="col-md-2 col-sm-2">
								<button type="submit" class="btn view-job" name="View Job">View Job</button>
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
							<div class="col-md-8 col-sm-8">
								<div class="company-content">
									<h3>Back-End developer</h3>
									<p><span class="company-name"><i class="fa fa-briefcase"></i>Google</span><span class="company-location"><i class="fa fa-map-marker"></i> 7th Avenue, New York, NY, United States</span><span class="package"><i class="fa fa-money"></i>$25,000-$50,000</span></p>
								</div>
							</div>
							<div class="col-md-2 col-sm-2">
								<button type="submit" class="btn view-job" name="View Job">View Job</button>
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
							<div class="col-md-8 col-sm-8">
								<div class="company-content">
									<h3>UI/UX Developer</h3>
									<p><span class="company-name"><i class="fa fa-briefcase"></i>Google</span><span class="company-location"><i class="fa fa-map-marker"></i> 7th Avenue, New York, NY, United States</span><span class="package"><i class="fa fa-money"></i>$25,000-$50,000</span></p>
								</div>
							</div>
							<div class="col-md-2 col-sm-2">
								<button type="submit" class="btn view-job" name="View Job">View Job</button>
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
							<div class="col-md-8 col-sm-8">
								<div class="company-content">
									<h3>IOS developer</h3>
									<p><span class="company-name"><i class="fa fa-briefcase"></i>Google</span><span class="company-location"><i class="fa fa-map-marker"></i> 7th Avenue, New York, NY, United States</span><span class="package"><i class="fa fa-money"></i>$25,000-$50,000</span></p>
								</div>
							</div>
							<div class="col-md-2 col-sm-2">
								<button type="submit" class="btn view-job" name="View Job">View Job</button>
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
							<div class="col-md-8 col-sm-8">
								<div class="company-content">
									<h3>Market Holder</h3>
									<p><span class="company-name"><i class="fa fa-briefcase"></i>Google</span><span class="company-location"><i class="fa fa-map-marker"></i> 7th Avenue, New York, NY, United States</span><span class="package"><i class="fa fa-money"></i>$25,000-$50,000</span></p>
								</div>
							</div>
							<div class="col-md-2 col-sm-2">
								<button type="submit" class="btn view-job" name="View Job">View Job</button>
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
							<div class="col-md-8 col-sm-8">
								<div class="company-content">
									<h3>Back-End developer</h3>
									<p><span class="company-name"><i class="fa fa-briefcase"></i>Google</span><span class="company-location"><i class="fa fa-map-marker"></i> 7th Avenue, New York, NY, United States</span><span class="package"><i class="fa fa-money"></i>$25,000-$50,000</span></p>
								</div>
							</div>
							<div class="col-md-2 col-sm-2">
								<button type="submit" class="btn view-job" name="View Job">View Job</button>
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
							<div class="col-md-8 col-sm-8">
								<div class="company-content">
									<h3>UI/UX Developer</h3>
									<p><span class="company-name"><i class="fa fa-briefcase"></i>Google</span><span class="company-location"><i class="fa fa-map-marker"></i> 7th Avenue, New York, NY, United States</span><span class="package"><i class="fa fa-money"></i>$25,000-$50,000</span></p>
								</div>
							</div>
							<div class="col-md-2 col-sm-2">
								<button type="submit" class="btn view-job" name="View Job">View Job</button>
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
							<div class="col-md-8 col-sm-8">
								<div class="company-content">
									<h3>IOS developer</h3>
									<p><span class="company-name"><i class="fa fa-briefcase"></i>Google</span><span class="company-location"><i class="fa fa-map-marker"></i> 7th Avenue, New York, NY, United States</span><span class="package"><i class="fa fa-money"></i>$25,000-$50,000</span></p>
								</div>
							</div>
							<div class="col-md-2 col-sm-2">
								<button type="submit" class="btn view-job" name="View Job">View Job</button>
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
							<div class="col-md-8 col-sm-8">
								<div class="company-content">
									<h3>Market Holder</h3>
									<p><span class="company-name"><i class="fa fa-briefcase"></i>Google</span><span class="company-location"><i class="fa fa-map-marker"></i> 7th Avenue, New York, NY, United States</span><span class="package"><i class="fa fa-money"></i>$25,000-$50,000</span></p>
								</div>
							</div>
							<div class="col-md-2 col-sm-2">
								<button type="submit" class="btn view-job" name="View Job">View Job</button>
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
	<footer>
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
						<li>1201, Murakeu Market, QUCH07<br> United Kingdon
						</li>
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
					<input type="text" class="form-control input-lg"
						placeholder="Your Name"> <input type="text"
						class="form-control input-lg" placeholder="Email...">
					<textarea class="form-control" placeholder="Message"></textarea>
					<button type="submit" class="btn btn-primary">Login</button>
				</form>
			</div>


		</div>
		<div class="copy-right">
			<p>
				&copy;Copyright 2018 Jober Desk | Design By <a
					href="https://themezhub.com/">ThemezHub</a>
			</p>
		</div>
	</footer>

	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/owl.carousel.min.js"></script>
	<script src="js/bootsnav.js"></script>
	<script src="js/main.js"></script>
</body>
</html>