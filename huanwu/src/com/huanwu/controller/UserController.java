package com.huanwu.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.huanwu.common.AjaxMessage;
import com.huanwu.entity.Users;
import com.huanwu.service.UserService;

/**
 * 
 * @author chuweifeng
 * @version 1.0
 * 用户管理类
 * 
 * */

@Controller
@RequestMapping ("/user/*")
public class UserController {
	@Autowired
	private UserService userService;
	
	private AjaxMessage ajaxMessage;

	@RequestMapping(value = "dologin", method = RequestMethod.GET)
	public String dologin(){
		
		return "/web/index.jsp";
	}
	
	
	@RequestMapping(value = "reg", method = RequestMethod.POST)
	@ResponseBody
	public String reg(Users user){
		String str_json = "";
		try{
			userService.insertUser(user);
			ajaxMessage = new AjaxMessage();
			ajaxMessage.setErr("0");
			ajaxMessage.setMsg("保存成功");
			ajaxMessage.setUrl("");
		}catch(Exception e){
			e.printStackTrace();
		}
		Gson gson = new Gson();
		str_json = gson.toJson(ajaxMessage);
		return str_json;
	}
	
	@RequestMapping(value = "login", method = RequestMethod.POST)
	@ResponseBody
	public String login(Users user,HttpServletRequest request){
		String str_json = "";
		try{
			ajaxMessage = new AjaxMessage();
			Users checkUser = userService.checkUser(user);
			if(checkUser!=null){
				request.getSession().setAttribute("user",checkUser);
				ajaxMessage.setErr("0");
				ajaxMessage.setMsg("登录成功");
				ajaxMessage.setUrl("");
			}else{
				ajaxMessage.setErr("1");
				ajaxMessage.setMsg("登录失败,请检查用户名或密码");
				ajaxMessage.setUrl("");
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		Gson gson = new Gson();
		str_json = gson.toJson(ajaxMessage);
		return str_json;
	}
}
