package repository;

import bean.Customer;

import java.util.List;

public interface ICustomerRepository {
    List<Customer> showCustomer();

    List<Customer> searchCustomer(String customer_name);

    void createCustomer(Customer customer);

    void deleteCustomer(Customer customer);

    void editCustomer(Customer customer);
}
