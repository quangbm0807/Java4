package com.poly.servlet;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import com.poly.dao.UserDAO;
import com.poly.entity.User;

@WebServlet({ "/user/index", "/user/create", "/user/update", "/user/delete", "/user/reset", "/user/edit/*",
		"/user/delete/*" })
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public UserServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=UTF-8");

		String url = request.getRequestURL().toString();
		String pageParam = request.getParameter("page");
		int page = pageParam != null ? Integer.parseInt(pageParam) : 0;
		int size = 5;

		if (url.contains("delete")) {
			delete(request, response);
		} else if (url.contains("edit")) {
			edit(request, response);
		}

		findAll(request, response, page, size);
		request.getRequestDispatcher("/views/user.jsp").forward(request, response);
	}

	private void findAll(HttpServletRequest request, HttpServletResponse response, int page, int size)
			throws ServletException, IOException {
		UserDAO dao = new UserDAO();
		List<User> list = dao.findPage(page, size);
		long totalUsers = dao.count();
		long totalPages = (totalUsers + size - 1) / size;

		request.setAttribute("users", list);
		request.setAttribute("currentPage", page);
		request.setAttribute("totalPages", totalPages);
	}

	private void edit(HttpServletRequest request, HttpServletResponse response) {
		try {
			String id = request.getParameter("id");
			UserDAO dao = new UserDAO();
			User user = dao.findById(id);
			request.setAttribute("user", user);
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", "Error: " + e.getMessage());
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=UTF-8");

		String action = request.getParameter("action");
		if ("create".equals(action)) {
			create(request, response);
		} else if ("update".equals(action)) {
			update(request, response);
		} else if ("delete".equals(action)) {
			delete(request, response);
		} else if ("reset".equals(action)) {
			request.setAttribute("user", new User());
		}

		String pageParam = request.getParameter("page");
		int page = pageParam != null ? Integer.parseInt(pageParam) : 0;
		int size = 5;

		findAll(request, response, page, size);
		request.getRequestDispatcher("/views/user.jsp").forward(request, response);
	}

	protected void create(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			User user = new User();
			BeanUtils.populate(user, request.getParameterMap());
			UserDAO dao = new UserDAO();
			dao.create(user);
			request.setAttribute("message", "Create success!");
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", "Error: " + e.getMessage());
		}
	}

	protected void update(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			User user = new User();
			BeanUtils.populate(user, request.getParameterMap());
			UserDAO dao = new UserDAO();
			dao.update(user);
			request.setAttribute("message", "Update success!");
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", "Error: " + e.getMessage());
		}
	}

	protected void delete(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			String id = request.getParameter("id");
			UserDAO dao = new UserDAO();
			dao.remove(id);
			request.setAttribute("message", "Delete success!");
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", "Error: " + e.getMessage());
		}
	}
}
