package com.movies.model;

import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

@Transactional(propagation = Propagation.REQUIRED, readOnly = false)
public class MovieDao {
    @Autowired
    SessionFactory sessionFactory;
    
    public Movie geById(int id){
        return (Movie)sessionFactory.getCurrentSession().get(Movie.class, id);
    }
    
    public List<Movie> findByCategory(int id){
        Session session = sessionFactory.getCurrentSession();
        List<Movie> result = session.getNamedQuery("Movie.findByCategory").setInteger("category", id).list();
        return result;
    }
    
    public List<Movie> find(){ 
        Session session = sessionFactory.getCurrentSession(); 
        List<Movie> result = session.createCriteria(Movie.class).list(); 
        return result;
    }
}
