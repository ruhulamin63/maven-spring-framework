package com.dao;

import com.model.Bus;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

@Repository
public class BusDaoImpl implements BusDao {

    private final SessionFactory sessionFactory;

    public BusDaoImpl(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    @Override
    public List<Bus> getAll() {
        Session session = this.sessionFactory.getCurrentSession();
        Query<Bus> busQuery = session.createQuery("from Bus", Bus.class);
        List<Bus> buses = busQuery.getResultList();
        return buses == null ? new ArrayList<Bus>() : buses;
    }

    @Override
    public void save(Bus bus) {
        Session session = this.sessionFactory.getCurrentSession();
        session.save(bus);
    }

    @Override
    public Bus get(int id) {
        Session session = this.sessionFactory.getCurrentSession();
        return session.get(Bus.class, id);
    }

    @Override
    public void update(Bus bus) {
        Session session = this.sessionFactory.getCurrentSession();
        session.update(bus);
    }

    @Override
    public void delete(int id) {
        Bus bus = get(id);
        sessionFactory.getCurrentSession().delete(bus);
    }

    @Override
    public List<Bus> getAll(String coach) {
        Session session = sessionFactory.getCurrentSession();
        Query<Bus> operatorQuery = session.createQuery("from Bus where coach like '%" + coach + "%'", Bus.class);
        return operatorQuery.getResultList();
    }
}
