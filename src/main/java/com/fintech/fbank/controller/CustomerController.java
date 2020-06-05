package com.fintech.fbank.controller;

import com.fintech.fbank.entity.Customer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import com.fintech.fbank.service.CustomerService;

import javax.validation.Valid;
import java.util.List;

@Controller
public class CustomerController {
    @Autowired
    private CustomerService customerService;

    @GetMapping("/list")
    public String listCustomer(Model model) {
        List<Customer> customers = customerService.getCustomer();
        model.addAttribute("customerList", customers);
        return "list-customer";
    }

    @PostMapping("/saveCustomer")
    public String saveCustomer(@Valid @ModelAttribute("customer") Customer customer, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return "customer-form";
        }
        customerService.saveCustomer(customer);
        return "redirect:/list";
    }

    @GetMapping("/updateForm")
    public String showFormForUpdate(@RequestParam("customerId") int idCus, Model model) {
        Customer customer = customerService.getCustomerById(idCus);
        model.addAttribute("customer", customer);
        return "customer-form";
    }

    @GetMapping("/delete")
    public String deleteCustomer(@RequestParam("customerId") int idCus) {
        customerService.deleteCustomer(idCus);
        return "redirect:/list";
    }

    @GetMapping("/showForm")
    public String showFormForAdd(Model theModel) {
        Customer theCustomer = new Customer();
        theModel.addAttribute("customer", theCustomer);
        return "customer-form";
    }


    @RequestMapping(value = "/customer/s",
            produces = {"application/json", "application/xml"}, method = RequestMethod.GET)
    @ResponseBody
    public List<Customer> getCustomerListJson() {
        return customerService.getCustomer();
    }
}
