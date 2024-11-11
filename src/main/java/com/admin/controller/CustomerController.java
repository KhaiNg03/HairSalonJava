package com.admin.controller;

import com.admin.model.Customer;
import com.admin.service.CustomerService;
import com.admin.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class CustomerController {

    @Autowired private CustomerService customerService;

    @GetMapping("/manageCustomers")
    public String showCustomerList(Model model) {
        model.addAttribute("customers", customerService.listAll());
        return "manageCustomers";
    }

    @GetMapping("/manageCustomers/new")
    public String showNewCustomerForm(Model model) {
        model.addAttribute("customer", new Customer());
        // Pass only available users to the form
        model.addAttribute("users", customerService.getAvailableUsersForCustomers());
        return "customer_form";
    }

    @PostMapping("/manageCustomers/save")
    public String saveCustomer(Customer customer) {
        customerService.save(customer);
        return "redirect:/manageCustomers";
    }

    @GetMapping("/manageCustomers/delete/{id}")
    public String deleteCustomer(@PathVariable("id") Integer id) {
        customerService.delete(id);
        return "redirect:/manageCustomers";
    }
}
