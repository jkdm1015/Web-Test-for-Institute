<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<aside id="leftSnb" style="height:100%;">
	<nav>
		<ul>
			<li><a href="<%=request.getContextPath()%>/views/stat/favBook.jsp">인기 있는 책 목록</a></li>
			<li><a href="<%=request.getContextPath()%>/views/stat/favBookByAgeGroup.jsp">나이대별 인기 책 목록</a></li>
			<li><a href="<%=request.getContextPath()%>/views/stat/visitor.jsp">방문자 수 조회</a></li>
		</ul>
	</nav>
</aside>