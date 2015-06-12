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
		
		<div class="ageGroup">
			<p>asdasd</p>
			<ul>
				<li>10대</li>
				<li>20대</li>
				<li>30대</li>
				<li>40대</li>
				<li>50대</li>
				<li>60대</li>
			</ul>
		</div>
		
		<div class="chartBox">
			<div id="highChartContainerFor10s"></div>
		</div>
		
		<!-- <div class="chartBox" style="top:-203.636px;">
			<div id="highChartContainerFor20s"></div>
		</div>
		
		<div class="chartBox" style="top:-407.272px;">
			<div id="highChartContainerFor30s"></div>
		</div>
		
		<div class="chartBox" style="top:-610.908px;">
			<div id="highChartContainerFor40s"></div>
		</div>
		
		<div class="chartBox" style="top:-814.544px;">
			<div id="highChartContainerFor50s"></div>
		</div>
		
		<div class="chartBox" style="top:-1018.18px;">
			<div id="highChartContainerFor60s"></div>
		</div> -->
		
		<div class="statRule">
			<ul>
				<li>특정 기간의 회원들의 나이대 별 누적 대여 횟수가 높은 상위 10권의 책들에 대한 통계입니다.</li>
			</ul>
		</div>
		
	</article><!-- rightContent -->

</article>

<script>

$(function(){
	
	$(document).ready(function(){
		drawChart();
	}());
	
}());
	
	

function drawChart(){
	
	drawChartInternal(
			"#highChartContainerFor10s", 
			'인기 있는 책 목록',
			
			[
             ['아트인문학 여행', 12.8],
             ['고독육강', 11.9],
             ['옛 공부벌레들의 좌우명', 11.9],
             ['집 나간 책', 11.1],
             ['글쓰기의 최전선', 10.2],
             ['심플', 9.4],
             ['담론', 8.5],
             ['직관펌프, 생각을 열다', 8.5],
             ['씨네샹떼', 7.6],
             ['유시민의 글쓰기 특강', 7.6],
             
         ]
	
	);
	
	
	
	/* drawChartInternal(
			 	"highChartContainerFor10s",
				"10대 회원들의 인기 도서",
				
				[
                    ['아트인문학 여행', 12.8],
	                ['고독육강', 11.9],
	                ['옛 공부벌레들의 좌우명', 11.9],
	                ['집 나간 책', 11.1],
	                ['글쓰기의 최전선', 10.2],
	                ['심플', 9.4],
	                ['담론', 8.5],
	                ['직관펌프, 생각을 열다', 8.5],
	                ['씨네샹떼', 7.6],
	                ['유시민의 글쓰기 특강', 7.6]
				] 
			); */
	
	/* drawChart( [  ['아트인문학 여행', 12.8],
		                ['고독육강', 11.9],
		                ['옛 공부벌레들의 좌우명', 11.9],
		                ['집 나간 책', 11.1],
		                ['글쓰기의 최전선', 10.2],
		                ['심플', 9.4],
		                ['담론', 8.5],
		                ['직관펌프, 생각을 열다', 8.5],
		                ['씨네샹떼', 7.6],
		                ['유시민의 글쓰기 특강', 7.6],
	                ]);
	
	
	drawChart( [  ['아트인문학 여행', 12.8],
		                ['고독육강', 11.9],
		                ['옛 공부벌레들의 좌우명', 11.9],
		                ['집 나간 책', 11.1],
		                ['글쓰기의 최전선', 10.2],
		                ['심플', 9.4],
		                ['담론', 8.5],
		                ['직관펌프, 생각을 열다', 8.5],
		                ['씨네샹떼', 7.6],
		                ['유시민의 글쓰기 특강', 7.6],
	                ]);
	
	
	
	drawChart( [  ['아트인문학 여행', 12.8],
		                ['고독육강', 11.9],
		                ['옛 공부벌레들의 좌우명', 11.9],
		                ['집 나간 책', 11.1],
		                ['글쓰기의 최전선', 10.2],
		                ['심플', 9.4],
		                ['담론', 8.5],
		                ['직관펌프, 생각을 열다', 8.5],
		                ['씨네샹떼', 7.6],
		                ['유시민의 글쓰기 특강', 7.6],
	                ]);
	
	
	drawChart( [  ['아트인문학 여행', 12.8],
		                ['고독육강', 11.9],
		                ['옛 공부벌레들의 좌우명', 11.9],
		                ['집 나간 책', 11.1],
		                ['글쓰기의 최전선', 10.2],
		                ['심플', 9.4],
		                ['담론', 8.5],
		                ['직관펌프, 생각을 열다', 8.5],
		                ['씨네샹떼', 7.6],
		                ['유시민의 글쓰기 특강', 7.6],
	                ]);
	
	
	
	drawChart( [  ['아트인문학 여행', 12.8],
		                ['고독육강', 11.9],
		                ['옛 공부벌레들의 좌우명', 11.9],
		                ['집 나간 책', 11.1],
		                ['글쓰기의 최전선', 10.2],
		                ['심플', 9.4],
		                ['담론', 8.5],
		                ['직관펌프, 생각을 열다', 8.5],
		                ['씨네샹떼', 7.6],
		                ['유시민의 글쓰기 특강', 7.6],
	                ]); */
}

function drawChartInternal(containerId, chartTitle, chartData){

	
	 $(containerId).highcharts({
	        chart: {
	            plotBackgroundColor: null,
	            plotBorderWidth: null,
	            plotShadow: false
	        },
	        title: {
	            text: chartTitle
	        },
	        tooltip: {
	            pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
	        },
	        plotOptions: {
	            pie: {
	                allowPointSelect: true,
	                cursor: 'pointer',
	                dataLabels: {
	                    enabled: true,
	                    format: '<b>{point.name}</b>: {point.percentage:.1f} %',
	                    style: {
	                        color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
	                    }
	                }
	            }
	        },
	        series: [{
	            type: 'pie',
	            name: 'Browser share',
	            data: chartData
	        }]
	    });
}
	

</script>

	
	
</body>
</html>