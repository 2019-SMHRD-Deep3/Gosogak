<%@page import="com.model.AnalysisDTO"%>
<%@page import="com.model.AnalysisDAO"%>
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
.container{
margin:auto;
}
.basic-information {
	width:100%;
	margin:3%;
	position : relative;
	z-index: 1;
	background-color: #ffffff;
	padding: 30px 30px 20px;
	-webkit-box-shadow: 0 5px 25px 0 rgba(0, 0, 0, .07);
	box-shadow: 0 5px 25px 0 rgba(0, 0, 0, .07);
	border: 1px solid #eaecf1;
	display: table;
	float: left;
	height: 373px;
	position: relative;
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
.loginre {
	position: relative;
	padding: 30px 30px 20px;
	width: 50%;
	margin: auto;
}
table{
margin:auto;
width:95%;
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
				<h2>나의 분석내역/상담내역</h2>
				<p>
					<span>분석리스트</span>
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
						<button type="submit" class="btn btn-primary" name="myResult">Login</button>
					</div>
				</form>
			</div>
			<%
				} else {
			%>
			<div class="basic-information">
				<ul class="information">
					<h3>나의 분석 내역</h3><hr>
					<table>
						<tr>
							<th width="5%"></th>
							<th width="63%">댓글</th>
							<th width="8%">모욕성</th>
							<th width="8%">공연성</th>
							<th width="8%">특정성</th>
							<th width="8%">결과</th>
						</tr>

						<%
							AnalysisDAO andao = new AnalysisDAO();
								ArrayList<AnalysisDTO> an_list = andao.selectResult(info.getId());
								for (int i = an_list.size() - 1; i >= 0; i--) {
						%>
						<tr>
						<td><%=i+1 %></td>
							<td><%=an_list.get(i).getOriginal_data()%></td>
							<td><%=an_list.get(i).getScore_insurt()%></td>
							<td><%=an_list.get(i).getScore_public()%></td>
							<td><%=an_list.get(i).getScore_spec()%></td>
							<td><%=an_list.get(i).getResult()%></td>
						</tr>
						<%
							}
						%>

					</table>
				</ul>
			</div>

			<div class="basic-information">
				<ul class="information">
					<h3>나의 상담 내역</h3><hr>
					<table>
						<tr>
							<th width="5%"></th>
							<th width="10%">상담사</th>
							<th width="20%">제목</th>
							<th width="50%">내용</th>
							<th width="15%">날짜</th>
						</tr>

						<%
							CounselDAO counseldao = new CounselDAO();
								ArrayList<CounselDTO> list = counseldao.selectCounsel(info.getId());
								for (int i = list.size() - 1; i >= 0; i--) {
						%>
						<tr>
							<td><%=list.get(i).getCounsel_cd()%></td>
							<td><%=list.get(i).getCounsel_manager()%></td>
							<td><%=list.get(i).getCounsel_title()%></td>
							<td><%=list.get(i).getCounsel_content()%></td>
							<td><%=list.get(i).getCounsel_dt()%></td>
						</tr>
						<%
							}
						%>
					</table>
				</ul>
			</div>




			<%
				}
			%>

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

	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/owl.carousel.min.js"></script>
	<script src="js/bootsnav.js"></script>
	<script src="js/main.js"></script>
</body>
</html>