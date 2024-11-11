package com.admin.service;

import com.admin.model.Customer;
import com.admin.model.User;
import com.admin.repository.CustomerRepository;
import com.admin.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.StreamSupport;

@Service
public class CustomerService {

    @Autowired private CustomerRepository customerRepository;
    @Autowired private UserRepository userRepository;

    public List<Customer> listAll() {
        // Convert Iterable<Customer> to List<Customer>
        return StreamSupport.stream(customerRepository.findAll().spliterator(), false)
                .collect(Collectors.toList());
    }

    public void save(Customer customer) {
        customerRepository.save(customer);
    }

    public Customer get(Integer id) {
        return customerRepository.findById(id).orElse(null);
    }

    public void delete(Integer id) {
        customerRepository.deleteById(id);
    }

    // List users that are not yet associated with any customer
    public List<User> getAvailableUsersForCustomers() {
        // Get all user IDs that are already associated with a customer
        List<Integer> usedUserIds = listAll().stream()
                .map(customer -> customer.getUser().getId())
                .collect(Collectors.toList());

        // Filter out users who are already in the usedUserIds list
        return StreamSupport.stream(userRepository.findAll().spliterator(), false)
                .filter(user -> !usedUserIds.contains(user.getId()))
                .collect(Collectors.toList());
    }
}
