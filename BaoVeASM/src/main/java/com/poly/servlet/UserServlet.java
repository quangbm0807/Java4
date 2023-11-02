package com.poly.servlet;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.beanutils.BeanUtils;

import com.poly.dao.UserDAO;
import com.poly.entity.User;

@WebServlet({ "/user/index", "/user/create", "/user/update", "/user/delete", "/user/reset", "/user/edit/*" })
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=UTF-8");

		HttpSession session = request.getSession(false);
		if (session == null || session.getAttribute("user") == null) {
			response.sendRedirect(request.getContextPath() + "/login?message="
					+ encodeMessage("Please login to access User Management."));
			return;
		}

		User currentUser = (User) session.getAttribute("user");
		request.setAttribute("welcomeMessage", "Welcome, " + currentUser.getFullname());

		String action = request.getServletPath();
		if (action.startsWith("/user/edit/")) {
			edit(request, response);
		} else {
			handleList(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=UTF-8");

		HttpSession session = request.getSession(false);
		if (session == null || session.getAttribute("user") == null) {
			response.sendRedirect(
					request.getContextPath() + "/login?message=" + encodeMessage("Please login to continue."));
			return;
		}

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

		handleList(request, response);
	}

	private void handleList(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String keyword = request.getParameter("fullname");
		String id = request.getParameter("id");
		String emailParam = request.getParameter("email");
		String roleParam = request.getParameter("role");
		String pageParam = request.getParameter("page");
		int page = pageParam != null ? Integer.parseInt(pageParam) : 0;
		int size = 5;
		Boolean admin = roleParam != null ? Boolean.parseBoolean(roleParam) : null;

		UserDAO dao = new UserDAO();
		List<User> list = dao.findUsers(id, keyword, emailParam, admin, page, size);
		long totalUsers = dao.countUsers(id, keyword, emailParam, admin);
		int totalPages = (int) ((totalUsers + size - 1) / size);

		request.setAttribute("users", list);
		request.setAttribute("currentPage", page);
		request.setAttribute("totalPages", totalPages);
		request.setAttribute("keyword", keyword);
		request.setAttribute("email", emailParam);
		request.setAttribute("role", roleParam);

		request.getRequestDispatcher("/views/user.jsp").forward(request, response);
	}

	private void edit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    try {
	        String id = request.getPathInfo().substring(1);
	        UserDAO dao = new UserDAO();
	        User user = dao.findById(id);
	        request.setAttribute("user", user); 
	        request.getRequestDispatcher("/views/user.jsp").forward(request, response); 
	    } catch (Exception e) {
	        e.printStackTrace();
	        request.setAttribute("error", "Error: " + e.getMessage());
	        request.getRequestDispatcher("/views/user.jsp").forward(request, response);
	    }
	}


	private void create(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			User user = new User();
			BeanUtils.populate(user, request.getParameterMap());
			UserDAO dao = new UserDAO();
			dao.create(user);
			request.setAttribute("message", "User created successfully!");
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", "Error: " + e.getMessage());
		}
	}

	private void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			User user = new User();
			BeanUtils.populate(user, request.getParameterMap());
			UserDAO dao = new UserDAO();
			dao.update(user);
			request.setAttribute("message", "User updated successfully!");
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", "Error: " + e.getMessage());
		}
	}

	private void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String id = request.getParameter("id");
			UserDAO dao = new UserDAO();
			dao.remove(id);
			request.setAttribute("message", "User deleted successfully!");
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", "Error: " + e.getMessage());
		}
	}

	private String encodeMessage(String message) {
		try {
			return URLEncoder.encode(message, "UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
			return "";
		}
	}
}