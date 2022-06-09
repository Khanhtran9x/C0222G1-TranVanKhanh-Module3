package service.book;

import model.Book;
import model.BookRent;
import model.Student;
import repository.book.BookRepositoryImpl;
import repository.book.IBookRepository;

import java.sql.SQLException;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.chrono.ChronoLocalDate;
import java.time.format.DateTimeFormatter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class BookServiceImpl implements IBookService{
    private IBookRepository bookRepository = new BookRepositoryImpl();
    private static final String REGEX_BOOK_RENT_CODE = "(MS)[-][\\d]{4}";
    private static final String REGEX_DATE = "\\d{4}(-)(([0][1-9])|([1][0,2]))(-)(([0-2][0-9])|([3][0-1]))";
    @Override
    public void insertBook(Book book) throws SQLException {
        bookRepository.insertBook(book);
    }

    @Override
    public void insertBookRent(BookRent bookRent) throws SQLException {
        bookRepository.insertBookRent(bookRent);
    }

    @Override
    public Book selectBook(String bookCode) {
        return bookRepository.selectBook(bookCode);
    }

    @Override
    public List<Book> selectAllBook() {
        return bookRepository.selectAllBook();
    }

    @Override
    public List<Student> selectAllStudent() {
        return bookRepository.selectAllStudent();
    }

    @Override
    public List<BookRent> selectAllBookRent() {
        return bookRepository.selectAllBookRent();
    }

    @Override
    public List<Book> search(String bookName) {
        return bookRepository.search(bookName);
    }

    @Override
    public List<BookRent> search(String bookName, String studentName) {
        return bookRepository.search(bookName, studentName);
    }

    @Override
    public String getCurrentDate() {
        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        LocalDateTime now = LocalDateTime.now();
        return dtf.format(now);
    }

    @Override
    public boolean deleteBook(String bookCode) throws SQLException {
        return bookRepository.deleteBook(bookCode);
    }

    @Override
    public boolean deleteBookRent(String bookRentCode) throws SQLException {
        return bookRepository.deleteBookRent(bookRentCode);
    }

    @Override
    public boolean updateBook(String bookCode) throws SQLException {
        return bookRepository.updateBook(bookCode);
    }

    @Override
    public boolean updateBookAsc(String bookCode) throws SQLException {
        return bookRepository.updateBookAsc(bookCode);
    }

    @Override
    public Map<String, String> validateData(Map<String, String> dataMap) {
        Map<String, String> checkedMap = new HashMap<>();
        if (!regexBookRentCode(dataMap.get("bookRentCode"))){
            checkedMap.put("bookRentCode", "The book borrow code must be MS-XXXX, X is a number");
        }
        if (!checkDoubleBookRentCode(dataMap.get("bookRentCode"))){
            checkedMap.put("bookRentCode", "This book borrow code is already taken");
        }
        if (!regexBookCode(dataMap.get("bookCode"))){
            checkedMap.put("bookCode", "The book is not in our store");
        }
        if (!regexStudent(dataMap.get("studentCode"))){
            checkedMap.put("studentCode", "The student is not in our list");
        }
        if (!regexRentDate(dataMap.get("rentDate"))){
            checkedMap.put("rentDate", "Borrow date must be dd/MM/yyyy and is now");
        }
        if (!regexReturnDate(dataMap.get("returnDate"))){
            checkedMap.put("returnDate", "Return date must be dd/MM/yyyy and after now");
        }
        return checkedMap;
    }

    public boolean regexBookRentCode(String bookRentCode){
        if (bookRentCode.matches(REGEX_BOOK_RENT_CODE)){
            return true;
        } else {
            return false;
        }
    }

    public boolean regexBookCode(String bookCode){
        List<Book> books = bookRepository.selectAllBook();
        for (Book book: books) {
            if (book.getBookCode().equals(bookCode)) {
                return true;
            }
        }
        return false;
    }

    public boolean regexStudent(String studentCode){
        List<Student> students = bookRepository.selectAllStudent();
        for (Student student: students) {
            if (student.getStudentCode().equals(studentCode)) {
                return true;
            }
        }
        return false;
    }

    public boolean checkDoubleBookRentCode(String bookRentCode){
        List<BookRent>  bookRentList  = bookRepository.selectAllBookRent();
        for (BookRent bookRent:bookRentList) {
            if (bookRent.getBookRentCode().equals(bookRentCode)){
                return false;
            }
        }
        return true;
    }

    public boolean regexRentDate(String rentDate){
        if (rentDate.matches(REGEX_DATE)){
            DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd");
            LocalDate start = LocalDate.parse(rentDate, dtf);
            LocalDateTime now = LocalDateTime.now();
            if (start.isEqual(ChronoLocalDate.from(now))){
                return true;
            } else {
                return false;
            }
        } else {
            return false;
        }
    }

    public boolean regexReturnDate(String returnDate){
        if (returnDate.matches(REGEX_DATE)){
            DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd");
            LocalDate end = LocalDate.parse(returnDate, dtf);
            LocalDateTime now = LocalDateTime.now();
            if (end.isAfter(ChronoLocalDate.from(now))){
                return true;
            } else {
                return false;
            }
        } else {
            return false;
        }
    }
}
