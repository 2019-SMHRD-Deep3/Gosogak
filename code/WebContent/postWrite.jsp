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
input{
border:none;}
table {
	border-collapse: separate;
}
#title{
padding:0.5%;
width:10%;
text-align:center;
}
#post_title {
	width:90%;
	text-align:center;
}
textarea{
width:98.6%;
height:100%;
}
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
	margin-bottom:10px;
	padding: 10px 20px;
}

.btn2:hover {
	background: #da0833;
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
                  <li><div style="float: right; margin-top:15%;margin-right:-50%;"><%if(info!=null){ %><%=info.getNm()%>님 환영합니다.
					<%}else {%><%} %></div></li>
            </ul>
         </div>
         <!-- /.navbar-collapse -->
      </div>
   </nav>
   <!-- Navigation End  -->

	<!-- Main jumbotron for a primary marketing message or call to action -->
	<section class="inner-banner"
		style="backend: #242c36 url(https://via.placeholder.com/1920x600) no-repeat;">
		<div class="container">
			<div class="caption">
				<h2>공개 상담 게시판</h2>
				<p>
					건전한 인터넷 문화를 만들어 갑시다 <span>/욕설,타인비방,악성루머,성적 게시글 무통보 삭제</span>
				</p>
			</div>
		</div>
	</section>


	<section class="profile-detail">



		<div class="container">
			<div class="col-md-12">
				<div class="row">
					<div class="basic-information">
					
					
					
						<form action="InsertPostCon.do" name="boardForm">
							<input type="hidden" name="board_id"
								value="${sessionScope.sessionID}">
							<table width="80%" bordercolor="lightgray" align="center">
								<tr border>
									<td id="title">작성자</td>
									<td><%=info.getNm() %></td>
								</tr>
								<tr>
									<td id="title">제 목</td>
									<td><input name="post_title" size="90%"/></td>
								</tr>
								<tr>
									<td id="title">내 용</td>
									<td><textarea name="post_content" cols="72" rows="20"></textarea>
									</td>
								</tr>
								<!-- <tr>
									<td id="title">파일첨부</td>
									<td><input type="file" name="board_file" /></td>
								</tr> -->

								<tr align="center" valign="middle">
									<td colspan="5"><input class="btn2" type="reset" value="취소">
										<input class="btn2" type="button"value="목록">
										<input class="btn2" type="submit" value="등록"> </td>
								</tr>
							</table>
						</form>
						
						
						
					</div>
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

	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/owl.carousel.min.js"></script>
	<script src="js/bootsnav.js"></script>
	<script src="js/main.js"></script>
</body>
</html>
