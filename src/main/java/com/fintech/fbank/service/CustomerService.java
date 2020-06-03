package com.fintech.fbank.service;

import com.fintech.fbank.dao.CustomerDao;
import com.fintech.fbank.entity.Customer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

@Service
public class CustomerService {

    @Autowired
    CustomerDao customerDao;

    @Transactional
    public List<Customer> getCustomer(){
        return customerDao.getCustomer();
    }

    @Transactional
    public void saveCustomer(Customer customer){
        customerDao.saveCustomer(customer);
    }

    @Transactional
    public Customer getCustomerById(int id){
        return customerDao.getCustomerById(id);
    }

    @Transactional
    public void deleteCustomer(int id){
        customerDao.deleteCustomer(id);
    }

}
