<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>통계 페이지</title>
	
	<style>
		@IMPORT url("<%=request.getContextPath()%>/css/stat/realTimeBookSearchStat.css");
	</style>
	
	
	<!-- HighCharts -->
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
	<script src="http://code.highcharts.com/highcharts.js"></script>
	
	<!-- JQuery UI -->
	<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
	<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
	
	<script src="<%=request.getContextPath()%>/js/stat/stat-common.js"></script>
	<script src="<%=request.getContextPath()%>/js/stat/realTimeBookSearchStat.js"></script>
	
</head>
<body>
	
		
	<article id="statContent">
		<jsp:include page="/views/stat/parts/leftSnb.jsp" />
	
		<article id="rightContent">

			<section class="tabPanel">
				<ul>
					<li class="selected" onclick="selectTab(0);">전체</li>
					<li onclick="selectTab(1);">분류별</li>
				</ul>
			</section>
	
	
			<section class="rankBox">
				<h3>전체 순위</h3>
				
				<table class="rankTable">
					<colgroup>
						<col width="30px" />
						<col width="200px" />
						<col width="60px" />
						<col width="100px" />
					</colgroup>
					<thead>
						<tr>
							<th>순위</th>
							<th>책 제목</th>
							<th>저자</th>
							<th>출판사</th>
						</tr>
					</thead>
					<tbody>
						<tr class="odd">
							<td>1</td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr class="even">
							<td>2</td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td>3</td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td>4</td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td>5</td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td>6</td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td>7</td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td>8</td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td>9</td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td>10</td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td>11</td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td>12</td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td>13</td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td>14</td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td>15</td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td>16</td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td>17</td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td>18</td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td>19</td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td>20</td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td>21</td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td>22</td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td>23</td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td>24</td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td>25</td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
					
					</tbody>
				</table>
			</section>
			
			
			<div class="statRule">
				<ul>
					<li>
						실시간으로 검색되는 책 이름을 순위로 매깁니다. 단, 책 이름은 저희 도서관에서 제공하는 책일 경우로 한정합니다.
					</li>
					
					<li>30초마다 책 검색 순위가 자동으로 업데이트됩니다.</li>
					<li>순위는 최대 25위까지 보여줍니다.</li>
				</ul>
			</div>
			
		</article><!-- rightContent -->
	</article><!-- statContent -->

<script>


</script>		

	
</body>
</html>