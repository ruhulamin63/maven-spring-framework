package com.service;

import com.model.UserModel;

import java.util.List;

public interface UserService {

    public List<UserModel> getAll();

    public void save(UserModel userModel);

    public UserModel get(int id);

    public void update(UserModel userModel);

    public void delete(int id);

    public List<UserModel> getAll(String phone);

    public List<UserModel> sort(int sortKey);
}
