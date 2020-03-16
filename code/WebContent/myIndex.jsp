<%@page import="com.model.CounselDTO"%>
<%@page import="com.model.CounselDAO"%>
<%@page import="com.model.PostDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.model.PostDAO"%>
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
.basic-information {
	margin:auto;
	position: relative;
	z-index: 1;
	background-color: #ffffff;
	padding: 30px 30px 20px;
	-webkit-box-shadow: 0 5px 25px 0 rgba(0, 0, 0, .07);
	box-shadow: 0 5px 25px 0 rgba(0, 0, 0, .07);
	border: 1px solid #eaecf1;
	display: table;
	width: 50%;
	height: 373px;
}

.loginre {
	position: relative;
	padding: 30px 30px 20px;
	width: 50%;
	margin: auto;
}

th {
	padding: 1px;
	border-bottom: 1px solid #333;
}

td {
	padding: 1px;
	border-bottom: 1px solid lightgray;
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
					<%
						}
					%>
					<li><a href="result.jsp">분석 하기</a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">메뉴</a>
						<ul class="dropdown-menu animated fadeOutUp"
							style="display: none; opacity: 1;">
							<li class="active"><a href="myIndex.jsp">내 정보</a></li>
							<li><a href="community.jsp">커뮤니티</a></li>
							<li><a href="counsel.jsp">상담 신청</a></li>
							<li><a href="myResult.jsp">나의 분석내역/상담내역</a></li>
						</ul></li>
					<li><div
							style="float: right; margin-top: 15%; margin-right: -50%;">
							<%
								if (info != null) {
							%><%=info.getNm()%>님 환영합니다.
							<%
								} else {
							%>
							<%
								}
							%>
						</div></li>
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
				<h2>내정보/분석리스트</h2>
				<p>
					<span>내정보/분석리스트</span>
				</p>
			</div>
		</div>
	</section>



	<!-- 	<section class="profile-detail" > -->
	<section>
		<div class="container">
			<!-- 			<div class="col-md-12">
				<div class="row"> -->

			<%
				if (info == null) {
			%>
			<div class="loginre">
				<h3>로그인이 필요합니다.</h3>
				<hr>
				<br> <br>
				<form action="LoginService.do">
					<input type="text" class="form-control input-lg"
						placeholder="User Name" name="id" width="150px"> <input
						type="password" class="form-control input-lg"
						placeholder="Password" name="pw"><br> <br>
					<div align="center">
						<button type="submit" class="btn btn-primary" name="myinfo">Login</button>
					</div>
				</form>
			</div>


				<!-- 	<div>
				<ul class="information">
					<h3>분석정보</h3>
					<li><span></span></li>
					<li><span></span></li>
					<li><span></span></li>
					<li><span></span></li>
					<li><span></span></li>
				</ul>
			</div> -->
				<%
					} else {
				%>
				<div class="basic-information">
					<ul class="information" allign="center">
						<h3>나의정보</h3>
						<br>
						<li><span><h5>아이디</h5></span><%=info.getId()%></li>
						<li><span><h5>닉네임</h5></span><%=info.getNm()%></li>
						<li><span><h5>E-mail</h5></span><%=info.getEmail()%></li>
						<%-- <li><span><h5>등급 </h5></span><%=info.getGrade() %></li>--%>
						<br>
						<div align="center">
							<button onclick="window.location.href='updateUser.jsp'"
								class="btn btn-primary">정보 수정</button>
						</div>
					</ul>

				</div>
				
				<%
					}
				%>
				<!-- 			</div> -->
				<!-- </div> -->
			<!-- 	</section> -->
		</div>
	</section>
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