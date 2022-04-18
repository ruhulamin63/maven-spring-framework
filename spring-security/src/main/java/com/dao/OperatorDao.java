package com.dao;

import com.model.Operator;

import java.util.List;

public interface OperatorDao {

    public List<Operator> getAll();

    public void save(Operator operator);

    public Operator get(int id);

    public void update(Operator operator);

    public void delete(int id);

    public List<Operator> getAll(String phone);

    public List<Operator> sort(String sortKey);
}
