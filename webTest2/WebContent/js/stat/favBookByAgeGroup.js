	
$(function(){
	
	$(document).ready(function(){
		selectAgeGroupTab(0);
	});
	
}());

function selectAgeGroupTab(idx){
	changeSelectedTab(idx);
	changeChartView(idx);
	changeRankTable(idx);
}

function changeSelectedTab(idx){
	$("div.ageGroup ul li").removeClass("selected");
	$("div.ageGroup ul li").eq(idx).addClass("selected");
}

function changeChartView(idx){
	$("div.chartBox").css("display", "none");
	$("div.chartBox").eq(idx).css("display", "block");
	
}

function changeRankTable(idx){
	$("div.rankTable").css("display", "none");
	$("div.rankTable").eq(idx).css("display", "inline-block");

}