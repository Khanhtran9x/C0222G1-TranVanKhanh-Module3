package model;

public class Student {
    private String studentCode;
    private String studentName;
    private String className;

    public Student(String studentCode, String studentName, String className) {
        this.studentCode = studentCode;
        this.studentName = studentName;
        this.className = className;
    }

    public String getStudentCode() {
        return studentCode;
    }

    public void setStudentCode(String studentCode) {
        this.studentCode = studentCode;
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
}
