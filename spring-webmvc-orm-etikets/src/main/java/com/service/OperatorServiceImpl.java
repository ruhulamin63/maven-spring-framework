package com.service;

import com.dao.OperatorDao;
import com.dao.UserDao;
import com.model.Operator;
import com.util.OperatorUtils;
import com.util.SortUtils;
import jdk.nashorn.internal.objects.NativeDebug;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class OperatorServiceImpl implements OperatorService {

    private final OperatorDao operatorDao;

    public OperatorServiceImpl(OperatorDao operatorDao) {
        this.operatorDao = operatorDao;
    }

    @Override
    @Transactional(readOnly = true)
    public List<Operator> getAll() {
        return operatorDao.getAll();
    }

    @Override
    public void save(Operator operator) {
        operatorDao.save(operator);
    }

    @Override
    public Operator get(int id) {
        return operatorDao.get(id);
    }

    @Override
    public void update(Operator operator) {
        operatorDao.update(operator);
    }

    @Override
    public void delete(int id) {
        operatorDao.delete(id);
    }

    @Override
    public List<Operator> getAll(String phone) {
        return operatorDao.getAll(phone);
    }

    @Override
    public List<Operator> sort(int sortKey) {
        String key = "";
        switch (sortKey) {
            case OperatorUtils.FULL_NAME:
                key = "full_name";
                break;
            case OperatorUtils.PHONE:
                key = "phone";
                break;
            case OperatorUtils.EMAIL:
            key = "email";
                break;
            default:
                key = "email";
        }
        return operatorDao.sort(key);
    }
}
