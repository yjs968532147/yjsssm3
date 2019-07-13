package com.yjs.service.Impl;

import com.yjs.dao.UserInfoDao;
import com.yjs.model.UserInfo;
import com.yjs.service.UserInfoService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("userInfoService")
public class UserInfoServiceImpl implements UserInfoService {

    @Resource
    private UserInfoDao userInfoDao;

    public void insertUser(UserInfo user) {
        userInfoDao.insertUser(user);
    }

    public void deleteUser(int id) {
        userInfoDao.deleteUser(id);
    }

    public void updateUser(UserInfo user) {
        userInfoDao.updateUser(user);
    }

    public UserInfo selectUserById(int id) {
        return userInfoDao.selectUserById(id);
    }

    public List<UserInfo> selectAll() {
        return userInfoDao.selectAll();
    }

    public UserInfo selectUserByName(String name) {
        return userInfoDao.selectUserByName(name);
    }

    public List<UserInfo> selectUserByParams(UserInfo userInfo) {
        return userInfoDao.selectUserByParams(userInfo);
    }
    public int selectUserCount() {
        return userInfoDao.selectUserCount();
    }
}
