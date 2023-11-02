package com.poly.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/bai2")
public class bai2Servlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("bai2.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	    String layA, layB;
	    layA = req.getParameter("txtA");
	    layB = req.getParameter("txtB");
	    double Tong = 0;
	    boolean loi = false;
	    String thongBao = "";

	    try {
	        Tong = Double.parseDouble(layA) + Double.parseDouble(layB);
	    } catch (NumberFormatException e) {
	        loi = true;
	        thongBao = "hãy nhập số hợp lệ";
	    }

	    if (loi) {
	        req.setAttribute("ketqua", thongBao);
	    } else {
	        req.setAttribute("ketqua", Tong);
	    }

	    req.getRequestDispatcher("bai2.jsp").forward(req, resp);
	}

}
