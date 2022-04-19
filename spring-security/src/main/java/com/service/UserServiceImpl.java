package com.service;
import com.dao.UserDao;
import com.model.UserModel;
import com.util.SortUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class UserServiceImpl implements UserService {

    private final UserDao userDao;

    public UserServiceImpl(UserDao userDao) {
        this.userDao = userDao;
    }

    @Override
    @Transactional(readOnly = true)
    public List<UserModel> getAll() {
        return userDao.getAll();
    }

    @Override
    public void save(UserModel user) {
        userDao.save(user);
    }

    @Override
    public UserModel get(int id) {
        return userDao.get(id);
    }

    @Override
    public void update(UserModel user) {
        userDao.update(user);
    }

    @Override
    public void delete(int id) {
        userDao.delete(id);
    }

    @Override
    public List<UserModel> getAll(String firstName) {
        return userDao.getAll(firstName);
    }

    @Override
    public List<UserModel> sort(int sortKey) {
        String key = "";
        switch (sortKey) {
            case SortUtils.FIRST_NAME:
                key = "firstName";
                break;
            case SortUtils.LAST_NAME:
                key = "lastName";
                break;
            default:
                key = "lastName";
        }
        return userDao.sort(key);
    }
}
