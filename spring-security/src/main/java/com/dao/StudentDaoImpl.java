package com.dao;

import com.model.StudentModel;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

@Repository
public class StudentDaoImpl implements StudentDao {

    private final SessionFactory sessionFactory;

    public StudentDaoImpl(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    @Override
    public List<StudentModel> getAll() {
        Session session = this.sessionFactory.getCurrentSession();
        Query<StudentModel> userQuery = session.createQuery("from StudentModel", StudentModel.class);
        List<StudentModel> users = userQuery.getResultList();
        return users == null ? new ArrayList<StudentModel>() : users;
    }

    @Override
    public void save(StudentModel user) {
        Session session = this.sessionFactory.getCurrentSession();
        session.save(user);
    }

    @Override
    public StudentModel get(int id) {
        Session session = this.sessionFactory.getCurrentSession();
        return session.get(StudentModel.class, id);
    }

    @Override
    public void update(StudentModel user) {
        Session session = this.sessionFactory.getCurrentSession();
        session.update(user);
    }

    @Override
    public void delete(int id) {
        StudentModel user = get(id);
        sessionFactory.getCurrentSession().delete(user);
    }

    @Override
    public List<StudentModel> getAll(String firstName) {
        Session session = sessionFactory.getCurrentSession();
        Query<StudentModel> userQuery = session.createQuery("from StudentModel where firstName like '%" + firstName + "%'", StudentModel.class);
        return userQuery.getResultList();
    }

    @Override
    public List<StudentModel> sort(String sortKey) {
        Session session = sessionFactory.getCurrentSession();
        Query<StudentModel> userQuery = session.createQuery("from User order by " + sortKey, StudentModel.class);
        return userQuery.getResultList();
    }
}
