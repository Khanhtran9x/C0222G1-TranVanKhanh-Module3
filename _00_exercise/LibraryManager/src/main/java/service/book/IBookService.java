package service.book;

import model.Book;
import model.BookRent;
import model.Student;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

public interface IBookService {
    void insertBook(Book book) throws SQLException;

    void insertBookRent(BookRent bookRent) throws SQLException;

    Book selectBook(String bookCode);

    List<Book> selectAllBook();

    List<Student> selectAllStudent();

    List<BookRent> selectAllBookRent();

    List<Book> search(String bookName);

    List<BookRent> search(String bookName, String studentName);

    String getCurrentDate();

    boolean deleteBook(String bookCode) throws SQLException;

    boolean deleteBookRent(String bookRentCode) throws SQLException;

    boolean updateBook(String bookCode) throws SQLException;

    boolean updateBookAsc(String bookCode) throws SQLException;

    Map<String, String> validateData(Map<String, String> dataMap);
}
