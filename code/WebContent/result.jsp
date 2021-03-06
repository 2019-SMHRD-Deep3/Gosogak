<%@page import="com.model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>

<html class="no-js" lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>고소각 | 분석 하기</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- All Plugin Css -->
<link rel="stylesheet" href="css/plugins.css">

<!-- Style & Common Css -->
<link rel="stylesheet" href="css/common.css">
<link rel="stylesheet" href="css/main.css">

<style>
.col-md-5 {
	width: 13% !important;
	margin-left: 0.5% !important;
}

#content {
	width: 55% !important;
	margin-left: 1% !important;
}

.col-md-2 {
	width: 16%;
	padding-right: 15px;	
}

.link:hover {
	text-decoration: underline;
	color: blue;
}

.link {
	font-weight: bold;
}

.warning {
	text-align: center;
}

.warning1 {
	color: red;
	margin-top: 3%;
}

.col-md-3.col-sm-3 {
	width: 13% !important;
	margin-left: 1% !important;
}

.features-content {
	width: 80% !important;
}

.col-md-10 {
	line-height: 3em;
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
	margin: 20px auto;
	margin-left: 20px;
	margin-right: 20px;
	padding: 14px 25px;
}

.btn2:hover {
	background: #da0833;
}

#warning {
	text-align: center;
	color: red;
	margin-top: 1%;
}

.result {
	margin-top: -50%;
}

.caption p {
	margin-bottom: 50px;
}

#btn1{
	margin: 0px auto;
	width: 85%;
	margin-right: 0.5%;
	padding-bottom: 11%;
	padding-top: 11%;	
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

.panel.panel-default{
	text-align: center;
}

.col-md-9{
width:95%;
}
#warn{
	color:red;
}
hr{
margin-bottom:0px;}


.resultImg{
/*   -webkit-animation: spin 4s infinite linear;
  -o-animation: spin 4s infinite linear;
  -moz-animation: spin 4s infinite linear;
  animation: spin 4s infinite linear; */
    -webkit-animation: spin 1s linear;
  -o-animation: spin 1s linear;
  -moz-animation: spin 1s linear;
  animation: spin 1s linear;
}
 
@-webkit-keyframes spin {
    0%  {-webkit-transform: rotate(0deg);}
    100% {-webkit-transform: rotate(360deg);}
}
 
@-moz-keyframes spin {
   0%  {-moz-transform: rotate(0deg);}
    100% {-moz-transform: rotate(360deg);}
}
@keyframes spin {
    0%  {transform: rotate(0deg);}
    100% {transform: rotate(360deg);}
}
.resultImgStop{    
    -webkit-animation-play-state: paused;
    -moz-animation-play-state: paused;
    -ms-animation-play-state: paused;
    -o-animation-play-state: paused;
    animation-play-state: paused;
}


.basic-information{
width:48%;
float:left;
}
#con{
color:blue;
}

</style>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>

<%
	MemberDTO info = (MemberDTO) session.getAttribute("info");
%>


<script type="text/javascript">
	var publicScore=0;
	var insultScore = 0;
	var specScore = 0;
</script>
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


<section class="main-banner">
	<video id="video" preload="auto" autoplay="true" loop="loop" muted="muted" volume="0">
      <source src="img/coverr-sparks.mp4">
	 </video>
	<!--  style="background: #242c36 url(img/main3.jpg) no-repeat">-->
	<div class="container">
		<div class="caption">
			<h2><b>이거.. 고소 각?</b></h2>			
			<fieldset>
				
				<div class="col-md-5 col-sm-5 no-pad">
					<input type="text" id="inputIdName" name="inputIdName"
						class="form-control border-right" placeholder="아이디/이름 입력" />

				</div>
				<div class="col-md-3 col-sm-3 no-pad">
					<select class="selectpicker" name="selectpicker">
						<option>1:1 채팅</option>
						<option>개인 블로그</option>
						<option>개인 SNS</option>
						<option>커뮤니티 게시판</option>
						<option>유튜브</option>
					</select>
				</div>
				<div class="col-md-4 col-sm-4 no-pad" id="content">
					<input type="text" id="inputText" class="form-control border-right"
						placeholder="텍스트 입력" />
				</div>
				<div class="col-md-2 col-sm-2 no-pad">
					<button onclick="myClick()" class="btn brows-btn" id="btn1">click</button>



				</div>
				
			</fieldset>
		</div>
	</div>
</section>
<div class="warning">
	<h4 class="warning1">※  경 고 :  해당 서비스는 법적 효력이 없으며 악용시 처벌을 받을 수 있습니다.  ※</h4>
</div>
<br><br><br><br><br>
<section>
	<div class="row heading">
		<h2 id="result"></h2>

	</div>
	<br><br><br><br><br><br>
	<div class="row">
		<%
			if (info == null) {
		%>
		<form action="login.jsp">
			<%
				}
			%>
			<p id="more" align="center">
				자세한 분석결과를 보려면
				<자세히 보기> 를 눌러주세요. 
			</p>
			<button type="submit" class="btn brows-btn detail" name="detail"
				value="result">자세히 보기</button>
		</form>
	</div>

	<section class="profile-detail">
		<div class="resultHide">
			<div class="container">
				<div class="col-md-12">
					<div class="row">
						<div class="basic-information" >
							<div class="col-md-9 col-sm-9">
								<div class="profile-content">
									<div class="panel-heading">
									
								
									<h2>
										상세 분석 결과</h2><hr></div><span id="warn"> : 본 분석결과는 법적효력이 없으며, 참고만 사용하시기 바랍니다.</span>
									<br><br><br>
									
									<ul class="information">
										<li><span>모욕성:</span><span id="insult"></span></li>
										<li><span>공연성:</span><span id="public"></span></li>
										<li><span>특정성:</span><span id="spec"></span></li>
									</ul>
								</div>
							</div>
							<div class="panel panel-default">
								
								<!-- /.panel-heading -->
								<!-- <div class="panel-body">
									<p>The front end is the part that users see and interact
										with, includes the User Interface, the animations, and usually
										a bunch of logic to talk to the backend. It is the visual bit
										that the user interacts with.</p>
								</div> -->
							</div>
						</div>
						<div class="basic-information" style="float:right;">
							<div class="col-md-9 col-sm-9">
								<div class="profile-content">
									<div class="panel-heading">
									
								
									<h2>
										고소각 성립 조건</h2><hr></div><span id="con"> : 다음 세가지 조건을 <b>모두</b> 만족해야만 승소확률이 높습니다.</span>
									<br><br><br>
									<ul class="information">
										
										<li><b>모욕성 : </b> 모욕적이거나 경멸적인 표현이 포함되어 있음</li>
										<li><b>공연성 : </b> 불특정 다수나 특정 집단에서 표현된 상황<</li>
										<li><b>특정성 : </b> 제 3자가 피해자를 특정할 수 있는 댓글</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<section align=center>
				<div>					
				<button onclick="myInsert()" class="btn2" >분석결과 저장</button>			
				<button onclick="location='counsel.jsp'" class="btn2" >1 : 1 상담 매칭</button>
				<!--<input type="submit" class="btn2" value="1 : 1 상담 매칭" />-->			
				
				</div>							
			</section>
		</div>
	</section>
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
<script type="text/javascript">
						function myClick() {
							$(".row").show();
							window.scrollTo(200,700);
							insultScore =0;
							publicScore = 0;
							specScore = 0;
							console.clear()
							/* console.log(inputIdName);
							console.log(selectpicker);
							console.log(inputText); */
							var inputText = $('#inputText').val()
							var ins =document.querySelector('#insult');
							var pub =document.querySelector('#public');
							var spe =document.querySelector('#spec');
							
							// 댓글 판별
							$.ajax({
								url : "http://localhost:9000/re/" + inputText,
								method : "POST",
								success : function(rs) {
									var inputIdName = $('#inputIdName').val();
									var selectpicker = $('.selectpicker').val();
									var inputText2 = inputText
									
									
									
									/* var publicScore = 0; */
									var totalScore = 0;
									
									// 모욕성 판별
									if (rs.result == "1") {
										console.log('모욕성:1')
										insultScore += 1;
										totalScore += 1;
										ins.innerHTML = '있음';
										$(ins).css({
										color : 'red'})
									}else{
										console.log('모욕성:0')
										ins.innerHTML = '없음';
										$(ins).css({
											color : 'black'})
									}
									
									// 공연성 판별
									if(selectpicker == "커뮤니티 게시판" || selectpicker == "유튜브"){
										console.log('공연성:1')
										publicScore += 1;
										totalScore += 1;
										pub.innerHTML = '있음';
										$(pub).css({
										color : 'red'})
									}else{
										console.log('공연성:0')
										pub.innerHTML = '없음';
										$(pub).css({
											color : 'black'})
									}
									
									// 특정성 판별
									if(inputText.indexOf(inputIdName)>=0){
										console.log('특정성:1');
										specScore += 1;
										totalScore += 1;
										spe.innerHTML = '있음';
										$(spe).css({
										color : 'red'})
									}else{
										console.log('특정성:0')
										spe.innerHTML = '없음';
										$(spe).css({
											color : 'black'})
									}
									
									console.log('총합:'+totalScore);
									// 이미지 적용부분
									if(totalScore>=3){
										$('.resultImg').remove();
										$('#result').append('<img id="im" class="resultImg" style="width: 550px;" src="img/sue.png">');										
									}else if(totalScore == 2){
										$('.resultImg').remove();
										$('#result').append('<img id="im" class="resultImg" style="width: 550px;" src="img/neutral.png">');
									}else{
										$('.resultImg').remove();
										$('#result').append('<img id="im" class="resultImg" style="width: 550px;" src="img/no.png">');
									}
								}
							});
							
							
							
						}</script>
<!-- 자세히 보기 버튼을 클릭할 때 -->

<script type="text/javascript" src=js/jquery.min.js></script>
<script>
$(function(){
	$(".row").hide();
});
		$(function() {
			$(".resultHide").hide();
		});
		if ('<%=info%>' == 'null') {
		$(function() {
			$(".btn.brows-btn.detail").on("click", function() {
				var check = confirm('로그인이 필요한 서비스입니다.');
			});
		});
	} else {
		$(function() {
			$(".btn.brows-btn.detail").on("click", function() {
				$(".btn.brows-btn.detail").hide()
				$("#more").hide()
				$(".resultHide").slideDown()
			});
		});
	}
</script>
<script type="text/javascript">
	function myInsert() {
		
		var inputText = $('#inputText').val()
		var ins = document.querySelector('#insult').innerHTML;
		var pub = document.querySelector('#public').innerHTML;
		var spe = document.querySelector('#spec').innerHTML;

		console.log(inputText);
		console.log(ins);
		console.log(pub);
		console.log(spe);
		
		
		
		$.ajax({
			url : "InsertAnalysisResult.do",
			type : "post",
			dataType : "text",
			data : "inputText="+inputText+"&ins="+ins+"&pub="+pub+"&spe="+spe,
			success : function(result){
				alert("저장 성공!");
			},
			error : function(){
				alert("error");
			}
		});

	}
</script>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/owl.carousel.min.js"></script>
<script src="js/bootsnav.js"></script>
<script src="js/main.js"></script>
</body>
</html>
