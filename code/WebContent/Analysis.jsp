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

		if (selectpicker.equals("Ŀ�´�Ƽ �Խ���") | selectpicker.equals("��Ʃ��")) {
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
			document.write("���̵�/�̸�:"+request.getParameter("inputIdName")+"<br>");
			document.write("����Ʈ ����:"+request.getParameter("selectpicker")+"<br>");
			document.write("�Է� ����:"+request.getParameter("inputText")+"<br>");
			
			var totalScore =publicScore+specScore+insultScore
			document.write("<hr>");
			document.write("������ �Ǻ�:"+publicScore+"<br>");
			document.write("Ư���� �Ǻ�:"+specScore+"<br>");
			document.write("��强 �Ǻ�:"+insultScore+"<br>");
			document.write("�� ����:"+totalScore)
		}
	</script>

	
</body>
</html>