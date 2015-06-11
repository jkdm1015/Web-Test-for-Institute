<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%--
	특정 기간 범위로 대여 수가 가장 높은 책 순위 10위권
 --%>    
    
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>통계 페이지</title>
	
	<style>
		@IMPORT url("<%=request.getContextPath()%>/css/stat/favBook.css");
	</style>
	
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
	<script src="http://code.highcharts.com/highcharts.js"></script>
	
	<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
	<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
	
</head>
<body>
	
	
<article id="statContent">
	<jsp:include page="/views/stat/parts/leftSnb.jsp" />
	
	<article id="rightContent">
		<div id="timeControlPanel">
			<span>시작날짜 <input type="text" name="startDate" id="datepicker" /> ~ 끝 날짜 <input type="text" name="endDate" id="datepicker2" /></span>
			<button>검색</button>
		</div>
		
		<div class="chartBox">
			<div id="highChartContainer"></div>
		</div>
		
		<div class="rankBox">
			<div class="rankTable">
			
				<table style="width:100%;">
					<colgroup>
						<col width="20px" />
						<col width="170px" />
						<col width="60px" />
					</colgroup>					
					<thead>
						<tr>
							<th>순위</th>
							<th>책 제목</th>
							<th>누적 대여 횟수</th>
						</tr>
					</thead>
					<tbody>
						<tr class="odd">
							<td>1</td>
							<td><a href="#">아트인문학 여행 (김태진 저 / 카시오페아)</a></td>
							<td>15</td>
						</tr>
						<tr class="even">
							<td>2</td>
							<td><a href="#">고독육강 (쟝쉰 저 / 이야기가있는집)</a></td>
							<td>14</td>
						</tr>
						<tr class="odd">
							<td>3</td>
							<td><a href="#">옛 공부벌레들의 좌우명 (박수밀 저 / 샘터)</a></td>
							<td>14</td>
						</tr>
						<tr class="even">
							<td>4</td>
							<td><a href="#">집 나간 책 (서민 저 / 인물과상사)</a></td>
							<td>13</td>
						</tr>
						<tr class="odd">
							<td>5</td>
							<td><a href="#">글쓰기의 최전선 (은유 저 / 메멘토)</a></td>
							<td>12</td>
						</tr>
						<tr class="even">
							<td>6</td>
							<td><a href="#">심플 (임정섭 저 / 다산초당)</a></td>
							<td>11</td>
						</tr>
						<tr class="odd">
							<td>7</td>
							<td><a href="#">담론 (신영복 저 / 돌베개)</a></td>
							<td>10</td>
						</tr>
						<tr class="even">
							<td>8</td>
							<td><a href="#">직관펌프, 생각을 열다 (대니얼 데닛 저 / 동아시아)</a></td>
							<td>10</td>
						</tr>
						<tr class="odd">
							<td>9</td>
							<td><a href="#">씨네샹떼 (강신주, 이상용 저 / 민음사)</a></td>
							<td>9</td>
						</tr>
						<tr class="even">
							<td>10</td>
							<td><a href="#">유시민의 글쓰기 특강 (정당인 저 / 생각의길)</a></td>
							<td>9</td>
						</tr>
					</tbody>
				</table>
			
			</div>
		</div>
		
		<div class="statRule">
			<ul>
				<li>특정 기간 범위 내에서 누적 대여 횟수가 높은 상위 10권의 책들에 대한 통계입니다.</li>
			</ul>
		</div>
	</article>
</article>

<script>



$(function(){
	
	$(document).ready(function(){
		drawChart();
		drawCalendar();
	}());
	
}());

function drawCalendar(){
	$( "#datepicker" ).datepicker();
	$( "#datepicker2" ).datepicker();
}
		
function drawChart(){
	
	  $('#highChartContainer').highcharts({
	        chart: {
	            plotBackgroundColor: null,
	            plotBorderWidth: null,
	            plotShadow: false
	        },
	        title: {
	            text: '인기 있는 책 목록'
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
	            data: [
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
	        }]
	    });
}
	
	

</script>	
	
</body>
</html>