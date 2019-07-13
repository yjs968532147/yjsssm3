<%@ page language="java" contentType="text/html; charset=GB18030" pageEncoding="GB18030"%>
<%
/*获取工程路径*/
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>

<!-- Head -->
<head>

	<title>登录表单</title>

	<!-- Meta-Tags -->
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
	<!-- //Meta-Tags -->

	<!-- Style --> <link rel="stylesheet" href="css/style.css" type="text/css" media="all">



</head>
<!-- //Head -->

<!-- Body -->
<body>

	<h1>登录表单</h1>

	<div class="container w3layouts agileits">

		<div class="login w3layouts agileits">
			<h2>登 录</h2>
			<form action="<%=basePath%>user/login" method="post">
				<input type="text" Name="name" placeholder="用户名" >
				<input type="password" Name="password" placeholder="密码" >
				<input type="submit" value="登 录">
				<h3>${msg}</h3>
			</form>
			<a href="#">记住密码?</a>
			<div class="social-icons w3layouts agileits">
				<p>- 其他方式登录 -</p>
				<ul>
					<li class="qq"><a href="#">
					<span class="icons w3layouts agileits"></span>
					<span class="text w3layouts agileits">QQ</span></a></li>
					<li class="weixin w3ls"><a href="#">
					<span class="icons w3layouts"></span>
					<span class="text w3layouts agileits">微信</span></a></li>
					<li class="weibo aits"><a href="#">
					<span class="icons agileits"></span>
					<span class="text w3layouts agileits">微博</span></a></li>
					<div class="clear"> </div>
				</ul>
			</div>
			<div class="clear"></div>
		<div class="register w3layouts agileits">
			<h2>注 册</h2>
			<form action="<%=basePath%>user/register" method="post">
				<input type="text" Name="name" placeholder="用户名" >
				<input type="password" Name="password" placeholder="密码" >
				<input type="text" Name="netname" placeholder="昵称" >
				<input type="text" Name="sex" placeholder="性别" >
				<input type="date" Name="birthday" placeholder="生日" >
				<input type="submit" value="注册">
				<h3>${msg2}</h3>
			</form>
			<div class="clear"></div>
		</div>

		<div class="clear"></div>
	</div>
	</div>
</body>
<!-- //Body -->

</html>