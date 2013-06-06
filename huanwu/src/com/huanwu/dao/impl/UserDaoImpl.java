package com.huanwu.dao.impl;


import java.util.List;

import org.springframework.stereotype.Repository;

import com.huanwu.dao.UserDao;
import com.huanwu.entity.Users;
import com.huanwu.mapper.UsersMapper;


/**
 * @author 
 */
@Repository
public class UserDaoImpl extends BaseDaoImpl<Users, UsersMapper> implements UserDao
{
	public UserDaoImpl() {
	    setMapperClass(UsersMapper.class);
    }

	@Override
	public void insertUser(Users user) {
		// TODO Auto-generated method stub
		this.getMapper().insertUser(user);
	}

	@Override
	public Users checkUser(Users user) {
		// TODO Auto-generated method stub
		return this.getMapper().checkUser(user);
	}
	

}
