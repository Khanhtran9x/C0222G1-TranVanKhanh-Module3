package service.employee;

import model.Customer;
import model.Employee;
import repository.employee.EmployeeRepositoryImpl;
import repository.employee.IEmployeeRepository;

import java.sql.SQLException;
import java.util.List;

public class EmployeeServiceImpl implements IEmployeeService{
    private IEmployeeRepository employeeRepository = new EmployeeRepositoryImpl();

    @Override
    public void insertEmployee(Employee employee) throws SQLException {
        employeeRepository.insertEmployee(employee);
    }

    @Override
    public Employee selectEmployee(int id) {
        return employeeRepository.selectEmployee(id);
    }

    @Override
    public List<Employee> selectAllEmployee() {
        return employeeRepository.selectAllEmployee();
    }

    @Override
    public List<Employee> search(String name, String address) {
        return employeeRepository.search(name, address);
    }

    @Override
    public boolean deleteEmployee(int id) throws SQLException {
        return employeeRepository.deleteEmployee(id);
    }

    @Override
    public boolean updateEmployee(Employee employee) throws SQLException {
        return employeeRepository.updateEmployee(employee);
    }
}
