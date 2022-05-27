package controller;

import model.Customer;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "CustomerController", urlPatterns = "/customer-list")
public class CustomerController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Customer> customers = new ArrayList<>();

        customers.add(new Customer("Tran Van Khanh",
                               "14/04/2000",
                                  "Quang Binh",
                                "https://i.pinimg.com/originals/4e/e8/71/4ee87170e26426ec6a7cce8c45c6876a.jpg"));
        customers.add(new Customer("Tran Quoc Chien",
                "15/05/2002",
                "Quang Tri",
                "https://i.pinimg.com/originals/4e/e8/71/4ee87170e26426ec6a7cce8c45c6876a.jpg"));
        customers.add(new Customer("Tran Ngoc Lan",
                "11/04/2005",
                "Hue",
                "https://i.pinimg.com/originals/4e/e8/71/4ee87170e26426ec6a7cce8c45c6876a.jpg"));
        customers.add(new Customer("Nguyen Van Son",
                "11/12/2000",
                "Da Nang",
                "https://i.pinimg.com/originals/4e/e8/71/4ee87170e26426ec6a7cce8c45c6876a.jpg"));

        request.setAttribute("customers", customers);
        request.getRequestDispatcher("customer-list.jsp").forward(request, response);
    }
}
