package model;

public class Book {
    private String bookCode;
    private String bookName;
    private String author;
    private String description;
    private int numbers;

    public Book(String bookCode, String bookName, String author, String description, int numbers) {
        this.bookCode = bookCode;
        this.bookName = bookName;
        this.author = author;
        this.description = description;
        this.numbers = numbers;
    }

    public String getBookCode() {
        return bookCode;
    }

    public void setBookCode(String bookCode) {
        this.bookCode = bookCode;
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

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getNumbers() {
        return numbers;
    }

    public void setNumbers(int numbers) {
        this.numbers = numbers;
    }
}
