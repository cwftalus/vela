// JavaScript Document
function editorInfo()
{
	//判断男女
	var is_sex = 0;
	var sex    = 0;
	
	$(".issex").each(function()
	{
    	if($(this).attr('checked') == 'checked')
		{
			is_sex = 1;
			sex = $(this).val();
		}
 	});
	
	if(is_sex == 0)
	{
		sy_ti_all('请选择性别！',1);
		return false;
	}
	
	if($('#selProvinces_0').val() == 0)
	{
		sy_ti_all('请选择省份！',1);
		$('#selProvinces_0').focus();
		return false;
	}
	
	if($('#selCities_0').val() == 0)
	{
		sy_ti_all('请选择城市！',1);
		$('#selCities_0').focus();
		return false;
	}
	
	if($('#selDistricts_0').css("display") != 'none' && $('#selDistricts_0').val() == 0)
	{
		sy_ti_all('请选择地区！',1);
		$('#selDistricts_0').focus();
		return false;
	}
	
	if($('#txt_trueName').val() == 0)
	{
		sy_ti_all('请填写真实姓名！',1);
		$('#txt_trueName').focus();
		return false;
	}
	
	if($('#txt_tel').val() == 0)
	{
		sy_ti_all('请填写联系电话！',1);
		$('#txt_tel').focus();
		return false;
	}
	
	var sex      = sex;
	var province = $('#selProvinces_0').val();
	var city     = $('#selCities_0').val();
	var district = $('#selDistricts_0').val();
	var re_name  = $('#txt_trueName').val();
	var tel      = $('#txt_tel').val();
	var qq       = $('#txt_qq').val();
	var add      = $('#txt_address').val();
	var user_map = $('#tem_map_file').val();
	
	var data = 'sex=' + sex + '&province=' + province + "&city=" + city + '&district=' + district + '&re_name=' + re_name + "&tel="+ tel + '&qq=' + qq + "&add="+ add + "&user_map=" + user_map ;
	
	$.ajax({
		type: "GET",
		url: 'u.php?act=do_reg_up',
		data: data,
		dataType: "JSON",
		success: function(msg)
		{
			sy_ti_all(msg.msg,1);
		}
	});


}

function btn_cancel()
{
	location.href = '/user_reg_up.html';
}


// 全局配置（这样就不必每次初始化时都加上下面的设置）
$.jUploader.setDefaults({
    cancelable: true, // 可取消上传
    allowedExtensions: ['jpg', 'png', 'gif'], // 只允许上传图片
    messages: {
        //upload: '图片上传',
		upload: '',
        cancel: '取消',
        emptyFile: "{file} 为空，请选择一个文件.",
        invalidExtension: "{file} 后缀名不合法. 只有 {extensions} 是允许的.",
        onLeave: "文件正在上传，如果你现在离开，上传将会被取消。"
    }
});

//更新用户头像
function up_user_map(user_map)
{
	
	var data = "act=up_user_map&user_map="+user_map;
	
	$.ajax({
		type: "GET",
		url: "/u.php",
		data: data,
		dataType: "JSON",
		beforeSend :function()
		{
			sy_ti_all('正在更新数据',0);
		},
		success: function(msg)
		{
			sy_close();
			if(msg.err == 0)
			{
				sy_ti_all(msg.msg,1)
			}
			else
			{
				sy_ti_all(msg.msg,1)
			}
		}
	});
}

// 上传
function upload_map()
{
	
	$.jUploader({
		button: 'upload_map', // 这里设置按钮id
		action: 'do.php?act=upload_map', // 这里设置上传处理接口

		// 开始上传事件
		onUpload: function (fileName) {
			$('#user_map_up_msg').show();
			$('#user_map_up_msg').text('正在上传 ' + fileName + ' ...');
		},

		// 上传完成事件
		onComplete: function (fileName, response) {
			// response是json对象，格式可以按自己的意愿来定义，例子为： { success: true, fileUrl:'' }
			if (response.success)
			{
				$("#tem_map_file").val(response.tempmap);
				$('#user_map_up_msg').html(fileName + ' 上传成功！');
				$('#user_map_map').html('<img src="'+response.tempmap+'" width="100" height="100" />');
				
				//更新数据头像开始
				up_user_map(response.tempmap);
			}
			else
			{
				$('#tip').text(fileName + '上传失败！');
			}
		},

		// 系统信息显示（例如后缀名不合法）
		showMessage: function (message) {
			$('#user_map_up_msg').text(message);
		},

		// 取消上传事件
		onCancel: function (fileName) {
			$('#user_map_up_msg').text(fileName + ' 上传取消。');
		}
	});
}


$(function ()
{
    // 初始化
	upload_map();
});