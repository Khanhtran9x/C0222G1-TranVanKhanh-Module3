package service.employee;

import model.Customer;
import model.Employee;

import java.sql.SQLException;
import java.util.List;

public interface IEmployeeService {
    void insertEmployee(Employee employee) throws SQLException;

    Employee selectEmployee(int id);

    List<Employee> selectAllEmployee();

    List<Employee> search(String name, String address);

    boolean deleteEmployee(int id) throws SQLException;

    boolean updateEmployee(Employee employee) throws SQLException;
}
