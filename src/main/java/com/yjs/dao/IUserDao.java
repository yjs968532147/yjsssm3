package com.yjs.dao;

import com.yjs.model.User;

public interface IUserDao {

    User selectUser(long id);
}
