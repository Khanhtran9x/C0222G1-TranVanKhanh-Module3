package repository.book;

import model.Book;
import model.BookRent;
import model.Student;
import repository.BaseRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BookRepositoryImpl implements IBookRepository{
    private static final String SELECT_ALL_BOOK = "SELECT * FROM book";
    private static final String SELECT_ALL_BOOK_RENT = "SELECT br.*, bo.book_name, bo.author, st.student_name, st.class_name \n" +
            "FROM book_rent_tag br\n" +
            "JOIN book bo ON br.book_code = bo.book_code\n" +
            "JOIN student st ON br.student_code = st.student_code;";
    private static final String SELECT_ALL_STUDENT = "SELECT * FROM student";
    private static final String INSERT_BOOK_RENT = "INSERT INTO book_rent_tag VALUES (?, ?, ?, ?, ?, ?)";
    private static final String UPDATE_BOOK = "UPDATE book SET numbers = (numbers - 1) WHERE book_code = ?;";
    private static final String UPDATE_BOOK_ASC = "UPDATE book SET numbers = (numbers + 1) WHERE book_code = ?;";
    private static final String DELETE_BOOK_RENT = "DELETE FROM book_rent_tag WHERE book_rent_code = ?;";
    private static final String SEARCH_BOOK_RENT = "SELECT br.*, bo.book_name, bo.author, st.student_name, st.class_name \n" +
            "FROM book_rent_tag br\n" +
            "JOIN book bo ON br.book_code = bo.book_code\n" +
            "JOIN student st ON br.student_code = st.student_code\n" +
            "WHERE bo.book_name LIKE ? AND st.student_name LIKE ?;";
    @Override
    public void insertBook(Book book) throws SQLException {
    }

    @Override
    public void insertBookRent(BookRent bookRent) throws SQLException {
        System.out.println(INSERT_BOOK_RENT);
        try (Connection connection = BaseRepository.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(INSERT_BOOK_RENT)) {
            preparedStatement.setString(1, bookRent.getBookRentCode());
            preparedStatement.setString(2, bookRent.getBookCode());
            preparedStatement.setString(3, bookRent.getStudentCode());
            if (bookRent.isStatus()){
                preparedStatement.setInt(4, 0);
            } else {
                preparedStatement.setInt(4, 1);
            }
            preparedStatement.setString(5, bookRent.getRentDate());
            preparedStatement.setString(6, bookRent.getReturnDate());

            System.out.println(preparedStatement);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public Book selectBook(String bookCode) {
        return null;
    }

    @Override
    public List<Book> selectAllBook() {
        List<Book> books = new ArrayList<>();
        try (Connection connection = BaseRepository.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_BOOK);) {
            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                String bookCode = rs.getString("book_code");
                String bookName = rs.getString("book_name");
                String author = rs.getString("author");
                String description = rs.getString("description");
                int numbers = Integer.parseInt(rs.getString("numbers"));
                books.add(new Book(bookCode, bookName, author, description, numbers));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return books;
    }

    @Override
    public List<Student> selectAllStudent() {
        List<Student> students = new ArrayList<>();
        try (Connection connection = BaseRepository.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_STUDENT);) {
            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                String studentCode = rs.getString("student_code");
                String studentName = rs.getString("student_name");
                String className = rs.getString("class_name");

                students.add(new Student(studentCode, studentName, className));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return students;
    }

    @Override
    public List<BookRent> selectAllBookRent() {
        List<BookRent> bookRents = new ArrayList<>();
        try (Connection connection = BaseRepository.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_BOOK_RENT);) {
            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                String bookRentCode = rs.getString("book_rent_code");
                String bookCode = rs.getString("book_code");
                String bookName = rs.getString("book_name");
                String author = rs.getString("author");
                String studentCode = rs.getString("student_code");
                String studentName = rs.getString("student_name");
                String className = rs.getString("class_name");
                boolean status = false;
                if (rs.getInt("status") == 0){
                    status = true;
                }
                String rentDate = rs.getString("rent_date");
                String returnDate = rs.getString("return_date");
                bookRents.add(new BookRent(bookRentCode, bookCode, bookName, author, studentCode,
                        studentName, className, status, rentDate, returnDate));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return bookRents;
    }

    @Override
    public List<Book> search(String bookName) {
        return null;
    }

    @Override
    public List<BookRent> search(String bookNameSearch, String studentNameSearch) {
        List<BookRent> bookRents = new ArrayList<>();
        try (Connection connection = BaseRepository.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(SEARCH_BOOK_RENT);) {
            System.out.println(preparedStatement);
            preparedStatement.setString(1, "%" + bookNameSearch + "%");
            preparedStatement.setString(2, "%" + studentNameSearch + "%");
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                String bookRentCode = rs.getString("book_rent_code");
                String bookCode = rs.getString("book_code");
                String bookName = rs.getString("book_name");
                String author = rs.getString("author");
                String studentCode = rs.getString("student_code");
                String studentName = rs.getString("student_name");
                String className = rs.getString("class_name");
                boolean status = false;
                if (rs.getInt("status") == 0){
                    status = true;
                }
                String rentDate = rs.getString("rent_date");
                String returnDate = rs.getString("return_date");
                bookRents.add(new BookRent(bookRentCode, bookCode, bookName, author, studentCode,
                        studentName, className, status, rentDate, returnDate));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return bookRents;
    }

    @Override
    public boolean deleteBook(String bookCode) throws SQLException {
        return false;
    }

    @Override
    public boolean deleteBookRent(String bookRentCode) throws SQLException {
        boolean rowDeleted;
        try (Connection connection = BaseRepository.getConnection();
             PreparedStatement statement = connection.prepareStatement(DELETE_BOOK_RENT)) {
            statement.setString(1, bookRentCode);
            rowDeleted = statement.executeUpdate() > 0;
        }
        return rowDeleted;
    }

    @Override
    public boolean updateBook(String bookCode) throws SQLException {
        try (Connection connection = BaseRepository.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_BOOK);) {
            System.out.println(preparedStatement);
            preparedStatement.setString(1, bookCode);
            return preparedStatement.executeUpdate() > 0;

        } catch (SQLException e) {
            e.printStackTrace();
        }
       return false;
    }

    @Override
    public boolean updateBookAsc(String bookCode) throws SQLException {
        try (Connection connection = BaseRepository.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_BOOK_ASC);) {
            System.out.println(preparedStatement);
            preparedStatement.setString(1, bookCode);
            return preparedStatement.executeUpdate() > 0;

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
}
