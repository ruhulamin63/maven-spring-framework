package com.dao;

import com.model.StudentModel;

import java.util.List;

public interface StudentDao {

    public List<StudentModel> getAll();

    public void save(StudentModel user);

    public StudentModel get(int id);

    public void update(StudentModel user);

    public void delete(int id);

    public List<StudentModel> getAll(String firstName);

    public List<StudentModel> sort(String sortKey);
}
