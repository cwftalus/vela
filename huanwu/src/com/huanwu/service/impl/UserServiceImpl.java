package com.huanwu.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;

import com.huanwu.dao.UserDao;
import com.huanwu.entity.Users;
import com.huanwu.service.UserService;
import com.huanwu.utils.Page;


@Service
public class UserServiceImpl extends BaseServiceImpl<Users> implements UserService
{
	
	private UserDao userDao;
	
	@Autowired
	public UserServiceImpl(UserDao userDao)
    {
		this.userDao = userDao;
		setBaseDao(userDao);
    }


	@Override
	public void insertUser(Users user) {
		// TODO Auto-generated method stub
		this.userDao.insertUser(user);
	}


	@Override
	public Users checkUser(Users user) {
		// TODO Auto-generated method stub
		return this.userDao.checkUser(user);
	}


}
