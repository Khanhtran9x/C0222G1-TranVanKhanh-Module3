package model;

public class Customer{
    private String customerName;
    private String customerDateOfBirth;
    private String customerAddress;
    private String customerImagePath;

    public Customer(String customerName, String customerDateOfBirth, String customerAddress, String customerImagePath) {
        this.customerName = customerName;
        this.customerDateOfBirth = customerDateOfBirth;
        this.customerAddress = customerAddress;
        this.customerImagePath = customerImagePath;
    }

    public String getCustomerName() {
        return customerName;
    }

    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }

    public String getCustomerDateOfBirth() {
        return customerDateOfBirth;
    }

    public void setCustomerDateOfBirth(String customerDateOfBirth) {
        this.customerDateOfBirth = customerDateOfBirth;
    }

    public String getCustomerAddress() {
        return customerAddress;
    }

    public void setCustomerAddress(String customerAddress) {
        this.customerAddress = customerAddress;
    }

    public String getCustomerImagePath() {
        return customerImagePath;
    }

    public void setCustomerImagePath(String customerImagePath) {
        this.customerImagePath = customerImagePath;
    }
}