
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
<!-- ------------------------------------------------------------------------- -->
<style>
.basic-information {
	position: relative;
	z-index: 1;
	background-color: #ffffff;
	padding: 50px 5px 15px;
	-webkit-box-shadow: 0 5px 25px 0 rgba(0, 0, 0, .07);
	box-shadow: 0 5px 25px 0 rgba(0, 0, 0, .07);
	border: 1px solid #eaecf1;
	display: table;
	width: 31%;
	float: left;
	height: 373px;
	margin: 15px;
}

.social {
	margin: 0;
	padding: 5px 0;
	display: inline-block;
	width: 100%;
}

.social ul {
	/* margin:0;
padding:20px 0;
display:inline-block; */
	/* width:75%; */
	
}

.social li {
	list-style: none;
	/* float:left; */
	margin-bottom: 1px;
}

.social li a {
	/* font-size:10px; */
	color: #6b797c;
}

.social li:hover a, .social li:focus a {
	text-decoration: none;
}

a.facebook1 {
	border: 2px solid #000000;
	width: 200%;
	display: inline-block;
	padding: 2px 2px;
	border-radius: 100px;
	content: "\f09a";
}

.social li i {
	width: 42px;
	height: 42px;
	border-radius: 50%;
	color: #ffffff;
	line-height: 42px;
	text-align: center;
	margin-right: 7px;
}

.social li .facebook i {
	background: #295396;
}

.social li .google i {
	background: #d6201f;
}

.social li .twitter i {
	background: #1da0f2;
}

.social li .linkedin i {
	background: #0077b5;
}

.social li .instagram i {
	background: #d3368c;;
}
/* @media ( min-width :1102px) {
	.container {
		width: 1000px
	} */
}
.information {
	margin: 0;
	padding: 0;
}

.information li {
	display: block;
	padding: 10px 0;
	margin: 5px;
	font-size: 10.5;
	list-style: none;
	border-bottom: 1px solid rgba(107, 121, 124, 0.1);
}

.information li span {
	display: inline-block;
	font-weight: bold;
	width: 110px;
}


.information li span {
	display: inline-block;
	font-weight: bold;
	width: 110px;
}

.information li>span{
	width: 90px;
	margin:12px;

}
</style>
<!-- --------------------------------------------------------------------------------- -->


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
					<li><a href="index.jsp">���� ȭ��</a></li>
					<%
						if (info == null) {
					%>
					<li><a href="login.jsp">�α���</a></li>
					<%
						} else {
					%>
					<li><a href="LogoutService.do">�α׾ƿ�</a></li>
					<%
						}
					%>
					<li><a href="result.jsp">�м� �ϱ�</a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">�޴�</a>
						<ul class="dropdown-menu animated fadeOutUp"
							style="display: none; opacity: 1;">
							<li class="active"><a href="myIndex.jsp">�� ����</a></li>
							<li><a href="community.jsp">Ŀ�´�Ƽ</a></li>
							<li><a href="counsel.jsp">��� ��û</a></li>
							<li><a href="myResult.jsp">���� �м�����/��㳻��</a></li>
						</ul></li>
					<li><div
							style="float: right; margin-top: 15%; margin-right: -50%;">
							<%
								if (info != null){
							%><%=info.getNm()%>�� ȯ���մϴ�.
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

	<script type="text/javascript" src=js/jquery.min.js></script>
	<script>
		if ('<%=info%>' == 'null') {
			$(function() {
				$(".btn").on("click", function() {
					var check = confirm('�α����� �ʿ��� �����Դϴ�.');
				});
			});
		}
	</script>



	<!-- Main jumbotron for a primary marketing message or call to action -->
	<section class="inner-banner"
		style="backend: #242c36 url(https://via.placeholder.com/1920x600) no-repeat;">
		<div class="container">
			<div class="caption">
				<h2>����û</h2>
				<p>
					��ȣ�� �Ұ� <span>Introduce a lawyer</span>
				</p>
			</div>
		</div>
	</section>

	<section>
		<!-- <section class="profile-detail"> -->
		<div class="container">
			<!-- 				<div class="col-md-12">
					<div class="row"> -->
			
				<div class="basic-information"> 
			<div class="col-md-3 col-sm-3">
				<img src="img/intae.PNG" alt="" class="img-responsive">
			</div>
			<div class="col-md-9 col-sm-9">
				<div class="profile-content">
					<h3>
						������<span>����</span>
					</h3>
					<p>���ð�� ���� ����</p>
				</div>
			</div>
			<div>
				<ul class="information">
					<li><span>Name:</span>������</li>
					<li><span>Email:</span>gosomi2@naver.com</li>
					<li><span>Mobile:</span>010-9876-5432</li>
					<br>
				</ul>
			</div>

			<%
					if (info == null) {
				%>
				<form action="login.jsp">
					<%
						} else {
					%><form action="counselPost.jsp">
						<%
							}
						%>
						<button type="submit" class="btn brows-btn" name="counsel"
							value=������>����ϱ�</button>

					
					</form>

			<!-- <ul class="social"> -->
			<!-- <li><a href="" class="facebook1"><i class="fa fa-facebook"></i></a></li> -->
			<!-- 	<li><a href="" class="google"><i class="fa fa-google-plus"></i></a></li>
								<li><a href="" class="twitter"><i class="fa fa-twitter"></i></a></li> -->
			<!-- 		<li><a href="" class="linkedin"><i class="fa fa-linkedin"></i>Linked In</a></li> -->
			<!-- <li><a href="" class="instagram"><i class="fa fa-instagram"></i></a></li> -->
			<!-- </ul> -->
			<!-- <div class="panel panel-default">
								<div class="panel-heading">
									<i class="fa fa-user fa-fw"></i> About Me
								</div>
													/.panel-heading
								<div class="panel-body">
								<p>The front end is the part that users see and interact with, includes the User Interface, the animations, and usually a bunch of logic to talk to the backend. It is the visual bit that the user interacts with. This includes the design, images, colours, buttons, forms, typography, animations and content. It��s basically everything that you as a user of the website can see.</p>	
								</div>
							</div> -->

			<div class="panel panel-default">
				<div class="panel-heading">
					<i class="fa fa-leaf fa-fw"></i> �̷�:
				</div>
				<!-- /.panel-heading -->
				<div class="panel-body">
					<p></p>
					<ul>
						<li>Don't use bad comments ���� ����</li>
						<li>(��)  ���ù�������ȸ ȸ��</li>
						<li>�� ����Ʈ��Ұ� ���� ����</li>
					</ul>
				</div>
			</div>
		</div>
		
		<!-- 	</div> -->
		<!-- 				</div>
			</div> -->
		<!-- 		</section> -->

		<!-- 		<section class="profile-detail">
			<div class="container"> -->
		<!-- 				<div class="col-md-12">
					<div class="row"> -->
		<div class="basic-information"> 
			<div class="col-md-3 col-sm-3">
				<img src="img/park.PNG" alt="" class="img-responsive">
			</div>
			<div class="col-md-9 col-sm-9">
				<div class="profile-content">
					<h3>
						�ں���<span>��ȣ��</span>
					</h3>
					<p>���Ѽ�/���</p>
				</div>
			</div>
			<div>
				<ul class="information">
					<li><span>Name:</span>�ں���</li>
					<li><span>Email:</span>Walnutlove@naver.com</li>
					<li><span>Mobile:</span>010-5252-5252</li>
					<br>
				</ul>
			</div>

			<%
					if (info == null) {
				%>
				<form action="login.jsp">
					<%
						} else {
					%><form action="counselPost.jsp">
						<%
							}
						%>
						<button type="submit" class="btn brows-btn" name="counsel"
							value=�ں���>����ϱ�</button>

					
					</form>
				
				<!-- <ul class="social">
								<li><a href="" class="facebook1"><i class="fa fa-facebook"></i></a></li> -->
				<!-- 		<li><a href="" class="google"><i class="fa fa-google-plus"></i></a></li>
								<li><a href="" class="twitter"><i class="fa fa-twitter"></i></a></li> -->
				<!-- 		<li><a href="" class="linkedin"><i class="fa fa-linkedin"></i>Linked In</a></li> -->
				<!-- 		<li><a href="" class="instagram"><i class="fa fa-instagram"></i></a></li> -->
				<!-- </ul> -->
				<!-- <div class="panel panel-default">
								<div class="panel-heading">
									<i class="fa fa-user fa-fw"></i> About Me
								</div>
													/.panel-heading
								<div class="panel-body">
								<p>The front end is the part that users see and interact with, includes the User Interface, the animations, and usually a bunch of logic to talk to the backend. It is the visual bit that the user interacts with. This includes the design, images, colours, buttons, forms, typography, animations and content. It��s basically everything that you as a user of the website can see.</p>	
								</div>
							</div> -->

				<div class="panel panel-default">
					<div class="panel-heading">
						<i class="fa fa-leaf fa-fw"></i> �̷�:
					</div>
					<!-- /.panel-heading -->
					<div class="panel-body">
						<p></p>
						<ul>
							<li>(��)ȣ�ΰ���û �˻�</li>
							<li>(��)�������� ȣ�� ��ǥ ��ȣ��</li>
							<li> �� ����Ʈ��Ұ� ���� ��ȣ��</li>
						</ul>
					</div>
				</div>
	</div>			
		<!-- </div> -->
		<!-- 					</div> -->
		<!-- 				</div>
			</div> -->
		<!-- 		</section> -->

		<!-- <section class="profile-detail"> -->
		<div class="container">
			<!-- 				<div class="col-md-12">
					<div class="row"> -->
			<div class="basic-information"> 
				<div class="col-md-3 col-sm-3">
					<img src="img/lee.PNG" alt="" class="img-responsive">
				</div>
				<div class="col-md-9 col-sm-9">
					<div class="profile-content">
						<h3>
							���⼺<span>��ȣ��</span>
						</h3>
						<p>�������� ��ȣ</p>
	
					</div>
				</div>
				<div>
									<ul class="information">
							<li><span>Name:</span> ���⼺</li>
							<li><span>Email:</span>Stretching@naver.com</li>
							<li><span>Mobile:</span>010-5959-5959</li>
							<br>
						</ul>
				</div>

				<%
					if (info == null) {
				%>
				<form action="login.jsp">
					<%
						} else {
					%><form action="counselPost.jsp">
						<%
							}
						%>
						<button type="submit" class="btn brows-btn" name="counsel"
							value="���⼺">����ϱ�</button>

				
					</form>
					<!-- 			<ul class="social">
								<li><a href="" class="facebook1"><i class="fa fa-facebook"></i></a></li> -->
					<!-- 			<li><a href="" class="google"><i class="fa fa-google-plus"></i></a></li>
								<li><a href="" class="twitter"><i class="fa fa-twitter"></i></a></li> -->
					<!-- 		<li><a href="" class="linkedin"><i class="fa fa-linkedin"></i>Linked In</a></li> -->
					<!-- 	<li><a href="" class="instagram"><i class="fa fa-instagram"></i></a></li> -->
					<!-- 	</ul> -->
					<!-- <div class="panel panel-default">
								<div class="panel-heading">
									<i class="fa fa-user fa-fw"></i> About Me
								</div>
													/.panel-heading
								<div class="panel-body">
								<p>The front end is the part that users see and interact with, includes the User Interface, the animations, and usually a bunch of logic to talk to the backend. It is the visual bit that the user interacts with. This includes the design, images, colours, buttons, forms, typography, animations and content. It��s basically everything that you as a user of the website can see.</p>	
								</div>
							</div> -->

					<div class="panel panel-default">
						<div class="panel-heading">
							<i class="fa fa-leaf fa-fw"></i> �̷�:
						</div>
						<!-- /.panel-heading -->
						<div class="panel-body">
							<p></p>
							<ul>
								<li>Office stretching University ����</li>
								<li>(��)  HIP stretching��ǥ�̻�</li>
								<li> �� ����Ʈ��Ұ� ���� ��ȣ��</li>
							</ul>
						</div>
					</div>
			</div>


		</div>
		<!-- 		</section> -->
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

