<%@page import="com.model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>

<html class="no-js" lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>고소각 | 내 정보 수정</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- All Plugin Css -->
<link rel="stylesheet" href="css/plugins.css">

<!-- Style & Common Css -->
<link rel="stylesheet" href="css/common.css">
<link rel="stylesheet" href="css/main.css">

<style>
.basic-information {
	position: relative;
	z-index: 1;
	background-color: #ffffff;
	padding: 30px 30px 20px;
	-webkit-box-shadow: 0 5px 25px 0 rgba(0, 0, 0, .07);
	box-shadow: 0 5px 25px 0 rgba(0, 0, 0, .07);
	border: 1px solid #eaecf1;
	display: table;
	width: 50%;
	float: center;
	margin:auto;
}

.inner-banner .caption{
position:relative;
}
.inner-banner h2{
color:#white;
font-weight:400;
display: block;
 margin-bottom: 25px;
}
.inner-banner p{
color:#white;
font-weight:300;
display: block;
font-size:20px;
margin-top:15px;
}
.inner-banner p span{
color:white;
}
.inner-banner:before{
content:"";
display:block;
top:0;
bottom:0;
left:0;
right:0;
position:absolute;
background:#bc2610;

}
td{
width:40%;
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

	<!-- Inner Banner -->
	<section class="inner-banner"
		style="backend: #242c36 url(https://via.placeholder.com/1920x600) no-repeat;">
		<div class="container">
			<div class="caption">
				<h2>내 정보/정보 수정</h2>
				<p>
					Get your Popular jobs <span>202 New job</span>
				</p>
			</div>
		</div>
	</section>

	<section class="jobs" >
		<div class="container">
						<div class="basic-information">
							<form action="UpdateUserService.do">
						<h3>내 정보</h3><hr><br>
						<table>
					<tr><td><h5>아이디</h5></td><td><%=info.getId() %></td></tr>
					<tr><td><h5>비밀번호</h5></td><td><input name="pw" type="password"  class="form-control input-lg" placeholder="비밀번호를 입력하세요"></td></tr>
					<tr><td><h5>닉네임</h5></td><td><input name="nm" type="text"  class="form-control input-lg" placeholder="이름을 입력하세요"></td></tr>
					<tr><td><h5>E-mail</h5></td><td><input name="email"type="text"  class="form-control input-lg" placeholder="이메일을 입력하세요"></td></tr>
						</table><br>
						<div align="center"><button type="submit" class="btn btn-primary">변경</button></div>
						</form>
						</div></div>
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