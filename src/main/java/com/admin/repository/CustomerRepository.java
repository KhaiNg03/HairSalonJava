package com.admin.repository;

import com.admin.model.Customer;
import org.springframework.data.repository.CrudRepository;

public interface CustomerRepository extends CrudRepository<Customer, Integer> {
    public Long countById(Integer id);
}
