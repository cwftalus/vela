package com.huanwu.service;

import com.huanwu.entity.Users;

/**
 * User实体类对应的业务操作类接口
 * @author  chuweifeng 
 * @version 
 */
public interface UserService extends BaseService<Users> {
	/**
	 * 用户注册
	 * **/
	void insertUser(Users user);

	Users checkUser(Users user);
}
