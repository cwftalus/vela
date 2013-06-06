// JavaScript Document
function onclick_input(obj)
{
	$(obj).addClass('reg_input_on');
}

function out_err(what,show,msg)
{
	$('#'+what).removeClass('reg_input_on');
	$('#'+what).addClass('reg_input_err');
	
	$('#'+show).show();
	$('#'+show).addClass('user_show_err');
	$('#'+show).html(msg);
}

function ch_user(obj) {
	$("#reg_msg_user_show").show();
	var obj = $('#user');
	var user = $('#user').val();
	if(user == '')
	{
		out_err('user','reg_msg_user_show','用户名不能为空！');
		return false;
	}
	
	if(user.length  < 2)
	{
		out_err('user','reg_msg_user_show','用户名至少需要2个字符！');
		return false;
	}
	
	if(user.length  > 20)
	{
		out_err('user','reg_msg_user_show','用户名最多为20个字符！');
		return false;
	}
	
	$.ajax({
		type: "GET",
		url: "u.php",
		data: "act=do_register&is_ajax=1&c=u&username="+user,
		dataType: "JSON",
		beforeSend :function()
		{
			$("#reg_msg_user_show").html('正在检查用户...');
		},
		success: function(msg)
		{
			if(msg.err == 1)
			{
				out_err('user','reg_msg_user_show',msg.msg);
			}
			else
			{
				$("#reg_msg_user_show").html(msg.msg);
				$("#reg_msg_user_show").removeClass('user_show_err');
				$(obj).removeClass('reg_input_on');
				$(obj).removeClass('reg_input_err');
			}
		}
	});
}

function ch_pass(obj)
{
	$("#reg_msg_pass_show").show();
	var obj = $('#pass');
	var pass = $(obj).val();
	if(pass == '')
	{
		out_err('pass','reg_msg_pass_show','用户名密码不能为空！');
		return false;
	}
	
	if(pass.length  < 5)
	{
		out_err('pass','reg_msg_pass_show','用户名密码至少需要5个字符！');
		return false;
	}
	
	$("#reg_msg_pass_show").html('密码信息正确！');
	$("#reg_msg_pass_show").removeClass('user_show_err');
	$(obj).removeClass('reg_input_on');
	$(obj).removeClass('reg_input_err');
}

function ch_pass1(obj)
{
	$("#reg_msg_pass1_show").show();
	var obj = $('#pass1');
	var pass1 = $(obj).val();
	if(pass1 == '')
	{
		out_err('pass1','reg_msg_pass1_show','用户名密码不能为空！');
		return false;
	}
	
	if(pass1.length  < 5)
	{
		out_err('pass1','reg_msg_pass1_show','用户名密码至少需要5个字符！');
		return false;
	}
	
	var pass = $('#pass').val();
	if(pass != pass1)
	{
		out_err('pass1','reg_msg_pass1_show','两次输入的密码不一致！');
		return false;
	}
	
	$("#reg_msg_pass1_show").html('密码信息正确！');
	$("#reg_msg_pass1_show").removeClass('user_show_err');
	$(obj).removeClass('reg_input_on');
	$(obj).removeClass('reg_input_err');
	
}

function ch_mail(obj)
{
	$("#reg_msg_mail_show").show();
	var obj = $('#mail');
	var mail = $(obj).val();
	if(mail == '')
	{
		out_err('mail','reg_msg_mail_show','邮箱不能为空！');
		return false;
	}
	
	var myreg = /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;
	
	if(!myreg.test(mail))
	{
		out_err('mail','reg_msg_mail_show','请输入有效的E_mail！');
		return false;
	}
	
	$.ajax({
		type: "GET",
		url: "u.php",
		data: "act=do_register&is_ajax=1&c=m&mail="+mail,
		dataType: "JSON",
		beforeSend :function()
		{
			$("#reg_msg_mail_show").html('正在检查邮箱...');
		},
		success: function(msg)
		{
			if(msg.err == 1)
			{
				out_err('mail','reg_msg_mail_show',msg.msg);
			}
			else
			{
				$("#reg_msg_mail_show").html(msg.msg);
				$("#reg_msg_mail_show").removeClass('user_show_err');
				$(obj).removeClass('reg_input_on');
				$(obj).removeClass('reg_input_err');
			}
		}
	});
}

//注册
function reg()
{
	var user  = $('#user').val();
	var pass  = $('#pass').val();
	var pass1 = $('#pass1').val();
	var mail  = $('#mail').val();
	if(user == '') { out_err('user','reg_msg_user_show','用户名不能为空！'); return false; }
	if(pass == '') { out_err('pass','reg_msg_pass_show','用户名密码不能为空！'); return false; }
	if(pass1 == '') { out_err('pass1','reg_msg_pass1_show','用户名密码不能为空！'); return false; }
	if(mail == '') { out_err('mail','reg_msg_mail_show','邮箱不能为空！'); return false; }
	
	var b_err = 0;
	$(".reg_in").each(function()
	{
		 if($(this).hasClass("user_show_err"))
		 {
			 b_err = 1;
		 }
  	});
	
	if(b_err == 1)
	{
		sy_ti_all('请按提示填写完整信息！','1');
		return false;
	}
	
	$('#user').attr('disabled','disabled');
	$('#pass').attr('disabled','disabled');
	$('#pass1').attr('disabled','disabled');
	$('#mail').attr('disabled','disabled');

   //提交注册
   $('#reg_input').hide();
   
	$.ajax({
		type: "POST",
		url: "/user/reg.do",
		data: "act=do_register&username="+user+"&password="+pass+"&password1="+pass1+"&email="+mail,
		dataType: "JSON",
		beforeSend :function(){
			$('#res_sent_msg').show(); $('#res_sent_msg').html('正向服务器发起注册请求,请稍后。。。'); 
		},
		success: function(msg){
			if(msg.err == 1){
				$('#user').attr('disabled',false);
				$('#pass').attr('disabled',false);
				$('#pass1').attr('disabled',false);
				$('#mail').attr('disabled',false);
				$('#reg_input').show();
				$('#res_sent_msg').show(); 
				$('#res_sent_msg').html(msg.msg);
			}else{
				$('#reg_input').show();
				$('#res_sent_msg').hide(); 
				
				sy_ti_all(msg.msg,'n');
				
				if($('#url').val() != ''){
					msg.url = base64decode($('#url').val());
				}else{
					msg.url = '/web/login.jsp';
				}

				setTimeout("go_url('"+msg.url+"')",3000);

			}
		}
	});
	
}