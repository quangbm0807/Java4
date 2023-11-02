package poly.com.servlet;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardOpenOption;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.rowset.serial.SerialException;

@WebServlet("/bai3")
public class HitCountServlet extends HttpServlet {

	int count = 0;
	Path path = Paths.get("C:/temp/count.txt");

	public HitCountServlet() {
		// TODO Auto-generated constructor stub
	}

	public void init(ServletConfig config) throws ServletException {
		try {
			count = Integer.parseInt(Files.readAllLines(path).get(0));
		} catch (NumberFormatException | IOException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

	public void destroy() {
		try {
			Files.write(path, String.valueOf(count).getBytes(),StandardOpenOption.WRITE);
		} catch (IOException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
		count++;
		req.setAttribute("count", count);
		req.getRequestDispatcher("/views/hit-counter.jsp").forward(req, resp);
	}
}
