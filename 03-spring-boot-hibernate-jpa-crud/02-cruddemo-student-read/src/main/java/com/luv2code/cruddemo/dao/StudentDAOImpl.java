package com.luv2code.cruddemo.dao;

import com.luv2code.cruddemo.entity.Student;
import jakarta.persistence.EntityManager;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
public class StudentDAOImpl implements StudentDAO {

    // define field for entity manager
    private EntityManager entityManager;

    // inject entity manager using constructor injection
    @Autowired
    public StudentDAOImpl(EntityManager entityManager) {
        this.entityManager = entityManager;
    }

    // implement save method
    @Override
    @Transactional
    public void save(Student theStudent) {
        entityManager.persist(theStudent);
    }

    @Override
    public Student findById(Integer id) {
        return entityManager.find(Student.class, id);
    }

    @Override
    public List<Student> findAll() {
        String jpql = "SELECT s FROM Student s ORDER BY s.lastName";
        return entityManager.createQuery(jpql, Student.class).getResultList();
    }

    @Override
    public List<Student> findByLastName(String lastName) {
        String jpql = "SELECT s FROM Student s WHERE s.lastName='" + lastName + "'";
        return entityManager.createQuery(jpql, Student.class)
                .getResultList();
    }
}










