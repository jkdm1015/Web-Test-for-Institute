<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<div id="timeControlPanel">
	<span>시작날짜 <input type="text" name="startDate" id="datepicker" /> ~ 끝 날짜 <input type="text" name="endDate" id="datepicker2" /></span>
	<button>검색</button>
</div>

<script>
$(function(){
	$("#datepicker").datepicker({minDate: "-6M", maxDate: "0D"});
	$("#datepicker2").datepicker();
	
	$("#datepicker").datepicker("option", "dateFormat", "yy년mm월dd일");
	$("#datepicker2").datepicker("option", "dateFormat", "yy년mm월dd일");
		
}());
</script>