<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("EUC-KR");
		int publicScore = 0;
		int specScore = 0;
		int insultScore = 0;
		String inputIdName = request.getParameter("inputIdName");
		String selectpicker = request.getParameter("selectpicker");
		String inputText = request.getParameter("inputText");

		if (selectpicker.equals("커뮤니티 게시판") | selectpicker.equals("유튜브")) {
			publicScore = 1;
		}
		if (inputIdName.contains(inputText)) {
			specScore = 1;
		}
	%>
	<script type="text/javascript">
		function myClick() {
			var sw = inputText
			console.log(sw)
			$.ajax({
				url : "http://localhost:9000/re/" + sw,
				method : "POST",
				success : function(rs) {
					if (rs.result == "1") {
						insultScore = 1
					}
				}
			});
			document.write("아이디/이름:"+request.getParameter("inputIdName")+"<br>");
			document.write("사이트 종류:"+request.getParameter("selectpicker")+"<br>");
			document.write("입력 내용:"+request.getParameter("inputText")+"<br>");
			
			var totalScore =publicScore+specScore+insultScore
			document.write("<hr>");
			document.write("공영성 판별:"+publicScore+"<br>");
			document.write("특정성 판별:"+specScore+"<br>");
			document.write("모욕성 판별:"+insultScore+"<br>");
			document.write("총 점수:"+totalScore)
		}
	</script>

	
</body>
</html>