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
<style type="text/css">
.inner-banner .caption {
	position: relative;
}

.inner-banner h2 {
	color: #white;
	font-weight: 400;
	display: block;
	margin-bottom: 25px;
}

.inner-banner p {
	color: #white;
	font-weight: 300;
	display: block;
	font-size: 20px;
	margin-top: 15px;
}

.inner-banner p span {
	color: white;
}

.inner-banner:before {
	content: "";
	display: block;
	top: 0;
	bottom: 0;
	left: 0;
	right: 0;
	position: absolute;
	background: #bc2610;
}

#board {
	text-align: center;
}

#bList {
	border-bottom: 1px solid;
	bordercolor: lightgray;
	width: 100%;
}

td {
	padding: 1%;
	border-bottom: 1px solid lightgray;
}

th {
	padding: 1%;
	border-bottom: 1px solid lightgray;
	text-align: center;
	background-color: lightgray;
}

.posttr {
	padding: 1%;
}

.reply {
	border: 3px;
	background-color:#F2F2F2;
	align: center;
	margin: auto;
	width: 70%;
}

.reply_load {
	display: none;
}

.reply_ido {
	display: none;
}

.post_title:hover {
	text-decoration: underline;
	cursor: pointer;
}

.post {
	width: 70%;
	border: 3px solid;
	border-color: lightgray;
	align: center;
	margin: auto;
}
.ido{
border:none;
}
.reply_list{
border-bottom:1px dotted lightgray;
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

	<!-- Main jumbotron for a primary marketing message or call to action -->
	<section class="inner-banner"
		style="backend: #242c36 url(https://via.placeholder.com/1920x600) no-repeat;">
		<div class="container">
			<div class="caption">
				<h2>공개 상담 게시판</h2>
				<p>
					건전한 인터넷 문화를 만들어 갑시다 / <span>욕설,타인비방,악성루머,성적 게시글 무통보 삭제 </span>
				</p>
			</div>
		</div>
	</section>

	<!-- 자세히 보기 버튼을 클릭할 때 -->

	<script type="text/javascript" src=js/jquery.min.js></script>
	<script language=javascript>
      if ('<%=info%>
		' == 'null') {
			$(function() {
				$(".btn.brows-btn").on("click", function() {
					var check = confirm('로그인이 필요한 서비스입니다.');
					if (check) {
						location.href = "login.jsp";
					}
				});
			});
		} else {
			$(function() {
				$(".btn.brows-btn").on("click", function() {
					location.href = "postWrite.jsp";
				})
			});
		}
	</script>


	<section class="profile-detail">



		<div class="container">
			<div class="col-md-12">
				<div class="row">
					<div class="basic-information">
						<!-- 게시판 영역  시작-->
						<div id="wrap">

							<!-- 게시글 출력 부분-->
							<br>
							<div class="post_load"></div>
							<!--  댓글 출력 부분 -->
							<br>
							
							<div style="margin:auto;">
								<table class="reply_ido" style="margin:auto; width:70%;">
								<%
										if (info != null) {
									%>
									<tr class="reply_ido2">
										<td class="ido" width="15%"><%=info.getId()%></td>
										<td class="ido" style="width: 582px;">
										<input type="text" class="reply_content" name="reply_content" style="width:95%"></td>
										<td class="ido"><button onclick="insertreply()" class="btn btn-reply" width="100%">등록</button></td>
									</tr>
									<%
										} else {
									%>
									<tr class="reply_ido">
										<td class="ido" colspan="3">로그인이 필요합니다.</td>
									</tr>
									<%
										}
									%>
								</table>
								</div>
							
							<div class="reply_load">
								<!-- <form action="InsertReply.do"> -->
								
								<table class="reply">
									
								</table>
								<!-- </form> -->
							</div>

							<!-- 게시글 목록 부분 -->
							<br>
							<div id="board">
								<table id="bList">
									<tr>
										<th>글번호</th>
										<th width=60%>제목</th>
										<th>작성자</th>
										<th>작성일</th>
									</tr>
									<%
										PostDAO dao = new PostDAO();
										ArrayList<PostDTO> list = dao.selectAll();
									%>

									<%
										for (int i = list.size() - 1; i >= 0; i--) {
									%>
									<tr class="post_read">
										<td class="post_cd"><%=list.get(i).getPost_cd()%></td>
										<td class="post_title"><%=list.get(i).getPost_title()%></td>
										<td class="post_id"><%=list.get(i).getPost_id()%></td>
										<td class="post_dt"><%=list.get(i).getPost_dt()%></td>
									</tr>
									<%
										}
									%>
								</table>
							</div>

							<%
								if (info == null) {
							%>
							<form action="login.jsp">
								<%
									}
								%>
								<button type="submit" class="btn brows-btn" name="write"
									value="community">글쓰기</button>

							</form>
						</div>
					</div>
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
	<script src="js/jquery-3.4.1.min.js"></script>
	<script type="text/javascript">
		var num = 0;
	</script>
	<script type="text/javascript">
		$('.post_read')
				.on('click',function() {
							var reply_load = $(".reply_load");
							/* reply_load.css('display', "none"); */
							reply_load.css('display', "block");
							var reply_ido = $(".reply_ido");
						/* 	reply_ido.css('display', "none"); */
							reply_ido.css('display', "block");

							/* 			reply_load.style.display = "none";
							 reply_load.style.display = "inline"; */
							var str = ""
							var tdArr = new Array(); // 배열 선언
							// 현재 클릭된 Row(<tr>)
							var tr = $(this);
							var td = tr.children();
							// 반복문을 이용해서 배열에 값을 담아 사용할 수 도 있다.
							td.each(function(i) {
								tdArr.push(td.eq(i).text());
							});

							num = td.eq(0).text();
							/* console.log(num); */

							$
									.ajax({
										url : "ReadPost.do",
										type : "POST",
										cache : false,
										dataType : "json",
										data : "num=" + num,
										success : function(result) {
											/* console.log("성공"); */
											/* console.log(result); */
											var post_id = result.post_id;
											var post_dt = result.post_dt;
											var post_title = result.post_title;
											var post_content = result.post_content;

											$('.post').remove(load);
											var post = '<table class="post"></table>';
											$('.post_load').append(post);
											var load = '<tr class="posttr"><td style="width:9%; border:1px solid lightgray;">'
													+ num + '</td><td style="border:1px;">'
													+ post_title + '</td><td  style="width:25%; border:1px solid lightgray;">'
													+ post_dt +'</td></tr>'
													+ '<tr class="posttr"><td style="border:1px solid lightgray;">'
													+ '작성자'
													+ '</td><td class="posttd" colspan="2" style="border:1px solid lightgray;">'
													+ post_id
													+ '</td></tr>'
													+ '<tr class="posttr" height="200px"><td colspan="3" style="border:1px solid lightgray;">'
													+ post_content
													+ '</td></tr><br>';
											$('.post').append(load);

										},
										error : function() {
											console.log("error");
										}
									});

							$
									.ajax({
										url : "ReadReply.do",
										type : "POST",
										cache : false,
										dataType : "json",
										data : "num=" + num,
										success : function(result) {
											/* console.log("성공");
											console.log(result); */
											var reply = $(".reply");
											var reply_list;
											reply.empty();
											reply_load.append(reply_ido);
											reply_load.append(reply);
											if (result.length != 0) {
												/* console.log("조건문"); */
												for (var i = 0; i < result.length; i++) {
													/* console.log("반복"); */
													var reply_id = result[i].reply_id;
													var reply_content = result[i].reply_content;
													reply_list = '<tr><td class="reply_list" width="15%">'
															+ reply_id
															+ '</td><td class="reply_list" colspan="2">'
															+ reply_content
															+ '</td></tr>';
													reply.append(reply_list);
													reply_load.append(reply);
												}

											} else {
												/* reply.remove(reply_list); */
												/* reply.empty(); */
												/* reply.remove(reply_list); */
												/* console.log("조건문밖"); */
											}
										},
										error : function() {
											console.log("error");
										}
									});

						});
	</script>

	<script type="text/javascript">
		function insertreply() {
			var reply_content = $('.reply_content').val();
			/* console.log(reply_content); */
			/* console.log(num); */
			$.ajax({
				url : "InsertReply.do",
				type : "POST",
				cache : false,
				dataType : "text",
				data : "num=" + num + "&reply_content=" + reply_content,
				success : function() {
					console.log("성공");
					location.href = "community.jsp"

				},
				error : function() {
					console.log("error");
				}
			});

		}
	</script>
</body>
</html>