package repository.customer;

import model.Customer;
import repository.BaseRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CustomerRepositoryImpl implements ICustomerRepository{
    private static final String SELECT_ALL_CUSTOMERS = "SELECT *\n" +
            "FROM customer ct JOIN customer_type ctt\n" +
            "ON ct.customer_type_id = ctt.customer_type_id";
    private static final String INSERT_CUSTOMER = "insert into customer (customer_type_id, customer_name, " +
            "customer_birthday, customer_gender, customer_id_card, customer_phone, customer_email,customer_address) \n" +
            "values (?, ?, ?, ?, ?, ?, ?, ?);";
    private static final String DELETE_CUSTOMER = "delete from customer where customer_id = ?;";
    private static final String SELECT_CUSTOMER_BY_ID = "SELECT *\n" +
            "FROM customer ct JOIN customer_type ctt\n" +
            "ON ct.customer_type_id = ctt.customer_type_id\n" +
            "WHERE ct.customer_id = ?;";
    private static final String UPDATE_CUSTOMER = "update customer set customer_type_id = ?, customer_name = ?, customer_birthday= ?, customer_gender =?, customer_id_card = ?, customer_phone = ?, customer_email = ?, customer_address = ? where customer_id = ?;";
    private static final String SEARCH_CUSTOMERS = "SELECT *\n" +
            "FROM customer ct JOIN customer_type ctt\n" +
            "ON ct.customer_type_id = ctt.customer_type_id WHERE ct.customer_name LIKE ? AND ct.customer_address LIKE ?;";


    @Override
    public void insertCustomer(Customer customer) throws SQLException {
        System.out.println(INSERT_CUSTOMER);
        try (Connection connection = BaseRepository.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(INSERT_CUSTOMER)) {
            switch (customer.getType()){
                case "Diamond":
                    preparedStatement.setInt(1, 1);
                    break;
                case "Platinum":
                    preparedStatement.setInt(1, 2);
                    break;
                case "Gold":
                    preparedStatement.setInt(1, 3);
                    break;
                case "Silver":
                    preparedStatement.setInt(1, 4);
                    break;
                case "Member":
                    preparedStatement.setInt(1, 5);
                    break;
            }
            preparedStatement.setString(2, customer.getName());
            preparedStatement.setString(3, customer.getBirthDay());
            if (customer.getGender().equals("Male")){
                preparedStatement.setInt(4, 0);
            } else {
                preparedStatement.setInt(4, 1);
            }
            preparedStatement.setString(5, customer.getIdCard());
            preparedStatement.setString(6, customer.getPhone());
            preparedStatement.setString(7, customer.getEmail());
            preparedStatement.setString(8, customer.getAddress());
            System.out.println(preparedStatement);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public Customer selectCustomer(int id) {
        Customer customer = null;
        try (Connection connection = BaseRepository.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_CUSTOMER_BY_ID);) {
            preparedStatement.setInt(1, id);
            System.out.println(preparedStatement);
            // Step 3: Execute the query or update query
            ResultSet rs = preparedStatement.executeQuery();

            // Step 4: Process the ResultSet object.
            while (rs.next()) {
                int typeId = rs.getInt("customer_type_id");
                String type = rs.getString("customer_type_name");
                String name = rs.getString("customer_name");
                String birthDay = rs.getString("customer_birthday");
                String gender;
                String idCard= rs.getString("customer_id_card");
                String phone = rs.getString("customer_phone");
                String email = rs.getString("customer_email");
                String address = rs.getString("customer_address");
                if (rs.getInt("customer_gender") == 0){
                    gender = "Male";
                } else {
                    gender = "Female";
                }
                customer = new Customer(id, typeId, type, name, birthDay, gender, idCard, phone, email, address);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return customer;
    }

    @Override
    public List<Customer> selectAllCustomer() {
        List<Customer> customers = new ArrayList<>();
        // Step 1: Establishing a Connection
        try (Connection connection = BaseRepository.getConnection();
             // Step 2:Create a statement using connection object
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_CUSTOMERS);) {
            System.out.println(preparedStatement);
            // Step 3: Execute the query or update query
            ResultSet rs = preparedStatement.executeQuery();

            // Step 4: Process the ResultSet object.
            while (rs.next()) {
                int id = rs.getInt("customer_id");
                int typeId = rs.getInt("customer_type_id");
                String type = rs.getString("customer_type_name");
                String name = rs.getString("customer_name");
                String birthDay = rs.getString("customer_birthday");
                String gender;
                String idCard= rs.getString("customer_id_card");
                String phone = rs.getString("customer_phone");
                String email = rs.getString("customer_email");
                String address = rs.getString("customer_address");
                if (rs.getInt("customer_gender") == 0){
                    gender = "Male";
                } else {
                    gender = "Female";
                }
                customers.add(new Customer(id, typeId, type, name, birthDay, gender, idCard, phone, email, address));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return customers;
    }

    @Override
    public List<Customer> search(String nameSearch, String addressSearch) {
        List<Customer> customers = new ArrayList<>();

        try (Connection connection = BaseRepository.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(SEARCH_CUSTOMERS)) {
            preparedStatement.setString(1, "%" + nameSearch + "%");
            preparedStatement.setString(2, "%" + addressSearch + "%");
            ResultSet rs = preparedStatement.executeQuery();

            while (rs.next()) {
                int id = rs.getInt("customer_id");
                int typeId = rs.getInt("customer_type_id");
                String type = rs.getString("customer_type_name");
                String name = rs.getString("customer_name");
                String birthDay = rs.getString("customer_birthday");
                String gender;
                String idCard= rs.getString("customer_id_card");
                String phone = rs.getString("customer_phone");
                String email = rs.getString("customer_email");
                String address = rs.getString("customer_address");
                if (rs.getInt("customer_gender") == 0){
                    gender = "Male";
                } else {
                    gender = "Female";
                }
                customers.add(new Customer(id,typeId, type, name, birthDay, gender, idCard, phone, email, address));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return customers;
    }

    @Override
    public boolean deleteCustomer(int id) throws SQLException {
        boolean rowDeleted;
        try (Connection connection = BaseRepository.getConnection();
             PreparedStatement statement = connection.prepareStatement(DELETE_CUSTOMER)) {
            statement.setInt(1, id);
            rowDeleted = statement.executeUpdate() > 0;
        }
        return rowDeleted;
    }

    @Override
    public boolean updateCustomer(Customer customer) throws SQLException {
        boolean rowUpdated;
        try (Connection connection = BaseRepository.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_CUSTOMER);) {
            preparedStatement.setInt(1, customer.getTypeId());
            preparedStatement.setString(2, customer.getName());
            preparedStatement.setString(3, customer.getBirthDay());
            if (customer.getGender().equals("Male")){
                preparedStatement.setInt(4, 0);
            } else {
                preparedStatement.setInt(4, 1);
            }
            preparedStatement.setString(5, customer.getIdCard());
            preparedStatement.setString(6, customer.getPhone());
            preparedStatement.setString(7, customer.getEmail());
            preparedStatement.setString(8, customer.getAddress());
            preparedStatement.setInt(9, customer.getId());
            System.out.println(preparedStatement);
            preparedStatement.executeUpdate();
            rowUpdated = preparedStatement.executeUpdate() > 0;
        }
        return rowUpdated;
    }
}
