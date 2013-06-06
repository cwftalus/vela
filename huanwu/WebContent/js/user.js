// JavaScript Document
function user_login()
{	
	$(".user_login_err").removeClass('user_login_yes');
	var login_user = $('#login_user').val();
	var login_pass = $('#login_pass').val();
	
	if(login_user == '' || login_user == '用户名/邮箱')
	{
		$(".user_login_err").show();
		$(".user_login_err").html(' 用户名/邮箱 不能为空！');
		$('#login_user').css('border','solid 1px #FF9900');
		return false;
	}
	
	if(login_pass == '')
	{
		$(".user_login_err").css("margin-top","22px");
		$(".user_login_err").show();
		$(".user_login_err").html(' 用户密码 不能为空！');
		$('#login_pass').css('border','solid 1px #FF9900');
		return false;
	}
	
	$(".user_login_err").addClass('user_login_yes');
	
	/* 登录会员 */
	$.ajax({
		type: "POST",
		url: "/user/login.do",
		data: "act=do_login&username="+login_user+"&password="+login_pass,
		dataType: "JSON",
		beforeSend :function() {
			$(".user_login_err").show();
			$(".user_login_err").html(' 登录中... ');
		},
		success: function(msg){
			if(msg.err == 1) {
				$(".user_login_err").removeClass('user_login_yes');
				$(".user_login_err").html(msg.msg);
			}else {
				if($('#url').val() != ''){
					msg.url = base64decode($('#url').val());
				}else {
					msg.url = '/web/user.jsp';
				}
				$(".user_login_err").html(msg.msg);
				setTimeout("go_url('"+msg.url+"')",1000);
			}
		}
	});
}



function h_msg()
{
	$(".user_login_err").hide();
	$(".user_login_err").css("margin-top","-15px");
}

function user_login_css(obj)
{
	$(obj).hover(function()
	{
		$(obj).css('border','solid 1px #FF9900');
	}, 
	function()
	{
		$(obj).css('border','solid 1px #C6C6C6');
	});
}

function user_input(obj)
{
	h_msg();
	if($(obj).val() == '用户名/邮箱')
	{
		$(obj).val('');	
	}
	else if($(obj).val() == '')
	{
		$(obj).val('用户名/邮箱')	
	}
}