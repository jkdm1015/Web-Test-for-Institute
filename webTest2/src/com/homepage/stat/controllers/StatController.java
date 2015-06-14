package com.homepage.stat.controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class StatController
 */
@WebServlet({ "/stat/favBook", "/stat/bookSearchStat", "/stat/visitor" })
public class StatController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("수정완료~~");
		
		String forwardUrl = null;
		
		switch(request.getServletPath()){
		
			case "/stat/favBook":
				forwardUrl = favBookService(request);
				break;
			case "/stat/bookSearchStat":
				forwardUrl = bookSearchStatService(request);	
				break;
			case "/stat/visitor":
				forwardUrl = visitorCntService(request);
				break;
			default:
				throw new RuntimeException();
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(forwardUrl);
		dispatcher.forward(request, response);
	}

	private String visitorCntService(HttpServletRequest request) {
		// 작업
		return "/views/stat/visitor.jsp";
	}

	private String bookSearchStatService(HttpServletRequest request) {
		// 작업
		return "/views/stat/realTimeBookSearchStat.jsp";
	}

	private String favBookService(HttpServletRequest request) {
		// 작업
		return "/views/stat/favBookByAgeGroup.jsp";
	}
}
