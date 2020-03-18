<%@page import="com.model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html class="no-js" lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>��Ұ� | ����ȭ��</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
		
        <!-- All Plugin Css --> 
		<link rel="stylesheet" href="css/plugins.css">
		
		<!-- Style & Common Css --> 
		<link rel="stylesheet" href="css/common.css">
        <link rel="stylesheet" href="css/main.css">
<style type="text/css">
.col-md-5{
	width:13% !important;
	margin-left: 0.5% !important;	
}
#content{
	width:55% !important;
	margin-left: 1% !important;
		
}
.col-md-2{
	width:14%; 
	padding-right: 15px;
	margin-left: 2% !important;		
}
.link:hover{
	text-decoration: underline; color: blue;
}	
.link{
	font-weight: bold; 
}
.warning{
	text-align: center;	
}
.warning1{
	color: red;
    margin-top: 3%;	
}
.col-md-3.col-sm-3{
	width:13% !important;
	margin-left: 1% !important;
}
.col-md-10{
	 line-height: 3em;
}
#video {
     position: absolute;
     top: 0px;
     left: 0px;
     min-width: 100%;
     min-height: 100%;
     width: 100%;
     height: 100%;
     z-index: -1;
     overflow: hidden;
     object-fit: fill;
}
.btn.seub-btn{
	margin: 0px auto;
	width: 13%;
	padding-bottom: 1%;
	padding-top: 1%;
	margin-bottom: 0.5%;
	font-size: 20px !important;
}

</style>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
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
                  <li><div style="float: right; margin-top:15%;margin-right:-50%;"><%if(info!=null){ %><%=info.getNm()%>�� ȯ���մϴ�.
					<%}else {%><%} %></div></li>
            </ul>
         </div>
         <!-- /.navbar-collapse -->
      </div>
   </nav>
   <!-- Navigation End  -->
		
		<!-- Main jumbotron for a primary marketing message or call to action -->
		<section class="main-banner"> <!-- style="background:url(img/main.jpg) no-repeat" -->
			<video id="video" preload="auto" autoplay="true" loop="loop" muted="muted" volume="0">
      <source src="img/coverr-sparks.mp4">
	 </video>
			<div class="container">
				<div class="caption">
					<h2><b>�̰�...��� ��?</b></h2>
					<br><br>
					<form action="result.jsp" method="post">
					<input type="submit" class="btn seub-btn" value="�����ϱ�"/>
					<br><br>
					</form>
				</div>
			</div>
		</section>
			<div class="warning">
				<h4 class="warning1">��  �� �� :  �ش� ���񽺴� ���� ȿ���� ������ �ǿ�� ó���� ���� �� �ֽ��ϴ�.  ��</h4>
			</div>

		<section class="newsletter">
			<div class="container">
			<div class="features-content" id="goso">
				<span class="box1"><span aria-hidden="true" class="icon-printer"></span></span>
				<div class="row">
					<div class="col-md-10 col-sm-10 col-md-offset-1 col-sm-offset-1">
					<h2>1. ��Ұ� �̶� � �����ΰ���? </h2><br>
					<p>��Ұ� ���񽺴� 
                           <a class="link" href="https://glaw.scourt.go.kr/wsjo/lawod/sjo190.do?contId=3201160&q=%EC%A0%95%EB%B3%B4%ED%86%B5%EC%8B%A0%EB%A7%9D%EC%9D%B4%EC%9A%A9%EC%B4%89%EC%A7%84%EB%B0%8F%EC%A0%95%EB%B3%B4%EB%B3%B4%ED%98%B8%EB%93%B1%EC%97%90%EA%B4%80%ED%95%9C%EB%B2%95%EB%A5%A0&nq=&w=lawod&section=lawod_nm&subw=&subsection=&subId=1&csq=&groups=2,3&category=&outmax=1&msort=&onlycount=&sp=&d1=&d2=&d3=&d4=&d5=&pg=1&p1=&p2=&p3=&p4=02&p5=&p6=&p7=&p8=&p9=&p10=&p11=&p12=&sysCd=&tabGbnCd=&saNo=&joNo=&lawNm=&hanjaYn=N&userSrchHistNo=&poption=&srch=&range=&daewbyn=N&smpryn=N&idgJyul=01&newsimyn=Y&tabId=&save=Y&bubNm=#1583915955660"><������Ÿ� �̿����� �� ������ȣ � ���� ����></a>�� ������� 
						     �ӽŷ����� ���� ��Ұ��� ���θ� �Ǵ����ִ� �ý����Դϴ�.
						   ������ ����� �����ڷ�� ����Ͻð� �ǰ� ����� ������ �ٸ� �� ������ ��ȣ����� ����� ��õ�帳�ϴ�.</p><br>
					<span class="box1"><span aria-hidden="true" class="icon-dial"></span></span>
					<h2>2. ��Ұ��� ��� ����ϳ���? </h2><br>
					<img src="img/gosoinfo.png " width= "892px"><br><br>
					<p>�ڽ��� ���̵� �Է��ϰ� ����Ʈ�� ������ ������ �� �˰� ���� ����� �ְ� �м��ϱ⸦ ������ ����� Ȯ���� �� �ֽ��ϴ�. </p><br>
					<span class="box1"><span aria-hidden="true" class="icon-search"></span></span>
					<h2>3. ��Ұ��� ��� �м��ϳ���?</h2><br>
					<p>��Ұ� �ӽŷ����� ��ü ������ '��ҹ�'���� ����մϴ�. �ش� ���� ���̹�,��Ʃ�� �� �پ��� Ŀ�´�Ƽ ����Ʈ���� ������ 6���� ������ ����� 
					Logistic Regression�𵨿� �н����� ��强 �Ǻ��� ��90%�� ��Ȯ���� �����ݴϴ�.. �� ���񽺴� �����ε� ������ �ڷḦ �����ϰ� ������Ʈ�Ͽ�
					�پ��� �Һ����� �䱸�� �ݿ��� �����Դϴ�.</p>
					<!-- <div class="input-group">
						<input type="text" class="form-control" placeholder="Type Your Email Address...">
						<span class="input-group-btn">
							<button type="button" class="btn btn-default">subscribe!</button>
						</span>
					</div> -->
					</div>
					</div>
				</div>
			</div>
		</section>
		
		<section class="features">
			<div class="container">
				<!-- <div class="col-md-4 col-sm-4">
					<div class="features-content">
						<span class="box1"><span aria-hidden="true" class="icon-dial"></span></span>
						<h3>Create An Account</h3>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incidid ut labore et dolore magna aliqua.</p>
					</div>
				</div> -->
				
				<!-- <div class="col-md-4 col-sm-4">
					<div class="features-content">
						<span class="box1"><span aria-hidden="true" class="icon-search"></span></span>
						<h3>��Ұ� ����</h3>
						<p>��Ұ� ���񽺴� 
                           <a class="link" href="https://glaw.scourt.go.kr/wsjo/lawod/sjo190.do?contId=3201160&q=%EC%A0%95%EB%B3%B4%ED%86%B5%EC%8B%A0%EB%A7%9D%EC%9D%B4%EC%9A%A9%EC%B4%89%EC%A7%84%EB%B0%8F%EC%A0%95%EB%B3%B4%EB%B3%B4%ED%98%B8%EB%93%B1%EC%97%90%EA%B4%80%ED%95%9C%EB%B2%95%EB%A5%A0&nq=&w=lawod&section=lawod_nm&subw=&subsection=&subId=1&csq=&groups=2,3&category=&outmax=1&msort=&onlycount=&sp=&d1=&d2=&d3=&d4=&d5=&pg=1&p1=&p2=&p3=&p4=02&p5=&p6=&p7=&p8=&p9=&p10=&p11=&p12=&sysCd=&tabGbnCd=&saNo=&joNo=&lawNm=&hanjaYn=N&userSrchHistNo=&poption=&srch=&range=&daewbyn=N&smpryn=N&idgJyul=01&newsimyn=Y&tabId=&save=Y&bubNm=#1583915955660"><������Ÿ� �̿����� �� ������ȣ � ���� ����></a> �ٰ��Ͽ� <br>
						      �ӽŷ����� ���� 
						      ��Ұ��� ���θ� �Ǵ��ϴ� �ý����Դϴ�.<br>
						   
						     ���� ����� �����ڷ�� ����Ͻð� 
						     ���� �ǰ� ����� �ٸ� ���� ������
                                                     ��ȣ��� ����� ��õ�帳�ϴ�.</p>
					</div>
				</div> -->
				
				<div class="col-md-4 col-sm-4">
					<div class="features-content">
						<span class="box1"><span aria-hidden="true" class="icon-printer"></span></span>
						<h3>���� ��� �������</h3><br>
						<p><b>1. ����</b><br><br>
	����� ��ȸ�� ������ ������ ������ ǥ��(�ܼ��� ���� X)
 	���������� ���� �ذ� ���� �ʾҾ ���� 
 	����, ����, Ư�� ���� �� ��� ���Ե˴ϴ�.<br><br>

	<b>2. Ư�� �����ڰ� ����</b><br><br>
������ ó�� ���������� ����� �� ����� ���� ����� Ȯ���ϰ� ������ �־�� �մϴ�.
�Ǹ��� �ŷ��ϸ� Ư�� �ι��� ��Ī�ϴ� ���� �ƴ����� ��3�ڰ� ������ �� �������� Ư���� �� �� �ִٸ� �˰� �����˴ϴ�.<br><br>

	<b>3. ������</b><br><br>
	�ټ����� �˷��� ���� ���ϸ�, ������ Ư���Ǿ� �־ ����� �����ϴ�. ���� ����� �ܵѸ� �ִ� ��Ȳ���� ������ ��Ȳ�̶�� ó���� �Ұ����մϴ�.</p>
					</div>
				</div> 
				
				<div class="col-md-4 col-sm-4">
					<div class="features-content">
						<span class="box1"><span aria-hidden="true" class="icon-dial"></span></span>
						<h3>���÷��� ���� �� �ִ� ó��</h3><br>
						<p><b>1. �����</b><br><br>
���濡 ���Ͽ� ��, ���� �Ǵ� ������ ���ϴ� �� ��ü���� ����� �������� �ʰ� �߻��� �Ǵ�, ����� ���� ǥ���� ����� �� ������ �� �ֽ��ϴ�.

����˿� �ش��ϴ� ��� 1�� ������ ¡�����̳� �ݰ�, 200�� �� ������ �������� ���� �� �ֽ��ϴ�.<br><br><br>

<b>2. ���Ѽ���</b><br><br>
���� ����� �ƴ϶� ������ ����̶� �������ϰ� �̾߱��ϴ� ���� ������� ��ȸ�� ���� �Ѽ��ϴ� ���̶�� �����Ǵ� �����Դϴ�.

���Ѽ��˿� �ش��ϴ� ���, ���� ������ ����� ������ ����� 2�� ������ ¡���̳� �ݰ� �Ǵ� 500�� �� ������ ���ݿ� ó������, ������ ����� ������ ��� 5�� ������ ¡���̳� 10�� ������ �ڰ����� �Ǵ� 1000�� �� ������ ���ݿ� ó������ �˴ϴ�.
						</p>
					</div>
				</div>
				
				<div class="col-md-4 col-sm-4">
					<div class="features-content">
						<span class="box1"><span aria-hidden="true" class="icon-search"></span></span>
						<h3>���� ��� ����</h3><br>
						<p>�Ϲ����� ����˿� ���Ѽտ� �ش��ϴ� ��쿡�� ������ ���� ������ Ȯ���Ͽ� ���Ѽ��� �� ����� �������� ������� �ۼ��Ͽ� �������� ������ �ϸ� �˴ϴ�.<br>

������ ������ �ٷ� ���, ���� �Ѽ��� ����� �͸��� ���̵� ����Ѵٸ� ������ Ư���ϱ� ����� ������ ���÷� ��� ������ �����ϱ� ���� �� �ֽ��ϴ�.<br> �̷��� ��� �������� �ش� ���̵� ����� ����� ���� ������ Ȯ��, ��ȯ�Ͽ� �����ϴ� ���縦 �����ϰ�, ���������� ó���� ���� �� �ֵ��� �Ͽ��� �մϴ�.<br>
���� ������ �ϰ��� �� ���� ����� �������� ���ſ� ��Ȳ, �׸��� �������� � �Ϳ� �ش��ϴ����� ��Ȯ�� �ƴ� ���� ������ �ʿ��մϴ�. ������ ������ �Ǵ��ϰ��� �ϸ� �Һи��� ������ ���ظ� ���� �� �����Ƿ� ��ȣ�ΰ� �����Ͽ� �ش� ������ �����Ͽ� ���� ����� �ش��� �Ǵ���, ���������� ������ �� �ʿ䰡 �ֽ��ϴ�.</p>
					</div>
				</div> 
				
				<!-- <div class="col-md-4 col-sm-4">
					<div class="features-content">
						<span class="box1"><span aria-hidden="true" class="icon-printer"></span></span>
						<h3>Send Your Resume</h3>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incidid ut labore et dolore magna aliqua.</p>
					</div>
				</div> -->
		
		<!-- <section class="counter">
			<div class="container">
				<div class="col-md-3 col-sm-3">
					<div class="counter-text">
						<span aria-hidden="true" class="icon-briefcase"></span>
						<h3>1000</h3>
						<p>Jobs Posted</p>
					</div>
				</div>
				
				<div class="col-md-3 col-sm-3">
					<div class="counter-text">
						<span class="box1"><span aria-hidden="true" class="icon-expand"></span></span>
						<h3>207</h3>
						<p>All Companies</p>
					</div>
				</div>
				
				<div class="col-md-3 col-sm-3">
					<div class="counter-text">
						<span class="box1"><span aria-hidden="true" class="icon-profile-male"></span></span>
						<h3>700+</h3>
						<p>Total Members</p>
					</div>
				</div>
				
				<div class="col-md-3 col-sm-3">
					<div class="counter-text">
					<span class="box1"><span aria-hidden="true" class="icon-sad"></span></span>
						<h3>802+</h3>
						<p>Happy Members</p>
					</div>
				</div>
			</div>
		</section>
		
		<section class="jobs">
			<div class="container">
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
			</div>
		</section>
		
		<section class="testimonials dark">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div id="testimonial-slider" class="owl-carousel">
							<div class="testimonial">
								<div class="pic">
									<img src="img/client-1.jpg" alt="">
								</div>
								<p class="description">
									" Lorem ipsum dolor sit amet, consectetur adipisicing elit. Autem commodi eligendi facilis itaque minus non odio, quaerat ullam unde voluptatum? "
								</p>
								<h3 class="testimonial-title">williamson</h3>
								<span class="post">Web Developer</span>
							</div>

							<div class="testimonial">
								<div class="pic">
									<img src="img/client-2.jpg" alt="">
								</div>
								<p class="description">
									" Lorem ipsum dolor sit amet, consectetur adipisicing elit. Autem commodi eligendi facilis itaque minus non odio, quaerat ullam unde voluptatum? "
								</p>
								<h3 class="testimonial-title">kristiana</h3>
								<span class="post">Web Designer</span>
							</div>
							
							<div class="testimonial">
								<div class="pic">
									<img src="img/client-3.jpg" alt="">
								</div>
								<p class="description">
									" Lorem ipsum dolor sit amet, consectetur adipisicing elit. Autem commodi eligendi facilis itaque minus non odio, quaerat ullam unde voluptatum? "
								</p>
								<h3 class="testimonial-title">kristiana</h3>
								<span class="post">Web Designer</span>
							</div>
							
							<div class="testimonial">
								<div class="pic">
									<img src="img/client-4.jpg" alt="">
								</div>
								<p class="description">
									" Lorem ipsum dolor sit amet, consectetur adipisicing elit. Autem commodi eligendi facilis itaque minus non odio, quaerat ullam unde voluptatum? "
								</p>
								<h3 class="testimonial-title">kristiana</h3>
								<span class="post">Web Designer</span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		
		<section class="pricind">
			<div class="container">
				<div class="col-md-4 col-sm-4">
					<div class="package-box">
						<div class="package-header">
							<i class="fa fa-cog" aria-hidden="true"></i>
							<h3>Professional</h3>
						</div>
						<div class="package-info">
							<ul>
							<li>3 Designs</li>
							<li>3 PSD Designs</li>
							<li>4 color Option</li>
							<li>10GB Disk Space</li>
							<li>Full Support</li>
							</ul>
						</div>
						<div class="package-price">
							<h2><sup>$ </sup>10<sub>/Month</sub></h2>
						</div>
						<button type="submit" class="btn btn-package">Sign Up</button>
					</div>
				</div>
				<div class="col-md-4 col-sm-4">
					<div class="package-box">
						<div class="package-header">
							<i class="fa fa-star-half-o" aria-hidden="true"></i>
							<h3>Standard</h3>
						</div>
						<div class="package-info">
							<ul>
							<li>3 Designs</li>
							<li>3 PSD Designs</li>
							<li>4 color Option</li>
							<li>10GB Disk Space</li>
							<li>Full Support</li>
							</ul>
						</div>
						<div class="package-price">
							<h2><sup>$ </sup>110<sub>/Month</sub></h2>
						</div>
						<button type="submit" class="btn btn-package">Sign Up</button>
					</div>
				</div>
				<div class="col-md-4 col-sm-4">
					<div class="package-box">
						<div class="package-header">
							<i class="fa fa-cube" aria-hidden="true"></i>
							<h3>Premium</h3>
						</div>
						<div class="package-info">
							<ul>
							<li>3 Designs</li>
							<li>3 PSD Designs</li>
							<li>4 color Option</li>
							<li>10GB Disk Space</li>
							<li>Full Support</li>
							</ul>
						</div>
						<div class="package-price">
							<h2><sup>$ </sup>170<sub>/Month</sub></h2>
						</div>
						<button type="submit" class="btn btn-package">Sign Up</button>
					</div>
				</div>
			</div>
		</section>
		
		<section class="membercard dark">
			<div class="container">
				<div class="row">
					<div class="col-md-4 col-sm-4">
						<div class="left-widget-sidebar">
							<div class="card-widget bg-white user-card">
								<div class="u-img img-cover" style="background-image: url(img/bg-1.jpg);background-size:cover;"></div>
								<div class="u-content">
									<div class="avatar box-80">
										<img class="img-responsive img-circle img-70 shadow-white" src="img/avatar3.jpg" alt="">
										<i class="fa fa-circle-o fa-green"></i>
									</div>
									<h5>Sazzel Shi</h5>
									<p class="text-muted">UX/ Designer</p>
								</div>
								<div class="user-social-profile">
									<ul>
										<li><a href=""><i class="fa fa-facebook"></i></a></li>
										<li><a href=""><i class="fa fa-google-plus"></i></a></li>
										<li><a href=""><i class="fa fa-twitter"></i></a></li>
										<li><a href=""><i class="fa fa-instagram"></i></a></li>
										<li><a href=""><i class="fa fa-linkedin"></i></a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-4 col-sm-4">
						<div class="left-widget-sidebar">
							<div class="card-widget bg-white user-card">
								<div class="u-img img-cover" style="background-image: url(img/bg-2.jpg);background-size:cover;"></div>
								<div class="u-content">
									<div class="avatar box-80">
										<img class="img-responsive img-circle img-70 shadow-white" src="img/avatar2.jpg" alt="">
										<i class="fa fa-circle-o fa-green"></i>
									</div>
									<h5>Daniel Dezox</h5>
									<p class="text-muted">CEO Founder</p>
								</div>
								<div class="user-social-profile">
									<ul>
										<li><a href=""><i class="fa fa-facebook"></i></a></li>
										<li><a href=""><i class="fa fa-google-plus"></i></a></li>
										<li><a href=""><i class="fa fa-twitter"></i></a></li>
										<li><a href=""><i class="fa fa-instagram"></i></a></li>
										<li><a href=""><i class="fa fa-linkedin"></i></a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-4 col-sm-4">
						<div class="left-widget-sidebar">
							<div class="card-widget bg-white user-card">
								<div class="u-img img-cover" style="background-image: url(img/bg-3.jpg);background-size:cover;"></div>
								<div class="u-content">
									<div class="avatar box-80">
										<img class="img-responsive img-circle img-70 shadow-white" src="img/avatar1.jpg" alt="">
										<i class="fa fa-circle-o fa-green"></i>
									</div>
									<h5>Silp Sizzer</h5>
									<p class="text-muted">Human Resource</p>
								</div>
								<div class="user-social-profile">
									<ul>
										<li><a href=""><i class="fa fa-facebook"></i></a></li>
										<li><a href=""><i class="fa fa-google-plus"></i></a></li>
										<li><a href=""><i class="fa fa-twitter"></i></a></li>
										<li><a href=""><i class="fa fa-instagram"></i></a></li>
										<li><a href=""><i class="fa fa-linkedin"></i></a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>-->
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
		</footer>
		 
		<script type="text/javascript" src="js/jquery.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script type="text/javascript" src="js/owl.carousel.min.js"></script>
		<script src="js/bootsnav.js"></script>
		<script src="js/main.js"></script>
    </body>
</html>