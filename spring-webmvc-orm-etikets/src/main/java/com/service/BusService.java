package com.service;

import com.model.Bus;

import java.util.List;

public interface BusService {

    public List<Bus> getAll();

    public void save(Bus bus);

    public Bus get(int id);

    public void update(Bus bus);

    public void delete(int id);

    public List<Bus> getAll(String coach);
}
