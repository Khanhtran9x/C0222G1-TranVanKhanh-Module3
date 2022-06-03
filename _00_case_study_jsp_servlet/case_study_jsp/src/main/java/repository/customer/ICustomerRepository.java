package repository.customer;

import model.Customer;

import java.sql.SQLException;
import java.util.List;

public interface ICustomerRepository {
    void insertCustomer(Customer customer) throws SQLException;

    Customer selectCustomer(int id);

    List<Customer> selectAllCustomer();

    List<Customer> search(String name, String address);

    boolean deleteCustomer(int id) throws SQLException;

    boolean updateCustomer(Customer customer) throws SQLException;
}
