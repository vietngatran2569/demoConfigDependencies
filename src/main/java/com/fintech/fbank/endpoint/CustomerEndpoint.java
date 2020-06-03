package com.fintech.fbank.endpoint;

import com.fintech.fbank.entity.Customer;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping(value = "/api/v1/customer")
public class CustomerEndpoint {
    @GetMapping(produces = {MediaType.APPLICATION_JSON_VALUE})
    public Customer getCustomer() {
        Customer customer = new Customer();
        customer.setEmail("SlowV");
        return customer;
    }


}
