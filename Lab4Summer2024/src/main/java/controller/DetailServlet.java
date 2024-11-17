package controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import model.Item;

@WebServlet("/detail")
public class DetailServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Item> items = Arrays.asList(
            new Item("Nokia 2020", "nokia.png", 500, 0.1),
            new Item("Samsung Xyz", "samsung.png", 700, 0.15),
            new Item("iPhone Xy", "iphone.png", 900, 0.25),
            new Item("Sony Erricson", "sony.png", 55, 0.3),
            new Item("Seamen", "seamen.png", 70, 0.5),
            new Item("Oppo 2021", "oppo.png", 200, 0.2)
        );

        int itemIndex = Integer.parseInt(req.getParameter("itemIndex"));
        Item item = items.get(itemIndex);
        req.setAttribute("item", item);
        req.getRequestDispatcher("/views/detail.jsp").forward(req, resp);
    }
}
