package com.dao;

import com.model.UserModel;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

@Repository
public class UserDaoImpl implements UserDao {

    private final SessionFactory sessionFactory;

    public UserDaoImpl(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    @Override
    public List<UserModel> getAll() {
        Session session = this.sessionFactory.getCurrentSession();
        Query<UserModel> userQuery = session.createQuery("from UserModel", UserModel.class);
        List<UserModel> userModel = userQuery.getResultList();
        return userModel == null ? new ArrayList<UserModel>() : userModel;
    }

    @Override
    public void save(UserModel userModel) {
        Session session = this.sessionFactory.getCurrentSession();
        session.save(userModel);
    }

    @Override
    public UserModel get(int id) {
        Session session = this.sessionFactory.getCurrentSession();
        return session.get(UserModel.class, id);
    }

    @Override
    public void update(UserModel userModel) {
        Session session = this.sessionFactory.getCurrentSession();
        session.update(userModel);
    }

    @Override
    public void delete(int id) {
        UserModel userModel = get(id);
        sessionFactory.getCurrentSession().delete(userModel);
    }

    @Override
    public List<UserModel> getAll(String phone) {
        Session session = sessionFactory.getCurrentSession();
        Query<UserModel> operatorQuery = session.createQuery("from UserModel where phone like '%" + phone + "%'", UserModel.class);
        return operatorQuery.getResultList();
    }

    @Override
    public List<UserModel> sort(String sortKey) {
        Session session = sessionFactory.getCurrentSession();
        Query<UserModel> operatorQuery = session.createQuery("from UserModel order by " + sortKey, UserModel.class);
        return operatorQuery.getResultList();
    }
}
