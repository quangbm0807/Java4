package controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import model.Item;

@WebServlet("/list")
public class ListServlet extends HttpServlet {
    private List<Item> cart = new ArrayList<>();

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
        req.setAttribute("items", items);
        req.setAttribute("cart", cart);

        req.getRequestDispatcher("/views/list.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int itemIndex = Integer.parseInt(req.getParameter("itemIndex"));
        List<Item> allItems = Arrays.asList(
            new Item("Nokia 2020", "nokia.png", 500, 0.1),
            new Item("Samsung Xyz", "samsung.png", 700, 0.15),
            new Item("iPhone Xy", "iphone.png", 900, 0.25),
            new Item("Sony Erricson", "sony.png", 55, 0.3),
            new Item("Seamen", "seamen.png", 70, 0.5),
            new Item("Oppo 2021", "oppo.png", 200, 0.2)
        );

        Item itemToAdd = allItems.get(itemIndex);
        cart.add(itemToAdd);

        req.setAttribute("items", allItems);
        req.setAttribute("cart", cart);
        req.getRequestDispatcher("/views/list.jsp").forward(req, resp);
    }
}
