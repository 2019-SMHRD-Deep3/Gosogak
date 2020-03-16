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
#board {
	text-align: center;
}

#bList {
	border-top: 1px solid;
	border-bottom: 1px solid;
	bordercolor: lightgray;
	width: 100%;
}

th {
	text-align: center;
	background-color: lightgray;
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
								if (info != null) {
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

	<!-- Main jumbotron for a primary marketing message or call to action -->
	<section class="inner-banner"
		style="backend: #242c36 url(https://via.placeholder.com/1920x600) no-repeat;">
		<div class="container">
			<div class="caption">
				<h2>���� ��� �Խ���</h2>
				<p>
					������ ���ͳ� ��ȭ�� ����� ���ô� <span>�弳,Ÿ�κ��,�Ǽ����,���� �Խñ� ���뺸 ����</span>
				</p>
			</div>
		</div>
	</section>

	<!-- �ڼ��� ���� ��ư�� Ŭ���� �� -->

	<script type="text/javascript" src=js/jquery.min.js></script>
	<script language=javascript>
      if ('<%=info%>' == 'null') {
         $(function() {
            $(".btn.brows-btn").on("click", function() {
               var check = confirm('�α����� �ʿ��� �����Դϴ�.');
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
						<!-- �Խ��� ����  ����-->
						<div id="wrap">

							<!-- �۸�� �� �κ�-->
							<br>
							<div class="post_load"></div>
							<!-- �Խñ� ��� �κ� -->
							<br>
							<div id="board">
								<table id="bList" height="130">
									<tr>
										<th>�۹�ȣ</th>
										<th width=70%>����</th>
										<th>�ۼ���</th>
										<th>�ۼ���</th>
									</tr>
									<%
										PostDAO dao = new PostDAO();
										ArrayList<PostDTO> list = dao.selectAll();
									%>
									<c:forEach var="board">

										<%
											for (int i = list.size() - 1; i >= 0; i--) {
										%>
										<tr class="post_read">
											<td class="post_cd"><%=i + 1%></td>
											<td class="post_title"><%=list.get(i).getPost_title()%></td>
											<td class="post_id"><%=list.get(i).getPost_id()%></td>
											<td class="post_dt"><%=list.get(i).getPost_dt()%></td>
										</tr>
										<%
											}
										%>

									</c:forEach>
								</table>
							</div>

							<%
								if (info == null) {
							%>
							<form action="login.jsp">
								<%
									}
								%>
								<button type="submit" class="btn brows-btn" name="detail"
									value="community">�۾���</button>

							</form>
							<!-- ������ �ѹ� �κ� -->
							<%-- <br>
                     <div id="pageForm">
                        <c:if test="${startPage != 1}">
                           <a href='BoardListAction.bo?page=${startPage-1}'>[ ���� ]</a>
                        </c:if>

                        <c:forEach var="pageNum" begin="${startPage}" end="${endPage}">
                           <c:if test="${pageNum == spage}">${pageNum}&nbsp;</c:if>
                           <c:if test="${pageNum != spage}">
                              <a href='BoardListAction.bo?page=${pageNum}'>${pageNum}&nbsp;</a>
                           </c:if>
                        </c:forEach>

                        <c:if test="${endPage != maxPage }">
                           <a href='BoardListAction.bo?page=${endPage+1 }'>[����]</a>
                        </c:if>
                     </div>

                     <!--  �˻� �κ� -->
                     <br>
                     <div id="searchForm">
                        <form>
                           <select name="opt">
                              <option value="0">����</option>
                              <option value="1">����</option>
                              <option value="2">����+����</option>
                              <option value="3">�۾���</option>
                           </select> <input type="text" size="20" name="condition" />&nbsp; <input
                              type="submit" value="�˻�" />
                        </form>
                     </div> --%>
						</div>
						<!-- �Խ��� ���� ���� -->

						<!-- <div class="col-md-3 col-sm-3">
                     <img src="img/microsoft.png" alt="" class="img-responsive">
                  </div>
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
                  <ul class="social">
                     <li><a href="" class="facebook"><i
                           class="fa fa-facebook"></i>Facebook</a></li>
                     <li><a href="" class="google"><i
                           class="fa fa-google-plus"></i>Google Plus</a></li>
                     <li><a href="" class="twitter"><i class="fa fa-twitter"></i>Twitter</a></li>
                     <li><a href="" class="linkedin"><i
                           class="fa fa-linkedin"></i>Linked In</a></li>
                     <li><a href="" class="instagram"><i
                           class="fa fa-instagram"></i>Instagram</a></li>
                  </ul>
                  <div class="panel panel-default">
                     <div class="panel-heading">
                        <i class="fa fa-user fa-fw"></i> About Microsoft
                     </div>
                     /.panel-heading
                     <div class="panel-body">
                        <p>The front end is the part that users see and interact
                           with, includes the User Interface, the animations, and usually
                           a bunch of logic to talk to the backend. It is the visual bit
                           that the user interacts with.</p>
                     </div>
                  </div>

                  <div class="panel panel-default">
                     <div class="panel-heading">
                        <i class="fa fa-leaf fa-fw"></i> Responsibilities:
                     </div>
                     /.panel-heading
                     <div class="panel-body">
                        <p>Rapid growth since incorporation has triggered a chain of
                           products, acquisitions and partnerships beyond Google's core
                           search engine (Google Search).</p>
                        <ul>
                           <li>Software testing in a Web Applications/Mobile
                              environment.</li>
                           <li>Software Test Plans from Business Requirement
                              Specifications for test engineering group.</li>
                           <li>Software testing in a Web Applications environment.</li>
                           <li>Translate designs into responsive web interfaces</li>
                           <li>Software testing in a Web Applications/Mobile
                              environment.</li>
                           <li>Software testing in a Web Applications environment.</li>
                           <li>Translate designs into responsive web interfaces</li>
                           <li>Software Test Plans from Business Requirement
                              Specifications for test engineering group.</li>
                           <li>Run production tests as part of software
                              implementation; Create, deliver and support test plans for
                              testing group to execute.</li>
                           <li>Run production tests as part of software
                              implementation; Create, deliver and support test plans for
                              testing group to execute.</li>
                        </ul>
                     </div>
                  </div>

                  <div class="panel panel-default">
                     <div class="panel-heading">
                        <i class="fa fa-coffee fa-fw"></i> Minimum qualifications:
                     </div>
                     /.panel-heading
                     <div class="panel-body">
                        <p>Rapid growth since incorporation has triggered a chain of
                           products.</p>
                        <ul>
                           <li>Software testing in a Web Applications/Mobile
                              environment.</li>
                           <li>Software Test Plans from Business Requirement
                              Specifications for test engineering group.</li>
                           <li>Software testing in a Web Applications environment.</li>
                           <li>Translate designs into responsive web interfaces</li>
                           <li>Software testing in a Web Applications/Mobile
                              environment.</li>
                           <li>Software testing in a Web Applications environment.</li>
                           <li>Translate designs into responsive web interfaces</li>
                           <li>Software Test Plans from Business Requirement
                              Specifications for test engineering group.</li>
                           <li>Run production tests as part of software
                              implementation; Create, deliver and support test plans for
                              testing group to execute.</li>
                           <li>Run production tests as part of software
                              implementation; Create, deliver and support test plans for
                              testing group to execute.</li>
                        </ul>
                     </div>
                  </div>

                  <div class="panel panel-default">
                     <div class="panel-heading">
                        <i class="fa fa-graduation-cap fa-fw"></i> Preferred
                        qualifications:
                     </div>
                     /.panel-heading
                     <div class="panel-body">
                        <ul>
                           <li>Software testing in a Web Applications/Mobile
                              environment.</li>
                           <li>Software Test Plans from Business Requirement
                              Specifications for test engineering group.</li>
                           <li>Software testing in a Web Applications environment.</li>
                           <li>Translate designs into responsive web interfaces</li>
                           <li>Software testing in a Web Applications/Mobile
                              environment.</li>
                           <li>Software testing in a Web Applications environment.</li>
                           <li>Translate designs into responsive web interfaces</li>
                           <li>Software Test Plans from Business Requirement
                              Specifications for test engineering group.</li>
                           <li>Run production tests as part of software
                              implementation; Create, deliver and support test plans for
                              testing group to execute.</li>
                           <li>Run production tests as part of software
                              implementation; Create, deliver and support test plans for
                              testing group to execute.</li>
                        </ul>
                     </div>
                  </div> -->



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
		$('.post_read').on('click',function(){
			var str = ""
		        var tdArr = new Array();    // �迭 ����
		        // ���� Ŭ���� Row(<tr>)
		        var tr = $(this);
		        var td = tr.children();
		        // �ݺ����� �̿��ؼ� �迭�� ���� ��� ����� �� �� �ִ�.
		        td.each(function(i){
		            tdArr.push(td.eq(i).text());
		        });
		        
		        var num = td.eq(0).text();
		      
				$.ajax({
					url : "ReadPostCon.do",
					type : "POST",
					dataType : "text",
					data : "num="+num,
					success : function() {
						console.log("����");
						var p_id = '${click_p_info_id}';
						alert(p_id);
						/* $('.post').remove(load);
						var post = '<table class="post" width="700" border="3" bordercolor="lightgray" align="center"></table>';
						$('.post_load').append(post);
						var load = '<tr class="posttr"><td>'+ '�۹�ȣ' + '</td><td>' + num + '</td></tr>'
						+'<tr class="posttr"><td>'+ '�ۼ���' + '</td><td>' + p_id + '</td></tr>'
						+'<tr class="posttr"><td>'+ '�ۼ���¥' + '</td><td>' + 'writeDate' + '</td></tr>'
						+'<tr class="posttr"><td>'+ '����' + '</td><td>' + 'title' + '</td></tr>'
						+'<tr class="posttr"><td>'+ '����' + '</td><td>' + 'content' + '</td></tr>';
						$('.post').append(load); */
						
					},
					error : function() {
						console.log("error");
					}
				});
				
		});
	</script>
</body>
</html>