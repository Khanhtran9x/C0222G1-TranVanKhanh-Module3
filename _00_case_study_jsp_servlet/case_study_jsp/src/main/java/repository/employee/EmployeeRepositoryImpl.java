package repository.employee;

import model.Customer;
import model.Employee;
import repository.BaseRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class EmployeeRepositoryImpl implements IEmployeeRepository{
    private static final String SELECT_ALL_EMPLOYEE = "select * from employee;";

    @Override
    public void insertEmployee(Employee employee) throws SQLException {

    }

    @Override
    public Employee selectEmployee(int id) {
        return null;
    }

    @Override
    public List<Employee> selectAllEmployee() {
        List<Employee> employees = new ArrayList<>();
        // Step 1: Establishing a Connection
        try (Connection connection = BaseRepository.getConnection();
             // Step 2:Create a statement using connection object
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_EMPLOYEE);) {
            System.out.println(preparedStatement);
            // Step 3: Execute the query or update query
            ResultSet rs = preparedStatement.executeQuery();

            // Step 4: Process the ResultSet object.
            while (rs.next()) {
                int id = rs.getInt("employee_id");
                String name = rs.getString("employee_name");
                String birthDay = rs.getString("employee_birthday");
                String idCard= rs.getString("employee_id_card");
                double salary= rs.getDouble("employee_salary");
                String phone = rs.getString("employee_phone");
                String email = rs.getString("employee_email");
                String address = rs.getString("employee_address");
                int positionId = rs.getInt("position_id");
                int educationDegreeId = rs.getInt("education_degree_id");
                int divisionId = rs.getInt("division_id");
                String username = rs.getString("username");

                employees.add(new Employee(id, name, birthDay, idCard, salary, phone, email, address, positionId, educationDegreeId, divisionId, username));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return employees;
    }

    @Override
    public List<Employee> search(String name, String address) {
        return null;
    }

    @Override
    public boolean deleteEmployee(int id) throws SQLException {
        return false;
    }

    @Override
    public boolean updateEmployee(Employee employee) throws SQLException {
        return false;
    }
}
