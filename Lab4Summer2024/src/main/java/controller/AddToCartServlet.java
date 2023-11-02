package controller;

import model.Item;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/addToCart")
public class AddToCartServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		req.getRequestDispatcher("views/cart.jsp").forward(req, resp);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String itemName = request.getParameter("itemName");
		String itemImage = request.getParameter("itemImage");
		double itemPrice = 0.0;
		double itemDiscount = 0.0;

		try {
			if (request.getParameter("itemPrice") != null && !request.getParameter("itemPrice").trim().isEmpty()) {
				itemPrice = Double.parseDouble(request.getParameter("itemPrice"));
			}
			if (request.getParameter("itemDiscount") != null
					&& !request.getParameter("itemDiscount").trim().isEmpty()) {
				itemDiscount = Double.parseDouble(request.getParameter("itemDiscount"));
			}
		} catch (NumberFormatException e) {
			e.printStackTrace();
			response.sendRedirect("error.jsp");
			return;
		}
		HttpSession session = request.getSession();
		List<Item> cartItems = (List<Item>) session.getAttribute("cartItems");
		int cartSize = 0;
		if (cartItems == null) {
			cartItems = new ArrayList<>();
		}
		Item newItem = new Item(itemName, itemImage, itemPrice, itemDiscount);
		cartItems.add(newItem);
		session.setAttribute("cartItems", cartItems);
		if (cartItems != null) {
			cartSize = cartItems.size();
		}
		session.setAttribute("cartSize", cartSize);
		response.sendRedirect("views/cart.jsp");
	}
}