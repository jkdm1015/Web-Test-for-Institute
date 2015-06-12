<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>통계 페이지</title>
	
	<style>
		@IMPORT url("<%=request.getContextPath()%>/css/stat/visitor.css");
	</style>
	
	
	<!-- HighCharts -->
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
	<script src="http://code.highcharts.com/highcharts.js"></script>
	
	<!-- JQuery UI -->
	<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
	<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
	
	<script src="<%=request.getContextPath()%>/js/stat/stat-common.js"></script>
	
</head>
<body>
	
	
<article id="statContent">
	<jsp:include page="/views/stat/parts/leftSnb.jsp" />
	
	<article id="rightContent">
		<jsp:include page="/views/stat/parts/dateControl.jsp" />
		
	</article>
</article>
	
	
</body>
</html>