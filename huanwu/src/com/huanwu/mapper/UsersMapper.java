package com.huanwu.mapper;

import com.huanwu.entity.Users;

public interface UsersMapper extends BaseMapper<Users>{

	void insertUser(Users user);

	Users checkUser(Users user);

}
