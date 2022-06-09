package controller;

import model.Book;
import model.BookRent;
import model.Student;
import service.book.BookServiceImpl;
import service.book.IBookService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@WebServlet(name = "BookRentServlet", urlPatterns = "/bookrent")
public class BookRentServlet extends HttpServlet {
    private IBookService bookService = new BookServiceImpl();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action =request.getParameter("action");
        if (action==null){
            action="";
        }
        switch (action){
            case "add":
                insertBookRent(request, response);
                break;
            case "edit":
                break;
            case "delete":
                break;
            case "search":
                break;
        }
    }

    private void insertBookRent(HttpServletRequest request, HttpServletResponse response) {
        Map<String, String> inputValueMap = new HashMap<>();
        Map<String, String> checkedDataMap;
        String bookRentCode = request.getParameter("bookRentCode");
        String bookCode = request.getParameter("bookCode");
        String studentCode = request.getParameter("student");
        String rentDate = request.getParameter("rentDate");
        String returnDate = request.getParameter("returnDate");
        inputValueMap.put("bookRentCode", bookRentCode);
        inputValueMap.put("bookCode", bookCode);
        inputValueMap.put("studentCode", studentCode);
        inputValueMap.put("rentDate", rentDate);
        inputValueMap.put("returnDate", returnDate);
        checkedDataMap = bookService.validateData(inputValueMap);
        if (!checkedDataMap.isEmpty()){
            List<Student> studentList = bookService.selectAllStudent();
            String currentDate = bookService.getCurrentDate();
            String bookName = request.getParameter("bookName");
            request.setAttribute("bookName",bookName);
            request.setAttribute("checkedDataMap", checkedDataMap);
            request.setAttribute("studentList", studentList);
            request.setAttribute("currentDate", currentDate);
            RequestDispatcher dispatcher = request.getRequestDispatcher("view/book_rent/create.jsp");
            try {
                dispatcher.forward(request,response);
            } catch (ServletException | IOException e) {
                e.printStackTrace();
            }
        } else {
            boolean status = true;
            BookRent bookRent = new BookRent(bookRentCode, bookCode, studentCode, status, rentDate, returnDate);
            try {
                bookService.insertBookRent(bookRent);
                bookService.updateBook(bookCode);
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }
            try {
                response.sendRedirect("/book");
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action =request.getParameter("action");
        if (action==null){
            action="";
        }
        switch (action){
            case "add":
                showBookRentForm(request, response);
                break;
            case "edit":
                break;
            case "delete":
                deleteBookRent(request, response);
                break;
            case "search":
                searchBookRent(request, response);
                break;
            default:
                showBookRentList(request, response);
        }
    }

    private void searchBookRent(HttpServletRequest request, HttpServletResponse response) {
        String bookName = request.getParameter("bookSearch");
        String studentName = request.getParameter("studentSearch");
        List<BookRent> bookRentList = bookService.search(bookName, studentName);
        request.setAttribute("bookRentList", bookRentList);
        RequestDispatcher dispatcher = request.getRequestDispatcher("view/book_rent/list.jsp");
        try {
            dispatcher.forward(request,response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    private void deleteBookRent(HttpServletRequest request, HttpServletResponse response) {
        String bookRentCode = request.getParameter("bookRentCode");
        String bookCode = request.getParameter("bookCode");
        try {
            bookService.deleteBookRent(bookRentCode);
            bookService.updateBookAsc(bookCode);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        showBookRentList(request, response);
    }

    private void showBookRentList(HttpServletRequest request, HttpServletResponse response) {
        List<BookRent> bookRentList = bookService.selectAllBookRent();
        request.setAttribute("bookRentList", bookRentList);
        RequestDispatcher dispatcher = request.getRequestDispatcher("view/book_rent/list.jsp");
        try {
            dispatcher.forward(request,response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    private void showBookRentForm(HttpServletRequest request, HttpServletResponse response) {
        List<Student> studentList = bookService.selectAllStudent();
        String currentDate = bookService.getCurrentDate();
        String bookCode = request.getParameter("id");
        String bookName = request.getParameter("name");
        request.setAttribute("bookCode", bookCode);
        request.setAttribute("bookName", bookName);
        request.setAttribute("studentList", studentList);
        request.setAttribute("currentDate", currentDate);
        RequestDispatcher dispatcher = request.getRequestDispatcher("view/book_rent/create.jsp");
        try {
            dispatcher.forward(request,response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }
}
