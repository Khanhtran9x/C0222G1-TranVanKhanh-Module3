package model;

public class BookRent {
    private String bookRentCode;
    private String bookCode;
    private String bookName;
    private String author;
    private String studentCode;
    private String studentName;
    private String className;
    private boolean status;
    private String rentDate;
    private String returnDate;

    public BookRent(String bookRentCode, String bookCode, String bookName, String author,
                    String studentCode, String studentName, String className, boolean status, String rentDate, String returnDate) {
        this.bookRentCode = bookRentCode;
        this.bookCode = bookCode;
        this.bookName = bookName;
        this.author = author;
        this.studentCode = studentCode;
        this.studentName = studentName;
        this.className = className;
        this.status = status;
        this.rentDate = rentDate;
        this.returnDate = returnDate;
    }

    public BookRent(String bookRentCode, String bookCode, String studentCode, boolean status, String rentDate, String returnDate) {
        this.bookRentCode = bookRentCode;
        this.bookCode = bookCode;
        this.studentCode = studentCode;
        this.status = status;
        this.rentDate = rentDate;
        this.returnDate = returnDate;
    }

    public String getBookName() {
        return bookName;
    }

    public void setBookName(String bookName) {
        this.bookName = bookName;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getStudentName() {
        return studentName;
    }

    public void setStudentName(String studentName) {
        this.studentName = studentName;
    }

    public String getClassName() {
        return className;
    }

    public void setClassName(String className) {
        this.className = className;
    }

    public String getBookRentCode() {
        return bookRentCode;
    }

    public void setBookRentCode(String bookRentCode) {
        this.bookRentCode = bookRentCode;
    }

    public String getBookCode() {
        return bookCode;
    }

    public void setBookCode(String bookCode) {
        this.bookCode = bookCode;
    }

    public String getStudentCode() {
        return studentCode;
    }

    public void setStudentCode(String studentCode) {
        this.studentCode = studentCode;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public String getRentDate() {
        return rentDate;
    }

    public void setRentDate(String rentDate) {
        this.rentDate = rentDate;
    }

    public String getReturnDate() {
        return returnDate;
    }

    public void setReturnDate(String returnDate) {
        this.returnDate = returnDate;
    }
}
