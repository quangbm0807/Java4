package com.poly.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.List;

import org.apache.commons.beanutils.BeanUtils;

import com.poly.dao.UserDAO;
import com.poly.model.User;

/**
 * Servlet implementation class UserServlet
 */
@WebServlet({"/userList","/user/delete", "/user/add","/user/edit"})
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    @Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String uri = request.getRequestURI();
		if (uri.contains("userList")) {
			doUserList(request, response);
		}else if (uri.contains("user/delete")){
			try {
				doUserDelete(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} if (uri.contains("user/add")){
			doUserAdd(request, response);
			
		}else if(uri.contains("/user/edit")) {
			try {
				doUserUpdate(request, response);
			} catch (IllegalAccessException | InvocationTargetException | ServletException | IOException e) {
				e.printStackTrace();
			}
		}
	}

	private void doUserUpdate(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, IllegalAccessException, InvocationTargetException {
		if(request.getMethod().equals("POST")) {
			if(request.getParameter("updateUserButton") != null) {
//				String id = request.getParameter("id");
//				String fullName = request.getParameter("fullname");
//				String email = request.getParameter("email");
//				String userType = request.getParameter("userType");
//				String password = request.getParameter("password");
//				UserDAO userDAO = new UserDAO();
//				User user = new User(id, password, email, fullName, Boolean.parseBoolean(userType));
				
				User user = new User();
				BeanUtils.populate(user, request.getParameterMap());
				UserDAO userDAO = new UserDAO();
				userDAO.update(user);
				
				String message = "Edit user " + user.getId() + " successfully!";
				request.setAttribute("message", message);
				request.getRequestDispatcher("/userList").forward(request, response);
			}else
				request.getRequestDispatcher("/userList").forward(request, response);
		}else { //GET METHOD
			String userId = request.getParameter("id");
			UserDAO userDAO = new UserDAO();
			User user = userDAO.findById(userId);
			if(user != null) {
				request.setAttribute("user", user);
				request.getRequestDispatcher("/views/updateUser.jsp").forward(request, response);
			}else
				request.getRequestDispatcher("/userList").forward(request, response);

		}
	}

	private void doUserAdd(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getMethod().equals("POST")) {
			if(request.getParameter("addUserButton") != null) {
				String id = request.getParameter("id");
				String fullName = request.getParameter("fullname");
				String email = request.getParameter("email");
				String userType = request.getParameter("userType");
				String password = request.getParameter("password");
				UserDAO userDAO = new UserDAO();
				User user = new User(id, password, email, fullName, Boolean.parseBoolean(userType));
				userDAO.create(user);
				String message = "Add user: " + id + " successfully!";
				request.setAttribute("message", message);
				request.getRequestDispatcher("/views/addUser.jsp").forward(request, response);
			}else
				request.getRequestDispatcher("/userList").forward(request, response);
		}else //GET METHOD
			request.getRequestDispatcher("/views/addUser.jsp").forward(request, response);

	}

	private void doUserDelete(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String userId = request.getParameter("id");
			System.out.println("ID USER: " + userId);
		if(userId != null) {
			UserDAO userDAO = new UserDAO();
			//Find id is existed in database?
			User findUser = userDAO.findById(userId);
			System.out.println("FindUSER: " + findUser);
			String message = "";
			if(findUser != null && findUser.getId() != null) {
				userDAO.delete(userId);
				message = "Delete user: " + userId + " successfully!";	
			}else
			{
				message = "The user id: " + userId + " doesn't existed!";
			}
			
			request.setAttribute("message", message);
			request.getRequestDispatcher("/userList").forward(request, response);
		}
		request.getRequestDispatcher("/userList").forward(request, response);

	}

	private void doUserList(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		UserDAO userDAO = new UserDAO();
		List<User> listUsers = userDAO.findAll();
		request.setAttribute("listUsers", listUsers);
		request.getRequestDispatcher("/views/listOfUsers.jsp").forward(request, response);
	}



}
