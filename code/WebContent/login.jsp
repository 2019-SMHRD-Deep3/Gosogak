<%@page import="com.model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html class="no-js" lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>고소각 | 로그인</title>
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
                alt=""></a>
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
                  <li><div style="float: right; margin-top:15%;margin-right:-50%;"><%if(info!=null){ %><%=info.getNm()%>님 환영합니다.
					<%}else {%><%} %></div></li>
            </ul>
         </div>
         <!-- /.navbar-collapse -->
      </div>
   </nav>
   <!-- Navigation End  -->
<!--  로그인 실패 판단여부 -->
	<script language=javascript>
      if ("<%=request.getParameter("success")%>"=="False") {
                 alert('로그인 실패');

      } 
   </script>
   
   
	<!-- 로그인 섹션 -->
	<section class="login-wrapper">
		<div class="container">
			<div class="col-md-6 col-sm-8 col-md-offset-3 col-sm-offset-2">
				<form action="LoginService.do">
					<img class="img-responsive" alt="logo" src="img/logo.png"> <input
						type="text" class="form-control input-lg" placeholder="User Name"
						name="id"> <input type="password"
						class="form-control input-lg" placeholder="Password" name="pw">
					<%
						if (request.getParameter("detail") != null) {
					%>
					<button type="submit" class="btn btn-primary" name="detail"
						value="result">Login</button>
						
					<%
						} else if (request.getParameter("counsel") != null) {
					%>
					<button type="submit" class="btn btn-primary" name="counsel"
						value="result">Login</button>

					<%
						} else if (request.getParameter("write") != null) {
					%>
					<button type="submit" class="btn btn-primary" name="write"
						value="community">Login</button>	
					<%
						} else {
					%>
					<button type="submit" class="btn btn-primary">Login</button>
					
					<%
						}
					%>

				</form>
			</div>
		</div>
	</section>
	
	<!-- 회원가입 성공 판단여부   -->
	<script language=javascript>

    if ("<%=request.getParameter("joinsuccess")%>"=="False") {
                 alert('회원가입 실패');
      }
   </script>
	
	
	<!-- login section End -->
	<section class="join-wrapper">
		<div class="container">
			<div class="col-md-6 col-sm-8 col-md-offset-3 col-sm-offset-2">
				<form action="JoinService.do">
					<p>회원 가입</p>
					<input name="id" type="text" class="form-control input-lg"
						placeholder="id을 입력하세요"><br> <input name="pw"
						type="password" class="form-control input-lg"
						placeholder="pw를 입력하세요"><br> <input name="nm"
						type="text" class="form-control input-lg"
						placeholder="name을 입력하세요"><br> <input name="email"
						type="text" class="form-control input-lg"
						placeholder="email을 입력하세요"><br>
					<button type="submit" class="btn btn-primary">JoinUs</button>
				</form>
			</div>
		</div>
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
	<!--  <script type="text/javascript" src="../js/jquery-3.2.1.js"></script> -->


	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/owl.carousel.min.js"></script>
	<script src="js/bootsnav.js"></script>
	<script src="js/main.js"></script>
</body>
</html>