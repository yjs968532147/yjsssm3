<%@ page language="java" contentType="text/html; charset=GB18030" pageEncoding="GB18030"%>
<%
/*��ȡ����·��*/
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>

<!-- Head -->
<head>

	<title>��¼��</title>

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

	<h1>��¼��</h1>

	<div class="container w3layouts agileits">

		<div class="login w3layouts agileits">
			<h2>�� ¼</h2>
			<form action="<%=basePath%>user/login" method="post">
				<input type="text" Name="name" placeholder="�û���" >
				<input type="password" Name="password" placeholder="����" >
				<input type="submit" value="�� ¼">
				<h3>${msg}</h3>
			</form>
			<a href="#">��ס����?</a>
			<div class="social-icons w3layouts agileits">
				<p>- ������ʽ��¼ -</p>
				<ul>
					<li class="qq"><a href="#">
					<span class="icons w3layouts agileits"></span>
					<span class="text w3layouts agileits">QQ</span></a></li>
					<li class="weixin w3ls"><a href="#">
					<span class="icons w3layouts"></span>
					<span class="text w3layouts agileits">΢��</span></a></li>
					<li class="weibo aits"><a href="#">
					<span class="icons agileits"></span>
					<span class="text w3layouts agileits">΢��</span></a></li>
					<div class="clear"> </div>
				</ul>
			</div>
			<div class="clear"></div>
		<div class="register w3layouts agileits">
			<h2>ע ��</h2>
			<form action="<%=basePath%>user/register" method="post">
				<input type="text" Name="name" placeholder="�û���" >
				<input type="password" Name="password" placeholder="����" >
				<input type="text" Name="netname" placeholder="�ǳ�" >
				<input type="text" Name="sex" placeholder="�Ա�" >
				<input type="date" Name="birthday" placeholder="����" >
				<input type="submit" value="ע��">
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