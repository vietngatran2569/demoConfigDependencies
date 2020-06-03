package com.fintech.fbank.dao;

import com.fintech.fbank.entity.Customer;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.persistence.Query;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import java.util.List;

@Repository
public class CustomerDao {
    @Autowired
    private SessionFactory sessionFactory;

    public List<Customer> getCustomer() {
        Session session = sessionFactory.getCurrentSession();
        CriteriaBuilder cb = session.getCriteriaBuilder();
        CriteriaQuery<Customer> cq = cb.createQuery(Customer.class);
        Root<Customer> root = cq.from(Customer.class);
        cq.select(root);
        Query query = session.createQuery(cq);
        return query.getResultList();
    }

    public void deleteCustomer(int id) {
        Session session = sessionFactory.getCurrentSession();
        Customer customer = session.byId(Customer.class).load(id);
        session.delete(customer);
    }

    public void saveCustomer(Customer customer) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(customer);
    }

    public Customer getCustomerById(int id) {
        Session session = sessionFactory.getCurrentSession();
        Customer customer = session.byId(Customer.class).load(id);
        return customer;
    }
}
