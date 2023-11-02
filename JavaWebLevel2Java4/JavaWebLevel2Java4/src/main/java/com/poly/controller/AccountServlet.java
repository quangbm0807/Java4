package com.poly.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import org.apache.commons.beanutils.BeanUtils;

import com.poly.dao.UserDAO;
import com.poly.model.User;

/**
 * Servlet implementation class AccountServlet
 */
@WebServlet(urlPatterns = { "/account/sign-in", "/account/sign-up", "/account/sign-out", "/account/forgot-password",
		"/account/change-password", "/account/edit-profile" })
public class AccountServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AccountServlet() {
		super();
	}

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String uri = request.getRequestURI();
		if (uri.contains("sign-in")) {
			doSignIn(request, response);
		} else if (uri.contains("sign-up")) {
			doSignUp(request, response);
		} else if (uri.contains("sign-out")) {
			doSignOut(request, response);
		} else if (uri.contains("edit-profile")) {
			doEditProfile(request, response);
		} else if (uri.contains("forgot-password")) {

		} else if (uri.contains("change-password")) {

		}
	}

	private void doSignUp(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String method = request.getMethod();
		if (method.equalsIgnoreCase("POST")) {
			try {
				User entity = new User();
				BeanUtils.populate(entity, request.getParameterMap());
				UserDAO dao = new UserDAO();
				dao.create(entity);
				request.setAttribute("message", "Sign-up successfully!");
				response.setHeader("Refresh", "1;url=/JavaWebLevel2Java4/account/sign-in");
			} catch (Exception e) {
				request.setAttribute("message", "Sign-up Error!");
			}
		}
		request.getRequestDispatcher("/views/account/sign-up.jsp").forward(request, response);
	}

	private void doSignIn(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String method = request.getMethod();
		if (method.equalsIgnoreCase("POST")) {
			String id = request.getParameter("id");
			String pw = request.getParameter("password");
			try {
				UserDAO dao = new UserDAO();
				User user = dao.findById(id);
				System.out.println(user.getFullname()+"&"+user.getPassword()+"-----------------");
				if (!user.getPassword().equals(pw)) {
					
					request.setAttribute("message", "Invalid password!");
				} else {
					request.setAttribute("message", "Sign-in successfully!");
					request.getSession().setAttribute("user", user);
					response.setHeader("Refresh", "1;url=/JavaWebLevel2Java4/account/edit-profile");
				}
			} catch (Exception e) {
				request.setAttribute("message", "Invalid username!");
			}
		}
		request.getRequestDispatcher("/views/account/sign-in.jsp").forward(request, response);
	}

	private void doEditProfile(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		User user = (User) request.getSession().getAttribute("user");
		String method = request.getMethod();
		if (method.equalsIgnoreCase("POST")) {
			try {
				BeanUtils.populate(user, request.getParameterMap());
				UserDAO dao = new UserDAO();
				dao.update(user);
				request.setAttribute("message", "Update account successfully!");
			} catch (Exception e) {
				request.setAttribute("message", "Update account error!");
			}
		}
		request.getRequestDispatcher("/views/account/edit-profile.jsp").forward(request, response);
	}

	private void doSignOut(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		request.removeAttribute("id");
		session.invalidate();
		request.setAttribute("message", "Sign out successfully!");
		request.getRequestDispatcher("/views/account/sign-in.jsp").forward(request, response);
	}
}
