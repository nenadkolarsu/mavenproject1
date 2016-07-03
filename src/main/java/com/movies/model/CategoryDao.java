package com.movies.model;

import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;  
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

@Transactional(propagation = Propagation.REQUIRED, readOnly = false)
public class CategoryDao {
    
    @Autowired
    SessionFactory sessionFactory;
    
    public List<Category> find(){ 
        Session session = sessionFactory.getCurrentSession();
        //session.beginTransaction();
        List<Category> result = session.createCriteria(Category.class).list();
        //session.getTransaction().commit();
        return result;
    }
}
