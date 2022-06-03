package model;

public class Customer {
    private int id;
    private int typeId;
    private String type;
    private String name;
    private String birthDay;
    private String gender;
    private String idCard;
    private String phone;
    private String email;
    private String address;

    public Customer() {
    }
    public Customer(int typeId, String type, String name, String birthDay, String gender,
                    String idCard, String phone, String email, String address) {
        this.typeId = typeId;
        this.type = type;
        this.name = name;
        this.birthDay = birthDay;
        this.gender = gender;
        this.idCard = idCard;
        this.phone = phone;
        this.email = email;
        this.address = address;
    }
    public Customer(String type, String name, String birthDay, String gender,
                    String idCard, String phone, String email, String address) {
        this.type = type;
        this.name = name;
        this.birthDay = birthDay;
        this.gender = gender;
        this.idCard = idCard;
        this.phone = phone;
        this.email = email;
        this.address = address;
    }

    public Customer(int id, int typeId, String type, String name, String birthDay, String gender,
                    String idCard, String phone, String email, String address) {
        this.id = id;
        this.typeId = typeId;
        this.type = type;
        this.name = name;
        this.birthDay = birthDay;
        this.gender = gender;
        this.idCard = idCard;
        this.phone = phone;
        this.email = email;
        this.address = address;
    }

    public Customer(int id, int typeId, String name, String birthDay, String gender,
                    String idCard, String phone, String email, String address) {
        this.id = id;
        this.typeId = typeId;
        this.name = name;
        this.birthDay = birthDay;
        this.gender = gender;
        this.idCard = idCard;
        this.phone = phone;
        this.email = email;
        this.address = address;
    }

    public int getTypeId() {
        return typeId;
    }

    public void setTypeId(int typeId) {
        this.typeId = typeId;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getBirthDay() {
        return birthDay;
    }

    public void setBirthDay(String birthDay) {
        this.birthDay = birthDay;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getIdCard() {
        return idCard;
    }

    public void setIdCard(String idCard) {
        this.idCard = idCard;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
}
