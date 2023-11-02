package poly.com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet({ "/bai1", "/dientich", "/chuvi", "/tinhhieu" })
public class servletBai1 extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/views/bai1.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			double a = Double.parseDouble(req.getParameter("a"));
			double b = Double.parseDouble(req.getParameter("b"));

			double chuVi = a + b;
			String uri = req.getRequestURI();
			double hieuDouble = a - b;
			if (uri.contains("dientich")) {
				double s = chuVi / 2;
				double dienTich = a * b;

				req.setAttribute("message", "Diện tích là: " + dienTich);
			} else if (uri.contains("chuvi")) {
				req.setAttribute("message", "Chu vi là: " + chuVi);
			} else {
				req.setAttribute("message", "Hiệu là: " + hieuDouble);
			}

			req.setAttribute("a", a);
			req.setAttribute("b", b);

		} catch (NumberFormatException e) {
			req.setAttribute("message", "Vui lòng nhập đầy đủ và chính xác các giá trị a, b");
		}

		req.getRequestDispatcher("/views/bai1.jsp").forward(req, resp);
	}
}
