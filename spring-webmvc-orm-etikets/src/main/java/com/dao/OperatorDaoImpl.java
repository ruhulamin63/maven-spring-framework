package com.dao;

import com.model.Operator;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

@Repository
public class OperatorDaoImpl implements OperatorDao {

    private final SessionFactory sessionFactory;

    public OperatorDaoImpl(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    public Operator getOperator(String phone){
        Session session = sessionFactory.getCurrentSession();
        return (Operator) session.createQuery("from Operator where phone = :phone", Operator.class);
    }
    @Override
    public List<Operator> getAll() {
        Session session = this.sessionFactory.getCurrentSession();
        Query<Operator> operatorQuery = session.createQuery("from Operator where user_type='operator'", Operator.class);
        List<Operator> operators = operatorQuery.getResultList();
        return operators == null ? new ArrayList<Operator>() : operators;
    }

    @Override
    public void save(Operator operator) {
        Session session = this.sessionFactory.getCurrentSession();
        session.save(operator);
    }

    @Override
    public Operator get(int id) {
        Session session = this.sessionFactory.getCurrentSession();
        return session.get(Operator.class, id);
    }

    @Override
    public void update(Operator operator) {
        Session session = this.sessionFactory.getCurrentSession();
        session.update(operator);
    }

    @Override
    public void delete(int id) {
        Operator operator = get(id);
        sessionFactory.getCurrentSession().delete(operator);
    }

    @Override
    public List<Operator> getAll(String phone) {
        Session session = sessionFactory.getCurrentSession();
        Query<Operator> operatorQuery = session.createQuery("from Operator where phone like '%" + phone + "%'", Operator.class);
        return operatorQuery.getResultList();
    }

    @Override
    public List<Operator> sort(String sortKey) {
        Session session = sessionFactory.getCurrentSession();
        Query<Operator> operatorQuery = session.createQuery("from Operator order by " + sortKey, Operator.class);
        return operatorQuery.getResultList();
    }
}
