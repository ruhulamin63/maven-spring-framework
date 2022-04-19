package com.dao;

import com.model.UserModel;

import java.util.List;

public interface UserDao {

    public List<UserModel> getAll();

    public void save(UserModel operator);

    public UserModel get(int id);

    public void update(UserModel operator);

    public void delete(int id);

    public List<UserModel> getAll(String phone);

    public List<UserModel> sort(String sortKey);
}
