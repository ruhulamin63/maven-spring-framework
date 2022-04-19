package com.service;

import com.dao.StudentDao;
import com.model.StudentModel;
import com.util.SortUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class StudentServiceImpl implements StudentService {

    private final StudentDao studentDao;

    public StudentServiceImpl(StudentDao studentDao) {
        this.studentDao = studentDao;
    }

    @Override
    @Transactional(readOnly = true)
    public List<StudentModel> getAll() {
        return studentDao.getAll();
    }

    @Override
    public void save(StudentModel user) {
        studentDao.save(user);
    }

    @Override
    public StudentModel get(int id) {
        return studentDao.get(id);
    }

    @Override
    public void update(StudentModel user) {
        studentDao.update(user);
    }

    @Override
    public void delete(int id) {
        studentDao.delete(id);
    }

    @Override
    public List<StudentModel> getAll(String firstName) {
        return studentDao.getAll(firstName);
    }

    @Override
    public List<StudentModel> sort(int sortKey) {
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
        return studentDao.sort(key);
    }
}
