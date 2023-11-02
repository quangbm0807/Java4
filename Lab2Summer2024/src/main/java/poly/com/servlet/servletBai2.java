package poly.com.servlet;

import java.io.IOException;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet({"/bai2"})
public class servletBai2 extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		req.getRequestDispatcher("/views/bai2.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		String gioiTinh = req.getParameter("gioiTinh");
		String married = req.getParameter("married");
		String country = req.getParameter("country");
		String ghichu = req.getParameter("ghiChu");
		String[] sothich = req.getParameterValues("sothich");
		String soThichString = Arrays.toString(sothich);
		soThichString = soThichString.substring(1, soThichString.lastIndexOf("]"));

		String marriedStatus = "";
		if (married == null) {
			marriedStatus = "Độc thân";
		} else {
			marriedStatus = married;
		}


		req.setAttribute("username", username);
		req.setAttribute("password", password);
		req.setAttribute("gioitinh", gioiTinh);
		req.setAttribute("married", marriedStatus);
		req.setAttribute("country", country);
		req.setAttribute("ghichu", ghichu);
		req.setAttribute("sothich", soThichString);

		req.getRequestDispatcher("/views/bai3.jsp").forward(req, resp);
	}
}
