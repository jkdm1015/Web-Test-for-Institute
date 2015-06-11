<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>통계 페이지</title>
	
	<style>
		@IMPORT url("<%=request.getContextPath()%>/css/stat/favBookByAgeGroup.css");
	</style>
</head>
<body>
	
	
<article id="statContent">
	<jsp:include page="/views/stat/parts/leftSnb.jsp" />
	
	<article id="rightContent">
		<div id="timeControlPanel">시작날짜 : ~ 끝 날짜 :</div>
	</article>

</article>
	
	
</body>
</html>