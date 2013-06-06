package com.huanwu.dao;

import com.huanwu.entity.Users;
import com.huanwu.mapper.UsersMapper;

/**
 * User实体类对应的数据操作类接口
 * @author chuweifeng
 * @version 
 */
public interface UserDao extends BaseDao<Users, UsersMapper> {
	void insertUser(Users user);

	Users checkUser(Users user);
}
