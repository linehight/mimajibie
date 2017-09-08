<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'jibie.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<style type="text/css">
		body{font-size: 12px;font-family:"微软雅黑";}
		input{float:left;font-size: 12px;width:150px;border: 1px solid #ccc;padding:3px;}
		input .correct{border:2px solid green;}
		input .error{border:2px solid red;}
		#tips{float:left;margin:2px 0 0 25px;}
		#tips span{float: left;width:50px;height:20px;color:#fff;
		background: #ccc;margin-right: 2px;line-height: 20px;text-align: center;}
		#tips .s1{background: #f30;} /*红色*/
		#tips .s2{background: #fc0;} /*橙色*/
		#tips .s3{background: #cc0;} /*黄色*/
		#tips .s4{background: #090;} /*绿色*/
		
	</style>

  </head>
  
  <body>
    <input type="text" id="password" value="" maxlength="16"/>
    <div id="tips">
    	<span>弱</span>
    	<span>中</span>
    	<span>强</span>
    	<span>很强</span>
    </div>
  </body>
  <script type="text/javascript">
  		var password=document.getElementById("password");
  		
  		var spanDom=document.getElementsByTagName("span");//获取一个数组
  		var str=["弱","中","强","很强"];
  		
  		password.onkeyup=function(){
  			//获取用户输入的密码，返回其强度 0-4
  			var index=checkpassword(this.value);
  			for(var i=0;i<spanDom.length;i++){
  				spanDom[i].className=""; //清空span标签所有样式
  				spanDom[i].innerHTML=""; //清空span标签所有文字
  				if(index){
  					spanDom[index-1].className="s"+index;
  					spanDom[index-1].innerHTML=str[index-1];
  				}
  			}
  		}
  		//验证密码强度
  		function checkpassword(value){
  		 //0 1 2 3分别代表四个级别
  		 var modes=0;
  		 if(value.length<6){//最初级别
  		 	return modes;
  		 }
  		 if(/\d/.test(value)){//如果用户输入了数字 
  		 	modes++;
  		 }
  		 if(/[a-z]/.test(value)){//如果用户输入了小写字母
  		 	modes++;
  		 }
  		 if(/[A-Z]/.test(value)){//如果用户输入了大写字母
  		 	modes++;
  		 }
  		 if(/\W/.test(value)){//如果用户输入了非数字、下划线
  		 	modes++;
  		 }
  		 switch(modes){
  		 	case 1:
  		 		return 1;
  		 		break;
  		 	case 2:
  		 		return 2;
  		 		break;
  		 	case 3:
  		 		return 3;
  		 		break;
  		 	case 4:
  		 		return 4;
  		 		break;
  		 }
  		}
  </script>
</html>
