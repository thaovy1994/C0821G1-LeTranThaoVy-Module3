package service.impl;

import bean.Customer;
import repository.ICustomerRepository;
import repository.impl.CustomerRepository;
import service.ICustomerService;

import java.util.List;

public class CustomerService implements ICustomerService {
    private ICustomerRepository repository = new CustomerRepository();

    @Override
    public List<Customer> showCustomer() {
        try {
            List<Customer> customerList = repository.showCustomer();
            if (customerList.size() == 0) {
                return null;
            }
            return customerList;
        } catch (Exception e) {
            e.getMessage();
            return null;
        }
    }

    @Override
    public List<Customer> searchCustomer(String customer_name) {
        return repository.searchCustomer(customer_name);
    }

    @Override
    public void createCustomer(Customer customer) {
        repository.createCustomer(customer);
    }

    @Override
    public void deleteCustomer(Customer customer) {
        repository.deleteCustomer(customer);
    }

    @Override
    public void editCustomer(Customer customer) {
        repository.editCustomer(customer);
    }
}
