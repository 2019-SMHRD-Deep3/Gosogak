<%@page import="com.model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html class="no-js" lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>고소각 | 메인화면</title>
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
		<section class="main-banner"> <!-- style="background:url(img/main.jpg) no-repeat" -->
			<video id="video" preload="auto" autoplay="true" loop="loop" muted="muted" volume="0">
      <source src="img/coverr-sparks.mp4">
	 </video>
			<div class="container">
				<div class="caption">
					<h2><b>이거...고소 각?</b></h2>
					<br><br>
					<form action="result.jsp" method="post">
					<input type="submit" class="btn seub-btn" value="시작하기"/>
					<br><br>
					</form>
				</div>
			</div>
		</section>
			<div class="warning">
				<h4 class="warning1">※  경 고 :  해당 서비스는 법적 효력이 없으며 악용시 처벌을 받을 수 있습니다.  ※</h4>
			</div>

		<section class="newsletter">
			<div class="container">
			<div class="features-content" id="goso">
				<span class="box1"><span aria-hidden="true" class="icon-printer"></span></span>
				<div class="row">
					<div class="col-md-10 col-sm-10 col-md-offset-1 col-sm-offset-1">
					<h2>1. 고소각 이란 어떤 서비스인가요? </h2><br>
					<p>고소각 서비스는 
                           <a class="link" href="https://glaw.scourt.go.kr/wsjo/lawod/sjo190.do?contId=3201160&q=%EC%A0%95%EB%B3%B4%ED%86%B5%EC%8B%A0%EB%A7%9D%EC%9D%B4%EC%9A%A9%EC%B4%89%EC%A7%84%EB%B0%8F%EC%A0%95%EB%B3%B4%EB%B3%B4%ED%98%B8%EB%93%B1%EC%97%90%EA%B4%80%ED%95%9C%EB%B2%95%EB%A5%A0&nq=&w=lawod&section=lawod_nm&subw=&subsection=&subId=1&csq=&groups=2,3&category=&outmax=1&msort=&onlycount=&sp=&d1=&d2=&d3=&d4=&d5=&pg=1&p1=&p2=&p3=&p4=02&p5=&p6=&p7=&p8=&p9=&p10=&p11=&p12=&sysCd=&tabGbnCd=&saNo=&joNo=&lawNm=&hanjaYn=N&userSrchHistNo=&poption=&srch=&range=&daewbyn=N&smpryn=N&idgJyul=01&newsimyn=Y&tabId=&save=Y&bubNm=#1583915955660"><정보통신망 이용촉진 및 정보보호 등에 관한 법률></a>을 기반으로 
						     머신러닝을 통해 고소가능 여부를 판단해주는 시스템입니다.
						   서비스의 결과는 참고자료로 사용하시고 판결 결과는 실제와 다를 수 있으니 변호사와의 상담을 추천드립니다.</p><br>
					<span class="box1"><span aria-hidden="true" class="icon-dial"></span></span>
					<h2>2. 고소각은 어떻게 사용하나요? </h2><br>
					<img src="img/gosoinfo.png " width= "892px"><br><br>
					<p>자신의 아이디를 입력하고 사이트의 유형을 선택한 후 알고 싶은 댓글을 넣고 분석하기를 누르면 결과를 확인할 수 있습니다. </p><br>
					<span class="box1"><span aria-hidden="true" class="icon-search"></span></span>
					<h2>3. 고소각은 어떻게 분석하나요?</h2><br>
					<p>고소각 머신러닝은 자체 개발한 '고소미'모델을 사용합니다. 해당 모델은 네이버,유튜브 등 다양한 커뮤니티 사이트에서 수집한 6만개 가량의 댓글을 
					Logistic Regression모델에 학습시켜 모욕성 판별에 약90%의 정확도를 보여줍니다.. 위 서비스는 앞으로도 꾸준히 자료를 수집하고 업데이트하여
					다양한 소비자의 요구를 반영할 예정입니다.</p>
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
						<h3>고소각 서비스</h3>
						<p>고소각 서비스는 
                           <a class="link" href="https://glaw.scourt.go.kr/wsjo/lawod/sjo190.do?contId=3201160&q=%EC%A0%95%EB%B3%B4%ED%86%B5%EC%8B%A0%EB%A7%9D%EC%9D%B4%EC%9A%A9%EC%B4%89%EC%A7%84%EB%B0%8F%EC%A0%95%EB%B3%B4%EB%B3%B4%ED%98%B8%EB%93%B1%EC%97%90%EA%B4%80%ED%95%9C%EB%B2%95%EB%A5%A0&nq=&w=lawod&section=lawod_nm&subw=&subsection=&subId=1&csq=&groups=2,3&category=&outmax=1&msort=&onlycount=&sp=&d1=&d2=&d3=&d4=&d5=&pg=1&p1=&p2=&p3=&p4=02&p5=&p6=&p7=&p8=&p9=&p10=&p11=&p12=&sysCd=&tabGbnCd=&saNo=&joNo=&lawNm=&hanjaYn=N&userSrchHistNo=&poption=&srch=&range=&daewbyn=N&smpryn=N&idgJyul=01&newsimyn=Y&tabId=&save=Y&bubNm=#1583915955660"><정보통신망 이용촉진 및 정보보호 등에 관한 법률></a> 근거하여 <br>
						      머신러닝을 통해 
						      고소가능 여부를 판단하는 시스템입니다.<br>
						   
						     서비스 결과는 참고자료로 사용하시고 
						     실제 판결 결과는 다를 수도 있으니
                                                     변호사와 상담을 추천드립니다.</p>
					</div>
				</div> -->
				
				<div class="col-md-4 col-sm-4">
					<div class="features-content">
						<span class="box1"><span aria-hidden="true" class="icon-printer"></span></span>
						<h3>악플 고소 성립요건</h3><br>
						<p><b>1. 목적</b><br><br>
	상대의 사회적 평판이 떨어질 정도의 표현(단순한 조롱 X)
 	실질적으로 명예에 해가 되지 않았어도 무관 
 	문서, 동작, 특정 행위 등 모두 포함됩니다.<br><br>

	<b>2. 특정 피해자가 존재</b><br><br>
형사사건 처리 과정에서는 모욕을 한 사람과 당한 사람이 확실하게 정해져 있어야 합니다.
실명을 거론하며 특정 인물을 지칭하는 것이 아니지만 제3자가 보았을 때 누군가가 특정이 될 수 있다면 죄가 성립됩니다.<br><br>

	<b>3. 공연성</b><br><br>
	다수에게 알려진 것을 말하며, 집단이 특정되어 있어도 상관이 없습니다. 따라서 당사자 단둘만 있는 상황에서 벌어진 상황이라면 처벌이 불가능합니다.</p>
					</div>
				</div> 
				
				<div class="col-md-4 col-sm-4">
					<div class="features-content">
						<span class="box1"><span aria-hidden="true" class="icon-dial"></span></span>
						<h3>악플러가 받을 수 있는 처벌</h3><br>
						<p><b>1. 모욕죄</b><br><br>
상대방에 대하여 욕, 조롱 또는 악평을 가하는 등 구체적인 사실을 적시하지 않고 추상적 판단, 경멸적 감정 표현을 언급할 때 성립될 수 있습니다.

모욕죄에 해당하는 경우 1년 이하의 징역형이나 금고, 200만 원 이하의 벌금형을 받을 수 있습니다.<br><br><br>

<b>2. 명예훼손죄</b><br><br>
허위 사실이 아니라 진실한 사실이라도 공공연하게 이야기하는 것이 당사자의 사회적 명예를 훼손하는 것이라면 성립되는 범죄입니다.

명예훼손죄에 해당하는 경우, 만약 진실한 사실을 적시한 경우라면 2년 이하의 징역이나 금고 또는 500만 원 이하의 벌금에 처해지며, 허위의 사실을 적시한 경우 5년 이하의 징역이나 10년 이하의 자격정지 또는 1000만 원 이하의 벌금에 처해지게 됩니다.
						</p>
					</div>
				</div>
				
				<div class="col-md-4 col-sm-4">
					<div class="features-content">
						<span class="box1"><span aria-hidden="true" class="icon-search"></span></span>
						<h3>악플 고소 절차</h3><br>
						<p>일반적인 모욕죄와 명예훼손에 해당하는 경우에는 상대방의 인적 사항을 확보하여 명예훼손을 한 사실을 바탕으로 고소장을 작성하여 경찰서에 접수를 하면 됩니다.<br>

하지만 문제는 바로 모욕, 명예를 훼손한 사람이 익명의 아이디를 사용한다면 상대방을 특정하기 힘들기 때문에 악플러 고소 절차를 진행하기 힘들 수 있습니다.<br> 이러한 경우 수사기관에 해당 아이디를 사용한 사람의 인적 사항을 확보, 소환하여 조사하는 수사를 진행하고, 최종적으로 처벌을 받을 수 있도록 하여야 합니다.<br>
법적 대응을 하고자 할 때는 사건의 객관적인 증거와 정황, 그리고 법적으로 어떤 것에 해당하는지를 정확히 아는 법적 지식이 필요합니다. 본인의 힘으로 판단하고자 하면 불분명함 때문에 손해를 입을 수 있으므로 변호인과 조력하여 해당 내용을 검토하여 성립 요건이 해당이 되는지, 전문적으로 파헤쳐 볼 필요가 있습니다.</p>
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