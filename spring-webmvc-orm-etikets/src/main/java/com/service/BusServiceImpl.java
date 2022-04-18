package com.service;

import com.dao.BusDao;
import com.model.Bus;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class BusServiceImpl implements BusService {

    private final BusDao busDao;

    public BusServiceImpl(BusDao busDao) {
        this.busDao = busDao;
    }

    @Override
    @Transactional(readOnly = true)
    public List<Bus> getAll() {
        return busDao.getAll();
    }

    @Override
    public void save(Bus bus) {
        busDao.save(bus);
    }

    @Override
    public Bus get(int id) {
        return busDao.get(id);
    }

    @Override
    public void update(Bus bus) {
        busDao.update(bus);
    }

    @Override
    public void delete(int id) {
        busDao.delete(id);
    }

    @Override
    public List<Bus> getAll(String phone) {
        return busDao.getAll(phone);
    }
}
