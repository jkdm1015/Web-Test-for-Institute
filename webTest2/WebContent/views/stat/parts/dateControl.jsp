<%@page import="java.util.Calendar"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	Calendar calendar = Calendar.getInstance();
	calendar.setTime(new Date());
	calendar.set(Calendar.DATE, calendar.get(Calendar.DATE) - 7);
	SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy년MM월dd일");
	// System.out.println("-7일 : " + dateFormat.format(calendar.getTime()));
	// System.out.println("오늘 : " + dateFormat.format(new Date()));
%>    
    
<div id="dateControlPanel">
	<span>시작날짜 <input type="text" name="startDate" id="datepicker" /> ~ 끝 날짜 <input type="text" name="endDate" id="datepicker2" /></span>
	<button id="">검색</button>
</div>

<script>
$(function(){
	$("#datepicker").datepicker({minDate: "-6M", maxDate: "0D"});
	$("#datepicker2").datepicker({minDate: "-6M", maxDate: "0D"});
	
	$("#datepicker").datepicker("option", "dateFormat", "yy년mm월dd일");
	$("#datepicker2").datepicker("option", "dateFormat", "yy년mm월dd일");
}());
</script>